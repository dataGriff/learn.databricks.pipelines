# COMMAND ---------- [markdown]
# # Default notebook
# 
# This default notebook is executed using Databricks Workflows as defined in resources/template_dab_job.yml.

# COMMAND ----------
# %load_ext autoreload
# %autoreload 2

# COMMAND ----------
from template_dab import main

main.get_taxis(spark).show(10)



# COMMAND ----------
