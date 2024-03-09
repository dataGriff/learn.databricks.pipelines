echo "configuring databrick-cli authentication"

echo "populating [~/.databrickscfg]"
echo "" > ~/.databrickscfg
echo "[DEFAULT]" >> ~/.databrickscfg
echo "host = $DATABRICKS_URL" >> ~/.databrickscfg
##echo "token = $DATABRICKS_ACCESS_TOKEN" >> ~/.databrickscfg
# echo "client_id = $ARM_CLIENT_ID" >> ~/.databrickscfg 
# echo "client_secret = $ARM_CLIENT_SECRET" >> ~/.databrickscfg
echo "" >> ~/.databrickscfg

##nano ~/.databrickscfg
databricks auth profiles
databricks clusters list

