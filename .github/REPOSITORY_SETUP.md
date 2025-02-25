# Repository Setup Guide

## Required Secrets

Add these secrets in Settings > Secrets and variables > Actions:

- `MYTHX_API_KEY`: API key for MythX security scanning
- `CERTORA_API_KEY`: API key for Certora formal verification
- `DEPLOY_PRIVATE_KEY`: Deployment wallet private key
- `NPM_TOKEN`: GitHub Package Registry token
- `SONAR_TOKEN`: SonarQube analysis token

## Branch Protection Rules

Configure in Settings > Branches > Branch protection rules:

### `main` branch
- Require 2 approvals
- Require status checks to pass:
  - ci-build-test
  - smart-contract-audit
- Require signed commits
- Include administrators

### `develop` branch
- Require 1 approval
- Require status checks to pass
  - ci-build-test
- Allow force pushing
