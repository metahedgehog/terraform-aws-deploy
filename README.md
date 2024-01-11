# AWS Terraform Infrastructure Deployment

This Terraform project automates the provisioning of AWS infrastructure, including a Virtual Private Cloud (VPC), public subnet, internet gateway, route table, security group, and an EC2 instance. The project is designed to be flexible, allowing customization through variables for different environments.

## Prerequisites

Before running the Terraform scripts, ensure you have the following prerequisites:

1. **Terraform Installation**: Install Terraform on your machine. You can download it from [Terraform Downloads](https://www.terraform.io/downloads.html).

2. **AWS Credentials**: Make sure you have AWS credentials configured on your machine with the necessary permissions for resource creation.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine.

    ```bash
    git clone https://github.com/metahedgehog/terraform-aws-infrastructure.git
    ```

2. **Navigate to the Project Directory**: Change into the project directory.

    ```bash
    cd terraform-aws-infrastructure
    ```

3. **Initialize Terraform**: Run the following command to initialize Terraform in the project directory.

    ```bash
    terraform init
    ```

4. **Review and Modify Variables (Optional)**: Open the `variables.tf` file and review the variables. Modify them as needed based on your requirements.

5. **Run Terraform Plan**: Execute the following command to see the plan of what Terraform will create.

    ```bash
    terraform plan
    ```

6. **Apply Terraform Changes**: If the plan looks good, apply the changes.

    ```bash
    terraform apply
    ```

7. **Review Outputs**: After the Terraform apply is complete, review the outputs to get information about the created resources.

    ```bash
    terraform output
    ```

    Save the outputs in a file for future reference.

## Terraform Outputs

The following outputs are provided by the Terraform script:

- **ec2_public_ip**: Public IP address of the EC2 instance.
- **ec2_ami**: AMI ID of the launched EC2 instance.
- **ec2_type**: Instance type used for the EC2 instance.
- **public_vpc_id**: ID of the created VPC.
- **ec2_subnet_id**: ID of the public subnet where the EC2 instance is deployed.
- **public_subnet_AZ**: Availability Zone of the public subnet.
- **ec2_region**: AWS region where the infrastructure is deployed.

## Clean Up

To avoid incurring unnecessary costs, it's essential to destroy the created resources when they are no longer needed.

1. Run the following command to see the plan for resource destruction:

    ```bash
    terraform plan -destroy
    ```

2. If the plan looks correct, execute the following command to destroy the resources:

    ```bash
    terraform destroy
    ```
