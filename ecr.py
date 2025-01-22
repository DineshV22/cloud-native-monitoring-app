import boto3
from botocore.exceptions import ClientError

# Initialize a session using Amazon ECR
ecr_client = boto3.client('ecr', region_name='ap-south-1')  # Change the region if needed

def create_ecr_repository(repository_name):
    try:
        # Create the repository
        response = ecr_client.create_repository(
            repositoryName=repository_name
        )
        print(f"Repository {repository_name} created successfully.")
        print(response)
    except ClientError as e:
        print(f"Error creating repository: {e}")

# Replace 'my-repository' with your desired repository name
create_ecr_repository('my_monitoring_app')