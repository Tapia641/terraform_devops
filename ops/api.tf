module "lambda_function" {
  source = "./lambda_function_api"

  # Specify the directory containing the Dockerfile to build the image
  local_dir_to_build = "../api/app"

  # Specify the name of the Dockerfile to use for building the image
  docker_file_name = "Dockerfile.prod"

  # Specify the AWS account ID for the account where the Lambda function will be deployed
  aws_account_id = "093948650853"

  # Specify the AWS region where the Lambda function will be deployed
  aws_region = "us-east-1"

  # Specify the AWS credentials profile to use when interacting with AWS
  aws_profile = "default"

  # Specify the name of the local Docker image to build
  local_image_name = "fastapi_lambda"

  # Specify the name of the AWS Lambda function
  aws_function_name = "fastapi_lambda"

  # Specify a description for the AWS Lambda function
  aws_function_description = "This contains a FastAPI lambda Rest API"

  # Specify the API stage for the Lambda function
  api_stage = "dev"
}

output "base_url" {
  # The base_url attribute contains the base URL for the deployed Lambda function.
  value = module.lambda_function.base_url
}

# cd ..\api\app
# docker buildx build --platform linux/amd64 -f Dockerfile.prod -t fastapi_lambda .
# docker tag fastapi_lambda:latest 093948650853.dkr.ecr.us-east-1.amazonaws.com/fastapi_lambda:eb0c7f14527c96d69cf54fe9897d5b4c66e5ab12
# docker push 093948650853.dkr.ecr.us-east-1.amazonaws.com/fastapi_lambda:eb0c7f14527c96d69cf54fe9897d5b4c66e5ab12