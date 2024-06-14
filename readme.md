<h1 align="center" dir="auto">S3 File Uploader Frontend</h1>
The main objective is to sent archives from a frontend to a bucket S3

* In case you want to change the name of the buckets, must substitute the current archives in function.zip, change the name buckets in lambda/.env and terraform/modules/modules.tf, and copy and paste inside function.zip the following archives: .env, index.js, package-lock.json, package.json.

<h2>1) Terraform commands</h2>
We must create 2 s3 buckets, 1 API REST and an AWS Lambda, for this, we will run the following commands:

1) Join modules dir:

>     cd terraform/modules

2) Init terraform
>     terraform init

3) Apply terraform
>     terraform apply --auto-approve

After that, the API endpoint in script.js must be changed, and for that, must follow the steps:

1) open url: https://us-east-1.console.aws.amazon.com/lambda/home?region=us-east-1#/functions
2) select your function lambda
3) scroll down and select configuration
4) select triggers and Copy API endpoint and paste on script.js where it says 'YourAPIEndpoint'

Then, we must send the updated script.js to the bucket:

1) Join project's root dir:
>     cd ../..

2) Copy the archive to s3 bucket
>     aws s3 cp script.js s3://front-bucket1337/             #or your actual bucket name
