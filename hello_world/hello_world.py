# COMMAND ----------

print("hello world")

# COMMAND ----------

print("hello world_2")

# COMMAND ----------

df = spark.read.json("/databricks-datasets/samples/people/people.json")
df.show()


# COMMAND ----------
