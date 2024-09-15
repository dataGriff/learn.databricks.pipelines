import pulumi
import pulumi_azure as azure
import pulumi_databricks as databricks



# Create a Databricks schema
schema = databricks.Schema(
    "distilleries",
    name="distilleries",
    owner="xxxx@yahoo.co.uk", ##TODO: better to set as group
    catalog_name="whiskey",
    metastore_id="xxx",
    storage_root="abfss://interface@prdwhiskeydlkeunhngc.dfs.core.windows.net/distilleries" ##TODO: worth noting schema needs rebuilding if change this
)

# following sets creds to auth under
# pulumi config set databricks:token $DATABRICKS_PAT --secret 
# pulumi config set databricks:host $DATABRICKS_URL

# Create a Databricks table
table = databricks.SqlTable(
    "SqlTable",
    name="v1",
    owner="xxxx@yahoo.co.uk",
    columns=[
        databricks.SqlTableColumnArgs(
            name="id",
            type="INT",
            nullable=False,
            comment="The distillery id",
        ),
         databricks.SqlTableColumnArgs(
            name="name",
            type="STRING",
            nullable=True, ##TODO: does not allow not nulls once created
            comment="The distillery id",
            default_value="tasty"
        )
    ],
    table_type="MANAGED",
    schema_name=schema.name,
    catalog_name="whiskey",
    data_source_format="DELTA",
)


pulumi.export("schema_name", schema.name)
pulumi.export("table_name", table.name)