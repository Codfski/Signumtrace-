# 🤝 Contributing to SignumTrace

Thank you for your interest in contributing to SignumTrace! We're excited to have you join our community of contributors working to make symbolic planning accessible to everyone.

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![First Timers](https://img.shields.io/badge/first--timers--only-friendly-blue.svg)](https://www.firsttimersonly.com/)

---

## 📋 Table of Contents

- [Code of Conduct](#-code-of-conduct)
- [Getting Started](#-getting-started)
- [How to Contribute](#-how-to-contribute)
- [Development Workflow](#-development-workflow)
- [Technical Guidelines](#-technical-guidelines)
- [Adding New Symbols](#-adding-new-symbols)
- [Community](#-community)

---

## 🌟 Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment.

### We Value

| Principle | Description |
|-----------|-------------|
| 🤝 **Respect** | Be respectful and constructive in discussions |
| 🎯 **Focus** | Concentrate on what's best for the community |
| 💡 **Growth** | Accept constructive criticism gracefully |
| ❤️ **Empathy** | Show understanding towards other members |

### Unacceptable Behavior

❌ Harassment  
❌ Trolling  
❌ Personal attacks  
❌ Discrimination

---

## 🚀 Getting Started

### Development Setup

#### 1️⃣ Fork & Clone

```bash
# Fork the repository on GitHub, then clone your fork
git clone https://github.com/YOUR_USERNAME/signumtrace.git
cd signumtrace
```

#### 2️⃣ Install Dependencies

```bash
npm install
```

#### 3️⃣ Verify Setup

```bash
# Run tests to ensure everything works
npm test
```

✅ If all tests pass, you're ready to contribute!

---

### 📁 Project Structure

```
signumtrace/
├── 📦 src/                    # Source code
│   ├── index.js              # Main entry point
│   ├── parser.js             # Symbol parser
│   ├── executor.js           # Plan executor
│   ├── validator.js          # Plan validator
│   └── formatter.js          # Output formatters
│
├── 💻 bin/                   # CLI executable
│   └── signumtrace           # Command-line interface
│
├── 📋 templates/             # Starter templates
│   ├── basic.st             # Basic template
│   ├── software.st          # Software project template
│   └── research.st          # Research project template
│
├── 📚 examples/              # Sample plans
│   ├── api-optimization.st
│   ├── product-launch.st
│   └── team-retrospective.st
│
├── 🧪 tests/                 # Test files
│   ├── parser.test.js
│   ├── executor.test.js
│   └── integration.test.js
│
├── 📖 docs/                  # Documentation
│   ├── symbols.md           # Symbol reference
│   └── api.md              # API documentation
│
└── 🛠️ scripts/              # Build/utility scripts
```

---

## 💡 How to Contribute

### 🐛 Reporting Bugs

Found a bug? Help us fix it!

1. **Search First** - Check if it's already reported
2. **Use the Template** - Fill out the bug report template
3. **Provide Details**:

| Information | Why It Matters |
|------------|----------------|
| 🔄 **Steps to Reproduce** | Helps us recreate the issue |
| ✅ **Expected Behavior** | What should happen |
| ❌ **Actual Behavior** | What actually happens |
| 💻 **Environment** | OS, Node version, etc. |
| 📸 **Screenshots** | Visual proof of the issue |

**Example Bug Report:**

```markdown
### Bug Description
Parser fails on nested conditions

### Steps to Reproduce
1. Create a plan with nested if statements
2. Run `signumtrace execute plan.st`
3. See error

### Expected
Should parse nested conditions

### Actual
Throws ParseError

### Environment
- OS: macOS 14.0
- Node: v18.17.0
- SignumTrace: v1.0.0
```

---

### ✨ Suggesting Features

Have an idea? We'd love to hear it!

1. **Check the Roadmap** - See if it's already planned
2. **Use the Feature Template** - Describe your idea clearly
3. **Explain the Value** - Why is this important?

**Feature Request Template:**

```markdown
### Feature Description
Add JSON export functionality

### Use Case
Users need to integrate SignumTrace plans with external tools

### Benefits
- 🔗 Better integration
- 📊 Data analysis
- 🤖 API compatibility

### Proposed Solution
Add `--format json` flag to CLI
```

---

### 🔧 Submitting Changes

#### Before You Start

1. 📝 Create an issue describing the change
2. 💬 Wait for feedback from maintainers
3. ✅ Get approval before implementing

#### Making Your Contribution

See [Development Workflow](#-development-workflow) below.

---

## 🔄 Development Workflow

### Branch Strategy

We use the following branch naming conventions:

| Branch Type | Prefix | Example | Purpose |
|------------|--------|---------|---------|
| 🌟 **Main** | `main` | `main` | Stable, production-ready |
| 🔄 **Develop** | `develop` | `develop` | Integration branch |
| ✨ **Feature** | `feature/` | `feature/export-json` | New features |
| 🐛 **Bugfix** | `bugfix/` | `bugfix/parser-edge-case` | Bug fixes |
| 📚 **Docs** | `docs/` | `docs/update-symbols` | Documentation |

#### Creating a Branch

```bash
# For a new feature
git checkout -b feature/your-feature-name

# For a bug fix
git checkout -b bugfix/issue-description

# For documentation
git checkout -b docs/update-readme
```

---

### 📝 Commit Guidelines

We follow **Conventional Commits** for clear history.

#### Format

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

#### Types

| Type | Emoji | Usage | Example |
|------|-------|-------|---------|
| `feat` | ✨ | New feature | `feat(parser): add nested conditions` |
| `fix` | 🐛 | Bug fix | `fix(cli): handle missing file error` |
| `docs` | 📚 | Documentation | `docs(symbols): add examples` |
| `style` | 💎 | Formatting | `style: fix indentation` |
| `refactor` | ♻️ | Code restructuring | `refactor(parser): simplify logic` |
| `test` | 🧪 | Testing | `test(executor): add edge cases` |
| `chore` | 🔧 | Maintenance | `chore: update dependencies` |

#### Good Commit Examples

```bash
git commit -m "feat(parser): add support for nested conditions"
git commit -m "fix(cli): handle missing file error gracefully"
git commit -m "docs(symbols): add examples for all symbols"
git commit -m "test(parser): add edge case tests"
```

---

### 🔀 Pull Request Process

#### Before Submitting

- [ ] ✅ All tests pass (`npm test`)
- [ ] 📝 Documentation updated
- [ ] 🎯 PR is focused on single change
- [ ] 🔗 Related issues referenced
- [ ] 👀 Self-review completed

#### PR Template

```markdown
## 📋 Description
Brief description of what this PR does

## 🔗 Related Issues
Fixes #123
Closes #456

## ✨ Changes Made
- [x] Added feature X
- [x] Fixed bug Y
- [x] Updated documentation

## 🧪 Testing
- [ ] Added unit tests
- [ ] Tested manually
- [ ] All tests pass

## 📸 Screenshots (if applicable)
[Add screenshots here]

## 📝 Notes
Any additional context or considerations
```

#### Review Process

1. 🤖 **Automated Checks** - CI/CD runs tests
2. 👥 **Peer Review** - Maintainers review code
3. 💬 **Feedback** - Address review comments
4. ✅ **Approval** - Maintainer approves
5. 🎉 **Merge** - PR merged to develop

---

## 🛠️ Technical Guidelines

### Code Style

#### JavaScript Style Guide

```javascript
// ✅ Good
const DEFAULT_CONFIG = {
  maxDepth: 10,
  strictMode: true
};

class SymbolParser {
  constructor(options = {}) {
    this.config = { ...DEFAULT_CONFIG, ...options };
  }

  parse(text) {
    return this.processSymbols(text);
  }

  processSymbols(text) {
    // Implementation
  }
}

// ❌ Bad
const default_config={maxDepth:10,strictMode:true}

class symbolParser{
  constructor(options){
    this.config=Object.assign({},default_config,options)
  }
  
  parse(text){return this.processSymbols(text)}
}
```

#### Style Rules

| Rule | Example |
|------|---------|
| **Indentation** | 2 spaces (no tabs) |
| **Semicolons** | Always use them |
| **Variables** | `camelCase` |
| **Classes** | `PascalCase` |
| **Constants** | `UPPER_SNAKE_CASE` |
| **Strings** | Single quotes `'string'` |
| **Line Length** | Max 100 characters |

---

### 🧪 Testing

#### Testing Requirements

- ✅ Write tests for new features
- ✅ Maintain **80%+ coverage**
- ✅ Test edge cases and errors
- ✅ Use descriptive test names

#### Test Example

```javascript
// tests/parser.test.js
describe('SymbolParser', () => {
  describe('parse()', () => {
    it('should parse basic symbols correctly', () => {
      const parser = new SymbolParser();
      const result = parser.parse('✓ Test\n▶ Action');
      
      expect(result.symbols).toHaveLength(2);
      expect(result.symbols[0].type).toBe('complete');
    });

    it('should handle empty input gracefully', () => {
      const parser = new SymbolParser();
      const result = parser.parse('');
      
      expect(result.symbols).toHaveLength(0);
      expect(result.errors).toHaveLength(0);
    });

    it('should throw error on invalid syntax in strict mode', () => {
      const parser = new SymbolParser({ strict: true });
      
      expect(() => {
        parser.parse('Invalid @@ Syntax');
      }).toThrow(ParseError);
    });
  });
});
```

#### Running Tests

```bash
# Run all tests
npm test

# Run with coverage
npm run test:coverage

# Run specific test file
npm test parser.test.js

# Watch mode
npm test -- --watch
```

---

### 📖 Documentation

#### Documentation Standards

- 📝 Document all public API methods
- 📚 Update README.md for user-facing changes
- 💬 Add JSDoc comments for complex functions
- 📋 Keep examples up-to-date

#### JSDoc Example

```javascript
/**
 * Parses SignumTrace symbolic notation into structured data
 * 
 * @param {string} text - The SignumTrace plan text
 * @param {Object} options - Parser options
 * @param {boolean} [options.strict=false] - Whether to throw on errors
 * @param {number} [options.maxDepth=10] - Maximum nesting depth
 * @returns {Object} Parsed plan with symbols array
 * @throws {ParseError} If parsing fails in strict mode
 * 
 * @example
 * const parser = new SymbolParser();
 * const plan = parser.parse('✓ Task 1\n▶ Task 2');
 * console.log(plan.symbols); // [{ type: 'complete', text: 'Task 1' }, ...]
 */
parse(text, options = {}) {
  // Implementation
}
```

---

## 🎯 Adding New Symbols

Want to extend the SignumTrace symbolic language? Here's how!

### Step-by-Step Process

#### 1️⃣ Update Parser

```javascript
// src/parser.js
const SYMBOLS = {
  // Existing symbols...
  '✓': 'complete',
  '▶': 'action',
  '🔄': 'iteration',  // ← New symbol
};
```

#### 2️⃣ Add Documentation

Update the symbol table:

```markdown
| Symbol | Name | Usage |
|--------|------|-------|
| 🔄 | Iteration | `🔄 Repeat process until complete` |
```

#### 3️⃣ Write Tests

```javascript
// tests/parser.test.js
describe('Iteration Symbol', () => {
  it('should parse 🔄 iteration symbol', () => {
    const parser = new SymbolParser();
    const result = parser.parse('🔄 Repeat process');
    
    expect(result.symbols[0].type).toBe('iteration');
    expect(result.symbols[0].text).toBe('Repeat process');
  });
});
```

#### 4️⃣ Update Formatters

```javascript
// src/formatter.js
formatSymbol(symbol) {
  switch(symbol.type) {
    case 'iteration':
      return `→ Loop: ${symbol.text}`;
    // ... other cases
  }
}
```

### Symbol Proposal Template

```markdown
### New Symbol Proposal

**Symbol:** 🔄  
**Name:** Iteration  
**Purpose:** Mark repeating processes

**Use Case:**
Tracking iterative processes in agile workflows

**Example:**
```
🔄 Sprint planning (every 2 weeks)
🔄 Daily standup (every morning)
```

**Implementation Notes:**
- Should support frequency metadata
- Consider nesting with other symbols
```

---

## 🌐 Community

### 💬 Communication Channels

| Channel | Purpose | Link |
|---------|---------|------|
| 💬 **GitHub Issues** | Bug reports, feature requests | [Issues](https://github.com/Codfski/signumtrace/issues) |
| 🗣️ **GitHub Discussions** | Questions, community chat | [Discussions](https://github.com/Codfski/signumtrace/discussions) |
| 🔀 **Pull Requests** | Code contributions | [PRs](https://github.com/Codfski/signumtrace/pulls) |

---

### 🆘 Getting Help

#### Priority Order

1. 📖 **Check README.md** - Start here
2. 🔍 **Search Issues** - Someone may have asked already
3. 💬 **GitHub Discussions** - Ask the community
4. 🏷️ **Tag Maintainers** - For urgent issues only

#### Good Question Format

```markdown
### Question
How do I parse nested conditions?

### What I've Tried
- Read the documentation
- Looked at examples
- Tried this code: [code snippet]

### Expected
Should parse nested if/then statements

### Context
Building a project management tool integration
```

---

### 🏆 Recognition

Contributors are recognized in:

- ✨ **GitHub Contributors** - Listed on repository
- 📋 **Release Notes** - Mentioned in changelogs
- 📖 **Documentation** - For significant contributions
- 🎖️ **Hall of Fame** - Top contributors featured

### Contributor Levels

| Level | Contributions | Badge |
|-------|---------------|-------|
| 🌱 **Newcomer** | 1-3 PRs merged | First Timer |
| 🌿 **Contributor** | 4-10 PRs merged | Active |
| 🌳 **Core Contributor** | 11+ PRs merged | Core |
| 👑 **Maintainer** | Trusted with repo access | Maintainer |

---

## 🎉 Thank You!

Thank you for contributing to SignumTrace! Your efforts help make symbolic planning accessible to everyone.

### Quick Links

- 📖 [Documentation](docs/)
- 🗺️ [Roadmap](README.md#roadmap)
- 🐛 [Report Bug](https://github.com/Codfski/signumtrace/issues/new?template=bug_report.md)
- ✨ [Request Feature](https://github.com/Codfski/signumtrace/issues/new?template=feature_request.md)
- 💬 [Join Discussion](https://github.com/Codfski/signumtrace/discussions)

---

<div align="center">

**Happy coding! 🚀**

*Made with ❤️ by the SignumTrace community*

[![Contributors](https://img.shields.io/github/contributors/Codfski/signumtrace?style=for-the-badge)](https://github.com/Codfski/signumtrace/graphs/contributors)
[![PRs](https://img.shields.io/github/issues-pr/Codfski/signumtrace?style=for-the-badge)](https://github.com/Codfski/signumtrace/pulls)
[![Issues](https://img.shields.io/github/issues/Codfski/signumtrace?style=for-the-badge)](https://github.com/Codfski/signumtrace/issues)

[⬆ Back to Top](#-contributing-to-signumtrace)

</div>
