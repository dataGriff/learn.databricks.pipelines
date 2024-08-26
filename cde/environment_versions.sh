#!/bin/bash
echo 'Getting git version...'
git --version
echo 'Getting terraform version...'
terraform --version
echo 'Getting az cli version...'
az --version
echo 'Upgrade az cli version...'
az upgrade
echo 'Getting az cli version...'
az --version
echo 'Getting databricks version...'
databricks -v
echo 'Getting python version...'
python --version
# echo 'Getting spark version...'
# spark-submit --version
# echo 'Getting java version...'
# java -version