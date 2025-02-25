# Required GitHub Secrets Configuration

The following secrets need to be configured in your GitHub repository settings:

- `SNYK_TOKEN`: API token for Snyk security scanning
- `FUZZ_API_KEY`: API key from Consensys Diligence Fuzzing dashboard
- `SONAR_TOKEN`: Token for SonarCloud analysis
- `PRODUCTION_DEPLOY_KEY`: Deployment credentials for production environment
- `CERTORA_API_KEY`: API key for Certora formal verification

## Setting up Fuzzing Credentials

1. Sign up at https://fuzzing.diligence.tools/
2. Get your API key from the account settings page
3. Add as GitHub secret named `FUZZ_API_KEY`

## Setting up Other Secrets

1. Go to your repository settings
2. Navigate to Secrets and Variables > Actions
3. Add each secret using the New Repository Secret button
4. Ensure proper secret rotation and access controls are in place
