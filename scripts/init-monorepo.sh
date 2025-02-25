#!/bin/bash

# Create monorepo structure
mkdir -p packages/{core,stablecoin-sdk,defi-oracle-sdk,zkp-sdk}
mkdir -p apps/{web,api}
mkdir -p contracts/{core,oracle,security}
mkdir -p sdks

# Initialize package.json files
for dir in packages/* apps/* contracts/* sdks; do
  cd $dir
  pnpm init
  cd -
done

# Setup core dependencies
pnpm install -w typescript @types/node jest eslint prettier

# Initialize Git submodules
git submodule add https://github.com/your-org/token-factory packages/core/token-factory
git submodule add https://github.com/your-org/web3-bank packages/core/web3-bank

echo "Monorepo structure initialized successfully!"
