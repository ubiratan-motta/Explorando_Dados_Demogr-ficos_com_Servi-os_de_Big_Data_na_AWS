# Exploring Demographic Data with Big Data Services on AWS

### Services Used in this Practical Activity
 - Amazon S3
 - Amazon Glue
 - Amazon Athena
 - Amazon QuickSight

## Development Steps

### Create a Bucket in Amazon S3

- Amazon S3 Console -> Buckets -> Create bucket -> Bucket name [bucket_name] - Create bucket
- Create a folder (Create a folder named ```/output``` and another with the name of your dataset. This name will define the table name created in Glue)
- Upload the data files

### Create a Glue Crawler

- Amazon Glue Console -> Crawlers -> Add Crawler
- Source type [Data Stores] -> Crawl all folders
- Data store [S3] -> Include path [path_to_input_data_directory]
- Create IAM Role
- Frequency [Run on demand]
- Database name [your_db_name]
- Group behavior [Create a single schema for each S3 path]
- Finish
- Databases -> Tables -> View data of the created tables

### Create an Application in Amazon Athena

- Query editor -> Settings -> Manage settings -> Query result location and encryption -> Browse S3 -> select the created bucket
- Select Database -> create queries (queries available in the queries folder)
- Check unsaved queries in the bucket created in S3
- Save queries -> Run again -> Check in the bucket created in S3

### Visualize Data in Amazon QuickSight

- Signup -> Choose [Standard]
- Datasets -> Create a new dataset -> Athena -> Name [DatasetName] -> Create
- Select database -> select table -> Edit or preview -> Save & visualize
- Create visualizations by selecting columns, creating filters and parameters, and choosing Visual types for charts.

## Dashboard Created available at the link: [Dashboard Link](https://sa-east-1.quicksight.aws.amazon.com/sn/dashboards/eb46defc-e035-4b56-9990-44397dc0cbb3/views/da1ebbc3-68e1-4164-8dfb-1c80dcc19fd6)
## All queries used are available in the queries folder
