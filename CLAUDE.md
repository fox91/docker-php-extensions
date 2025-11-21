# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repository provides **minimal Dockerfile templates** for installing individual PHP extensions. Each template demonstrates how to properly install and configure a single PHP extension on official PHP Docker images. Users can reference these templates to compose their own Dockerfiles with desired extensions.

## Repository Structure

```
{PHP_VERSION}/{OS_VERSION}/{EXTENSION_NAME}/Dockerfile
```

- PHP versions: 8.1, 8.2, 8.3, 8.4, 8.5
- OS versions: `trixie` (Debian-based), `alpine3.22` (Alpine Linux)
- Extension naming: Standard extensions use their name (e.g., `bcmath`, `gd`), PECL extensions use `pecl_` prefix (e.g., `pecl_redis`, `pecl_xdebug`)

Each Dockerfile is a standalone template showing the minimal steps to install that specific extension.

## Build Commands

The Makefile is used for **testing templates**, not for building production images.

### Build and test all templates for a PHP/OS combination
```bash
make build PHP_V=8.5 OS_V=trixie  # Build test images
make test PHP_V=8.5 OS_V=trixie   # Run all tests
```

### Build and test everything
```bash
make all PHP_V=8.5 OS_V=trixie
```

### Clean up test images
```bash
make clean PHP_V=8.5 OS_V=trixie
```

### Work with staged changes only (for template development)
```bash
make new-build    # Build only staged Dockerfiles
make new-test     # Test only staged Dockerfiles
make new          # Build and test staged Dockerfiles
```

The "new-*" targets automatically detect PHP version, OS version, and extension name from staged file paths. Use these when developing new templates.

## Dockerfile Template Patterns

### Standard PHP Extensions
For built-in PHP extensions without additional dependencies:
```dockerfile
FROM php:{VERSION}-{OS}
LABEL maintainer="Andrea Falco <andrea@falco.sh>"
RUN docker-php-ext-install -j$(nproc) {extension_name}
```

### PECL Extensions
For PECL extensions with version pinning:
```dockerfile
FROM php:{VERSION}-{OS}
LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PHPEXT_{EXTENSION}_VERSION={version}
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext {extension}-${PHPEXT_{EXTENSION}_VERSION}; \
  docker-php-ext-install -j$(nproc) {extension}; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
```

### Critical Template Requirements
- **Always clean up** `/tmp/*` and `/var/tmp/*` after installation
- **Always run** `docker-php-source delete` for PECL extensions to minimize image size
- **Use** `set -eux` for proper error handling in multi-line RUN commands
- **Pin** PECL extension versions using ARG for reproducibility
- Templates must be **minimal** - only include what's necessary for that specific extension

## Testing Templates

Four test targets validate each template:

1. **test-version**: Verifies PHP executable works (`php --version`)
2. **test-module**: Confirms extension appears in loaded modules (`php -m`)
3. **test-info**: Verifies extension shows up in PHP info (`php -i`)
4. **test-tmp-files**: Ensures no temporary files left behind (validates cleanup)

The tmp-files test is critical - templates must not leave `/usr/src/php`, `/tmp/*`, or `/var/tmp/*` dirty.

## CI/CD

GitHub Actions workflow (`.github/workflows/ci.yaml`) validates all templates:
- Builds and tests every template combination (PHP versions × OS versions × extensions)
- Matrix strategy: PHP 8.1, 8.2, 8.3, 8.4, 8.5 × alpine3.22, trixie
- Runs on every push to any branch
- Ensures templates remain valid as PHP versions evolve

## Adding New Extension Templates

When adding a new extension template:

1. Create directory structure: `{PHP_VERSION}/{OS_VERSION}/{extension_name}/`
2. Add Dockerfile following the patterns above
3. For PECL extensions, use `pecl_` prefix in directory name
4. Add template for **all supported PHP versions and OS versions** for consistency (unless extension doesn't support certain PHP versions)
5. Stage changes and run `make new` to validate templates work correctly
6. Update the extension table in README.md with links to new templates
7. Ensure proper cleanup (test-tmp-files must pass)

## Extension Version Management

- Standard PHP extensions inherit version from base PHP image
- PECL extensions have versions explicitly pinned using ARG in Dockerfiles
- Check PECL website for latest compatible versions: https://pecl.php.net/
- Some extensions don't support latest PHP versions (marked with ✗ in README)
- When updating PECL versions, update across all PHP/OS combinations for that extension

## How Users Use These Templates

Users copy relevant RUN commands from templates into their own Dockerfiles to compose multi-extension images:

```dockerfile
FROM php:8.5-trixie

# Copy from bcmath template
RUN docker-php-ext-install -j$(nproc) bcmath

# Copy from pecl_redis template
ARG PHPEXT_REDIS_VERSION=6.3.0
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext redis-${PHPEXT_REDIS_VERSION}; \
  docker-php-ext-install -j$(nproc) redis; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*

# Add application code...
```

Templates demonstrate the **minimal, correct way** to install each extension.
