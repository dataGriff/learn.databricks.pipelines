# COMMAND ----------

print("hello world")

# COMMAND ----------

print("hello world_2")

# COMMAND ----------

from pyspark.sql import SparkSession
spark = (SparkSession.builder
	.appName("hello_world") # type: ignore
	.getOrCreate())

# COMMAND ----------

df = spark.read.json("/databricks-datasets/samples/people/people.json")
df.show()


# COMMAND ----------
