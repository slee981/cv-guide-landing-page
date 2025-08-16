# Astro Project Makefile
# Useful shortcuts for common development tasks

.PHONY: help install dev build preview clean lint format check deps update-deps install-deps clean-deps clean-all build-prod serve-prod deploy-staging deploy-prod

# Default target
help:
	@echo "Available commands:"
	@echo "  install      - Install dependencies"
	@echo "  dev          - Start development server"
	@echo "  build        - Build for production"
	@echo "  preview      - Preview production build"
	@echo "  clean        - Clean build artifacts"
	@echo "  lint         - Run linting"
	@echo "  format       - Format code with prettier"
	@echo "  check        - Type check with TypeScript"
	@echo "  deps         - Check dependency status"
	@echo "  update-deps  - Update dependencies"
	@echo "  install-deps - Reinstall dependencies"
	@echo "  clean-deps   - Clean node_modules"
	@echo "  clean-all    - Clean everything (build + deps)"
	@echo "  build-prod   - Build for production with optimizations"
	@echo "  serve-prod   - Serve production build locally"
	@echo "  deploy-staging - Deploy to staging (placeholder)"
	@echo "  deploy-prod  - Deploy to production (placeholder)"

# Install dependencies
install:
	npm install

# Start development server
dev:
	npm run dev

# Build for production
build:
	npm run build

# Preview production build
preview:
	npm run preview

# Clean build artifacts
clean:
	rm -rf dist/
	rm -rf .astro/

# Run linting (if eslint is configured)
lint:
	@if [ -f "package.json" ] && grep -q "eslint" package.json; then \
		npm run lint; \
	else \
		echo "ESLint not configured. Run 'npm install --save-dev eslint' to add it."; \
	fi

# Format code with prettier (if prettier is configured)
format:
	@if [ -f "package.json" ] && grep -q "prettier" package.json; then \
		npm run format; \
	else \
		echo "Prettier not configured. Run 'npm install --save-dev prettier' to add it."; \
	fi

# Type check with TypeScript
check:
	@if [ -f "tsconfig.json" ]; then \
		npx tsc --noEmit; \
	else \
		echo "TypeScript not configured."; \
	fi

# Check dependency status
deps:
	npm outdated

# Update dependencies
update-deps:
	npm update

# Reinstall dependencies
install-deps:
	rm -rf node_modules package-lock.json
	npm install

# Clean node_modules
clean-deps:
	rm -rf node_modules/

# Clean everything (build + deps)
clean-all: clean clean-deps

# Build for production with optimizations
build-prod:
	npm run build
	@echo "Production build complete in dist/"

# Serve production build locally
serve-prod: build-prod
	@echo "Serving production build on http://localhost:4321"
	npm run preview

# Deploy to staging (placeholder - customize for your deployment)
deploy-staging:
	@echo "Deploy to staging - customize this command for your deployment setup"
	@echo "Example: rsync -avz dist/ user@staging-server:/var/www/app/"

# Deploy to production (placeholder - customize for your deployment)
deploy-prod:
	@echo "Deploy to production - customize this command for your deployment setup"
	@echo "Example: rsync -avz dist/ user@prod-server:/var/www/app/"

# Quick development workflow
dev-setup: install dev

# Quick production workflow
prod-setup: clean build-prod preview

# Development with auto-reload (default)
.DEFAULT_GOAL := dev
