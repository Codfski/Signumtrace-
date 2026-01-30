# Contributing to SignumTrace

Thank you for your interest in contributing to SignumTrace! This document provides guidelines and instructions for contributing to the project.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
  - [Development Setup](#development-setup)
  - [Project Structure](#project-structure)
- [How to Contribute](#how-to-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Features](#suggesting-features)
  - [Submitting Changes](#submitting-changes)
- [Development Workflow](#development-workflow)
  - [Branch Strategy](#branch-strategy)
  - [Commit Guidelines](#commit-guidelines)
  - [Pull Request Process](#pull-request-process)
- [Technical Guidelines](#technical-guidelines)
  - [Code Style](#code-style)
  - [Testing](#testing)
  - [Documentation](#documentation)
- [Adding New Symbols](#adding-new-symbols)
- [Community](#community)

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment. We expect all contributors to:

- Be respectful and constructive in discussions
- Focus on what's best for the community
- Accept constructive criticism gracefully
- Show empathy towards other community members

Unacceptable behavior includes harassment, trolling, and personal attacks.

## Getting Started

### Development Setup

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/signumtrace.git
   cd signumtrace
```

1. Install dependencies:
   ```bash
   npm install
   ```
2. Run tests to ensure everything works:
   ```bash
   npm test
   ```

Project Structure

```
signumtrace/
├── src/                    # Source code
│   ├── index.js           # Main entry point
│   ├── parser.js          # Symbol parser
│   ├── executor.js        # Plan executor
│   ├── validator.js       # Plan validator
│   └── formatter.js       # Output formatters
├── bin/                   # CLI executable
│   └── signumtrace        # Command-line interface
├── templates/             # Starter templates
│   ├── basic.st          # Basic template
│   ├── software.st       # Software project template
│   └── research.st       # Research project template
├── examples/              # Sample plans
│   ├── api-optimization.st
│   ├── product-launch.st
│   └── team-retrospective.st
├── tests/                 # Test files
│   ├── parser.test.js
│   ├── executor.test.js
│   └── integration.test.js
├── docs/                  # Documentation
│   ├── symbols.md        # Symbol reference
│   └── api.md           # API documentation
└── scripts/              # Build/utility scripts
```

How to Contribute

Reporting Bugs

1. Check existing issues to avoid duplicates
2. Use the bug report template when creating an issue
3. Include details:
   · Steps to reproduce
   · Expected behavior
   · Actual behavior
   · Environment (OS, Node version, etc.)
   · Screenshots if applicable

Suggesting Features

1. Check the roadmap in README.md
2. Use the feature request template
3. Describe the use case clearly
4. Explain the value it adds to SignumTrace

Submitting Changes

1. Create an issue describing what you want to change
2. Wait for feedback before starting implementation
3. Follow the development workflow below

Development Workflow

Branch Strategy

· main: Stable, production-ready code
· develop: Integration branch for features
· feature/*: New features (e.g., feature/export-json)
· bugfix/*: Bug fixes (e.g., bugfix/parser-edge-case)
· docs/*: Documentation changes

```bash
# Create a feature branch
git checkout -b feature/your-feature-name

# Or a bugfix branch
git checkout -b bugfix/issue-description
```

Commit Guidelines

Follow Conventional Commits:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

Types:

· feat: New feature
· fix: Bug fix
· docs: Documentation
· style: Formatting, missing semi-colons, etc.
· refactor: Code restructuring
· test: Adding or updating tests
· chore: Maintenance tasks

Examples:

```bash
git commit -m "feat(parser): add support for nested conditions"
git commit -m "fix(cli): handle missing file error gracefully"
git commit -m "docs(symbols): add examples for all symbols"
```

Pull Request Process

1. Ensure tests pass: npm test
2. Update documentation if needed
3. Keep PR focused on a single change
4. Reference related issues in PR description
5. Request review from maintainers

PR Template:

```markdown
## Description
[What this PR does]

## Related Issues
Fixes #123

## Changes Made
- [x] Added feature X
- [x] Fixed bug Y
- [x] Updated documentation

## Testing
- [ ] Added unit tests
- [ ] Tested manually
- [ ] All tests pass

## Screenshots (if applicable)
```

Technical Guidelines

Code Style

· Use 2-space indentation
· Use semicolons
· camelCase for variables and functions
· PascalCase for classes
· UPPER_SNAKE_CASE for constants
· Use single quotes for strings
· Maximum line length: 100 characters

Example:

```javascript
const DEFAULT_CONFIG = {
  maxDepth: 10,
  strictMode: true
};

class SymbolParser {
  parse(text, options = {}) {
    const config = { ...DEFAULT_CONFIG, ...options };
    return this.processSymbols(text, config);
  }
  
  processSymbols(text, config) {
    // Implementation
  }
}
```

Testing

· Write tests for new features
· Maintain 80%+ test coverage
· Test edge cases and error conditions
· Use descriptive test names

```javascript
// tests/parser.test.js
describe('SymbolParser', () => {
  describe('parse()', () => {
    it('should parse basic symbols', () => {
      const parser = new SymbolParser();
      const result = parser.parse('✓ Test\n▶ Action');
      expect(result.symbols).toHaveLength(2);
    });
    
    it('should handle empty input', () => {
      const parser = new SymbolParser();
      const result = parser.parse('');
      expect(result.symbols).toHaveLength(0);
    });
  });
});
```

Documentation

· Document public API methods
· Update README.md for user-facing changes
· Add JSDoc comments for complex functions
· Keep examples up-to-date

```javascript
/**
 * Parses SignumTrace symbolic notation into structured data
 * @param {string} text - The SignumTrace plan text
 * @param {Object} options - Parser options
 * @param {boolean} options.strict - Whether to throw on errors
 * @returns {Object} Parsed plan with symbols array
 * @throws {ParseError} If parsing fails in strict mode
 */
parse(text, options = {}) {
  // Implementation
}
```

Adding New Symbols

To extend the SignumTrace symbolic language:

1. Update src/parser.js:
   ```javascript
   const SYMBOLS = {
     // Existing symbols...
     '🔄': 'iteration',  // New symbol
   };
   ```
2. Add to documentation:
   · Update symbol table in README.md
   · Add to docs/symbols.md
   · Create usage examples
3. Write tests:
   ```javascript
   it('should parse new 🔄 symbol', () => {
     const result = parser.parse('🔄 Repeat process');
     expect(result.symbols[0].type).toBe('iteration');
   });
   ```
4. Update formatters if needed (CLI, HTML, JSON output)

Community

Communication Channels

· GitHub Issues: Bug reports and feature requests
· GitHub Discussions: Questions and community discussion
· Pull Requests: Code contributions

Getting Help

1. Check the README.md first
2. Search existing issues and discussions
3. Create a new discussion for questions
4. Tag maintainers for urgent issues

Recognition

Contributors are recognized in:

· GitHub contributors list
· Release notes
· Project documentation (for significant contributions)

---

Thank you for contributing to SignumTrace! Your efforts help make symbolic planning accessible to everyone.

Happy coding! 🚀
