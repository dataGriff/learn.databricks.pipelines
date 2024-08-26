#!/bin/bash

echo "Configuring Databricks CLI authentication"

# Ensure the configuration file is populated correctly
echo "Populating ~/.databrickscfg"
> ~/.databrickscfg
echo "[DEFAULT]" >> ~/.databrickscfg

# Check if DATABRICKS_URL environment variable is set
if [ -z "$DATABRICKS_WORKSPACE" ]; then
  echo "Error: DATABRICKS_URL environment variable is not set."
  exit 1
else
  echo "host = $DATABRICKS_WORKSPACE" >> ~/.databrickscfg
fi

# Uncomment one of the authentication methods below

# Method 1: Token-based authentication
# Check if DATABRICKS_ACCESS_TOKEN environment variable is set
if [ -z "$DATABRICKS_PAT" ]; then
    echo "Error: DATABRICKS_PAT environment variable is not set."
    exit 1
else
    echo "token = $DATABRICKS_PAT" >> ~/.databrickscfg
    echo "Unsetting ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID, AZURE_TENANT_ID as PAT present"
    unset ARM_CLIENT_ID
    unset ARM_CLIENT_SECRET
    unset ARM_TENANT_ID
    unset AZURE_TENANT_ID
fi

# Method 2: Client ID and Secret-based authentication
# Check if both ARM_CLIENT_ID and ARM_CLIENT_SECRET environment variables are set
# if [ -z "$ARM_CLIENT_ID" ] || [ -z "$ARM_CLIENT_SECRET" ]; then
#   echo "Error: ARM_CLIENT_ID or ARM_CLIENT_SECRET environment variable is not set."
#   exit 1
# else
#   echo "client_id = $ARM_CLIENT_ID" >> ~/.databrickscfg
#   echo "client_secret = $ARM_CLIENT_SECRET" >> ~/.databrickscfg
# fi

echo "" >> ~/.databrickscfg

# Uncomment this line to open the configuration file in nano for manual editing
# Doesn't seem to be being found
# nano ~/.databrickscfg
# Run below to see it

cat ~/.databrickscfg

# az login --tenant $ARM_TENANT_ID

# databricks auth login --host https://accounts.azuredatabricks.net --account-id 3b7b64f9-66a8-4dee-9d21-8aa246ca49e9
# databricks auth token --host https://accounts.azuredatabricks.net --account-id 3b7b64f9-66a8-4dee-9d21-8aa246ca49e9

# Display configured profiles
databricks auth profiles

# List all available clusters
databricks clusters list
