# OpenCog AtomSpace

The core of the OpenCog system. As of 2025, it is active, stable and supported.

## Components

This workspace contains the core AtomSpace components:

* **AtomSpace** - Hypergraph database and query engine
* **Storage** - Base class for saving, loading, sending and receiving Atoms and AtomSpaces
* **CogServer** and **atomspace-cog** - Networking, json, websockets
* **atomspace-rocks** - Disk I/O storage, based on RocksDB
* **Proxy Nodes** - Managing Atoms flowing through large AtomSpaces
* **Sparse Vectors/Matrix** - Working with graphs as (embeddings in) sparse vectors
* **Link Grammar** - Maximal Planar Graph (MPG) parsing, natural language parsing (NLP)
* **Docker containers** - System integration and demos
* **atomspace-pgres** - Postgres StorageNode (deprecated but functional)

## External Links

- [AtomSpace Repository](https://github.com/opencog/atomspace)
- [Storage Repository](https://github.com/opencog/atomspace-storage)
- [CogServer Repository](https://github.com/opencog/cogserver)
- [atomspace-cog Repository](https://github.com/opencog/atomspace-cog)
- [atomspace-rocks Repository](https://github.com/opencog/atomspace-rocks)
- [Matrix Repository](https://github.com/opencog/matrix)
- [Link Grammar Repository](https://github.com/opencog/link-grammar)
- [Docker Repository](https://github.com/opencog/docker)
- [atomspace-pgres Repository](https://github.com/opencog/atomspace-pgres)

## Development

```bash
# Install dependencies
npm install

# Build
npm run build

# Test
npm run test

# Development mode
npm run dev
```