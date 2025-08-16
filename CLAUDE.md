# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a "Coming Soon" landing page for **CV Guide**, an AI-powered job matching platform built with Astro 5.12.9. The project promotes a service that goes beyond traditional resume-based hiring by using AI to match candidates' complete professional stories with actual job requirements and team cultures.

## Development Commands

### Standard Development
```bash
npm run dev              # Start dev server at localhost:4321
npm run build            # Build for production to ./dist/
npm run preview          # Preview production build locally
npm install              # Install dependencies
```

### Enhanced Makefile Commands
```bash
make dev                 # Start development server
make build               # Production build
make preview             # Preview build
make clean               # Clean build artifacts (dist/, .astro/)
make check               # TypeScript type checking
make deps                # Check outdated dependencies
make clean-all           # Clean everything including node_modules
```

## Architecture

### Key Files
- **src/pages/index.astro**: Main landing page with complete marketing flow
- **src/layouts/Layout.astro**: Base layout with SEO meta tags and typography
- **Makefile**: Enhanced development workflow (custom addition, not in git)

### Landing Page Structure
The main page follows a conversion-focused flow:
1. **Hero**: "Coming Soon" badge, value proposition, email signup
2. **Problem**: 3-column grid of current hiring pain points  
3. **Solution**: AI-powered matching explanation
4. **How It Works**: Dual audience flow (job seekers vs companies)
5. **Coming Soon**: Launch timeline (Q2 2025) with waitlist CTA
6. **Footer**: Contact information

### Styling Approach
- Component-scoped CSS in each .astro file
- Modern CSS features (Grid, Flexbox, backdrop-filter)
- Responsive design with mobile-first approach
- Purple gradient theme (#667eea to #764ba2)
- System font stack for performance

## Email Collection

The landing page includes two email signup forms for waitlist building:
- Hero section signup
- Coming Soon section signup

**Note**: Forms are frontend-only and need backend integration with services like Formspree, ConvertKit, or Netlify Forms for actual email collection.

## Image Placeholders

Two key image placeholders need replacement:
- **Hero section**: AI + Job Matching visual illustration
- **Solution section**: AI Analysis Process diagram

Placeholders are clearly marked with dashed borders and descriptive text.

## TypeScript Configuration

Project uses strict TypeScript configuration extending Astro's defaults. All files except `dist/` are included for type checking.

## Deployment Notes

- Static site suitable for GitHub Pages, Netlify, Vercel, or AWS S3
- Build output goes to `./dist/` directory
- No server-side functionality required (pure static site)

## Business Context

The project represents a pre-launch startup seeking to demonstrate traction for AWS credit applications while building an engaged audience. The landing page emphasizes the platform's technical sophistication and market opportunity in the hiring/recruitment space.