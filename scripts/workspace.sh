#!/bin/bash

# OpenCog Monorepo Workspace Management Script

set -e

WORKSPACES=(
    "atomspace"
    "research"
    "incubator"
    "hyperon"
    "tools"
)

usage() {
    echo "Usage: $0 <command> [workspace]"
    echo ""
    echo "Commands:"
    echo "  list                    List all workspaces"
    echo "  build [workspace]       Build all workspaces or specific workspace"
    echo "  test [workspace]        Test all workspaces or specific workspace"
    echo "  clean [workspace]       Clean all workspaces or specific workspace"
    echo "  dev [workspace]         Run dev mode for specific workspace"
    echo "  info [workspace]        Show workspace information"
    echo ""
    echo "Workspaces:"
    for ws in "${WORKSPACES[@]}"; do
        echo "  - $ws"
    done
}

list_workspaces() {
    echo "Available workspaces:"
    for ws in "${WORKSPACES[@]}"; do
        echo "  📦 @opencog/$ws - packages/$ws/"
    done
}

run_command() {
    local cmd=$1
    local workspace=$2
    
    if [ -n "$workspace" ]; then
        echo "🔧 Running '$cmd' for workspace: @opencog/$workspace"
        npm run workspace "@opencog/$workspace" "$cmd"
    else
        echo "🔧 Running '$cmd' for all workspaces"
        npm run "$cmd"
    fi
}

workspace_info() {
    local workspace=$1
    if [ -z "$workspace" ]; then
        echo "❌ Please specify a workspace"
        usage
        exit 1
    fi
    
    echo "📋 Workspace Information: @opencog/$workspace"
    echo "   📁 Path: packages/$workspace/"
    if [ -f "packages/$workspace/package.json" ]; then
        echo "   📄 Package:"
        cat "packages/$workspace/package.json" | grep -E '"name"|"description"|"version"' | sed 's/^/      /'
    fi
    if [ -f "packages/$workspace/README.md" ]; then
        echo "   📖 README exists"
    fi
}

case "$1" in
    "list")
        list_workspaces
        ;;
    "build"|"test"|"clean")
        run_command "$1" "$2"
    ;;
    "dev")
        if [ -z "$2" ]; then
            echo "❌ Dev command requires a specific workspace"
            usage
            exit 1
        fi
        cd "packages/$2"
        npm run dev
        ;;
    "info")
        workspace_info "$2"
        ;;
    *)
        usage
        exit 1
        ;;
esac