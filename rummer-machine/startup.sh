#!/bin/bash

# Create a directory for the GitHub Actions runner and navigate into it
mkdir actions-runner && cd actions-runner

# Download the GitHub Actions runner package
curl -o actions-runner-linux-x64-2.319.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.319.1/actions-runner-linux-x64-2.319.1.tar.gz

# Verify the checksum of the downloaded package
echo "3f6efb7488a183e291fc2c62876e14c9ee732864173734facc85a1bfb1744464  actions-runner-linux-x64-2.319.1.tar.gz" | sha256sum -c

# Extract the package
tar xzf ./actions-runner-linux-x64-2.319.1.tar.gz

# Configure the runner (replace <REPO_URL> and <TOKEN> with your repository URL and token)
./config.sh --url https://github.com/SaiTerraformZone/vm-instance --token AKO7UXOM7MP2ARZTDE7WJSTG2XAAU

# Run the GitHub Actions runner as a background process
nohup ./run.sh > runner.log 2>&1 &
