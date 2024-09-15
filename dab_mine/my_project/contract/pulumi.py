import pulumi
import pulumi_databricks as databricks

databricks_provider = databricks.Provider("databricks", 
    host="https://adb-71195058626629.9.azuredatabricks.net/",
    token="dapi27572ec4be63a2ecbcfbecced1af27e5-2"
)

example_schema = databricks.Schema("distilleries",
    name="distilleries",
    catalog_name="whiskey",
    opts=pulumi.ResourceOptions(provider=databricks_provider)
)