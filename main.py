from pyspark.sql import SparkSession

# Initialize SparkSession
spark = SparkSession.builder \
    .appName("example") \
    .getOrCreate()

# Define your data
data = [('Tiny Rebel', 'Stay Puft'), ('Crafty Devil', 'Mike Rayer')]
columns = ["brewery", "beer"]

# Create DataFrame
df = spark.createDataFrame(data=data, schema=columns)

# Show DataFrame
df.show()

# Stop SparkSession
spark.stop()