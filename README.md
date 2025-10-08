# OpenCog Monorepo

This monorepo contains the complete OpenCog ecosystem - a comprehensive platform for Artificial General Intelligence (AGI) research and development.

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/EchoCog/oc.github.git
cd oc.github

# Install dependencies for all workspaces
npm run bootstrap

# Build all packages
npm run build

# Run tests across all workspaces
npm run test
```

## 📦 Workspace Structure

This monorepo is organized into focused workspaces:

### [`packages/atomspace/`](./packages/atomspace/)
**Core AtomSpace Components** - The stable, production-ready core of the OpenCog system
- Hypergraph database and query engine
- Storage and persistence layers
- Networking and communication systems

### [`packages/research/`](./packages/research/)
**Active Research Projects** - Cutting-edge research in cognitive architectures
- Interactive learning environments
- Sensory-motor integration systems
- GPU acceleration for symbolic processing

### [`packages/incubator/`](./packages/incubator/)
**Experimental Projects** - Proof-of-concept and experimental work
- MOSES integration with AtomSpace
- Computer vision components
- Spatial-temporal reasoning systems

### [`packages/hyperon/`](./packages/hyperon/)
**Hyperon Integration** - Next-generation AGI framework by SingularityNET
- Hyperon compatibility layers
- Migration and integration tools

### [`packages/tools/`](./packages/tools/)
**Development Tools** - Utilities and helper tools for the ecosystem
- Build and deployment scripts
- Testing infrastructure
- Development environment setup

## 🛠 Development Workflows

### Working with Individual Packages

```bash
# Work on a specific package
npm run workspace @opencog/atomspace build
npm run workspace @opencog/research test

# Development mode for a package
cd packages/atomspace
npm run dev
```

### Cross-Workspace Commands

```bash
# Install dependencies for all workspaces
npm run bootstrap

# Build all packages
npm run build

# Test all packages
npm run test

# Lint all packages
npm run lint

# Clean all packages
npm run clean
```

## 📖 Documentation

- **Project Overview**: See [`profile/README.md`](./profile/README.md) for comprehensive project information
- **Individual Packages**: Each workspace has its own README with specific documentation
- **External Repositories**: Links to external OpenCog repositories are maintained in workspace documentation

## 🤝 Contributing

1. Choose the appropriate workspace for your contribution
2. Follow the development workflow for that workspace
3. Ensure tests pass: `npm run test`
4. Submit pull requests targeting the specific workspace

## 📄 License

This project is licensed under the GNU Affero General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## 🔗 External Links

- [OpenCog Wiki](https://wiki.opencog.org)
- [SingularityNET](https://singularitynet.io)
- [The Open Cognition Project](https://wiki.opencog.org/w/The_Open_Cognition_Project)

---

*For the complete OpenCog project overview and component details, see [`profile/README.md`](./profile/README.md)*
