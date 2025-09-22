# homebrew-mdserve

A Homebrew tap for [mdserve](https://github.com/jfernandez/mdserve), a fast markdown preview server with live reload and theme support.

## Installation

```bash
# Add the tap
brew tap jfernandez/mdserve

# Install mdserve
brew install mdserve
```

## Usage

After installation, you can use mdserve to serve markdown files:

```bash
# Serve a markdown file on default port (3000)
mdserve README.md

# Serve on custom port
mdserve README.md --port 8080
```

## Features

- ⚡ **Instant Live Reload** - Real-time updates via WebSocket when markdown file changes
- 🎨 **Multiple Themes** - Built-in theme selector with 5 themes including Catppuccin variants
- 📝 **GitHub Flavored Markdown** - Full GFM support including tables, strikethrough, code blocks, and task lists
- 🚀 **Fast** - Built with Rust and Axum for excellent performance and low memory usage

## About

This tap provides an easy way to install mdserve via Homebrew. For more information about mdserve itself, visit the [main repository](https://github.com/jfernandez/mdserve).