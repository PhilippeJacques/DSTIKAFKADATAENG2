
#  Real-time Data Analytics Pipeline
## Description
My solution uses python on google collab to get data from the https://jsonplaceholder.typicode.com/todos/1 api which yields a json response.

The kafka producer file gets this data and sends it to the kafka consumer through a topic named topiminusing the public ip address of my ec2 instance hosted on aws

The kafka consumer files gets the data from the kafka producer and creates a file for each line as in my python whichi will store in my s3 bucket on aws

Through Aws glue, i create a crawler which gets this files from amazon s3 and creates a pipeline for the data to be stored in a table which I query via sql command in Amazon Athena

Each steps have a screen shot available in the screenshot folder

## Prerequisites

- An aws account is needed
-Install terraform onyour local pc and put in the environment variable path precisely
-You need a google collab account to run the kafka producer and consumer codes
-you will need a terraform account which you will integrate to AWS to github oauth
-you willneed a github account for the deployment too 

## Requirements


All the commands to setup kafka, zookeeper and the topic and available in the kafka setup.txt file

The libraries needed in the kafkaproducer and kafka consumerfiles are all noted there so just launching them from google collab is sufficient


## Design


-The diagram I used is called diagram, the picture is available in the screenshots folder

The source here is the https://jsonplaceholder.typicode.com/todos/1  api which I consume with a python program, send the data via a kafka producer and get the data with a kafka consumer(the producers and consumers are all on my EC2 instance), store the data in a file which i upload on s3, then through amazon glue, i create a crawler which spans allthe s3 bucket data and stores it in a database which i can query via amazon athena.

## Developer Guide
If I was to continue as a developer with the work you've just done, which things are essential for me to know in order to be able to do so?
Can you provide with step-by-step assistance of what you've done so far with detailed screenshots? If something is not working as it should, this a good place to state that as well.

The last step reamining is deploying to terraform with aws integration, the apply works very well but the plan has a last configuration for it to be valid, it has the following error : 
Error: error creating DynamoDB Table: ResourceInUseException: Table already exists: terraform-state-locking
Error: Error creating S3 bucket: BucketAlreadyOwnedByYou: Your previous request to create the named bucket succeeded and you already own it. status code: 409, request id: HFEFVRG8M6FSHH2M, host id: xMu/DHAvIsbJVkzxnjANdUvYA2NKRrIg4f6rKGMn2PCb18KY8vnwadWfCkQb8g0mu5/+9kpXeSc=



# Author
OUC-HOUANG FOGOUM PHILIPPE JACQUES, DSTI DATA engineering S23
