# Contributing to OpenCog Monorepo

Welcome to the OpenCog monorepo! We're excited about your interest in contributing to the advancement of Artificial General Intelligence research and development.

## 🏗 Repository Structure

This monorepo is organized into focused workspaces:

- **`packages/atomspace/`** - Core AtomSpace components (stable, production-ready)
- **`packages/research/`** - Active research projects
- **`packages/incubator/`** - Experimental and proof-of-concept work
- **`packages/hyperon/`** - Hyperon integration components
- **`packages/tools/`** - Development utilities and tools

## 🚀 Getting Started

### Prerequisites

- Node.js 18+ and npm 9+
- Git

### Setup

```bash
# Clone the repository
git clone https://github.com/EchoCog/oc.github.git
cd oc.github

# Install dependencies for all workspaces
npm run bootstrap

# Build all packages
npm run build

# Run tests
npm run test
```

## 🛠 Development Workflow

### Working with Workspaces

```bash
# Work on a specific workspace
npm run workspace @opencog/atomspace build
npm run workspace @opencog/research test

# Use the workspace management script
./scripts/workspace.sh list
./scripts/workspace.sh info atomspace
./scripts/workspace.sh build research
```

### Development Commands

```bash
# Install dependencies for all workspaces
npm run bootstrap

# Build all packages
npm run build

# Test all packages
npm run test

# Lint all packages
npm run lint

# Clean all packages and dependencies
npm run clean
```

## 📝 Making Contributions

### 1. Choose the Right Workspace

- **AtomSpace**: For core system improvements, bug fixes, and stable feature additions
- **Research**: For new research implementations, experimental algorithms
- **Incubator**: For proof-of-concept work, new ideas, and exploratory development
- **Hyperon**: For Hyperon integration and compatibility work
- **Tools**: For development utilities, build scripts, and tooling improvements

### 2. Development Process

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/your-feature-name`
3. **Make changes** in the appropriate workspace(s)
4. **Test** your changes: `npm run test`
5. **Lint** your code: `npm run lint`
6. **Commit** with descriptive messages
7. **Push** to your fork
8. **Submit** a pull request

### 3. Code Standards

- Follow existing code patterns and conventions
- Write tests for new functionality
- Update documentation as needed
- Ensure all workspace tests pass
- Keep changes focused and atomic

### 4. Pull Request Guidelines

- Provide clear description of changes
- Reference any related issues
- Include test coverage for new features
- Update relevant README files
- Ensure CI checks pass

## 🧪 Testing

Each workspace has its own testing setup. Run tests at the workspace level:

```bash
# Test specific workspace
npm run workspace @opencog/atomspace test

# Test all workspaces
npm run test
```

## 📚 Documentation

- Update workspace README files for feature changes
- Add inline documentation for complex logic
- Update this CONTRIBUTING.md for process changes
- Consider adding examples for new features

## 🐛 Reporting Issues

When reporting issues:

1. Specify which workspace is affected
2. Provide steps to reproduce
3. Include environment information
4. Add relevant error messages or logs

## 💬 Getting Help

- Check existing issues and documentation
- Ask questions in discussions
- Refer to individual workspace READMEs
- Contact maintainers for complex architectural questions

## 📄 License

By contributing, you agree that your contributions will be licensed under the GNU Affero General Public License v3.0.

## 🔗 External Resources

- [OpenCog Wiki](https://wiki.opencog.org)
- [The Open Cognition Project](https://wiki.opencog.org/w/The_Open_Cognition_Project)
- [SingularityNET](https://singularitynet.io)

Thank you for contributing to the future of AGI! 🚀