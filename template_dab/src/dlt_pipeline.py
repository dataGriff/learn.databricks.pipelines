# COMMAND ---------- [markdown]
# # DLT pipeline
# 
# This Delta Live Tables (DLT) definition is executed using a pipeline defined in resources/template_dab_pipeline.yml.

# COMMAND ----------
# Import DLT and src/template_dab
import dlt
import sys
sys.path.append(spark.conf.get("bundle.sourcePath", "."))
from pyspark.sql.functions import expr
from template_dab import main

# COMMAND ----------
@dlt.view
def taxi_raw():
  return main.get_taxis(spark)

@dlt.table
def filtered_taxis():
  return dlt.read("taxi_raw").filter(expr("fare_amount < 30"))

