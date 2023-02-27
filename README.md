# Creating custom image using and packer and then build compute instance using Terraform

# Create Custom Images using Packer
1. Install Packer 
    a. Depends on your OS, use this link to install Packer your your device https://developer.hashicorp.com/packer/downloads
    b. set path
    c. Verify by running command: packer -v
2. Create Service Account in GCP and provide Compute Engine Instance Admin and Service Account User
    a. packer Validate packer1.json (to validate the configruation)
    b. packer validate packer1.json (To build the custom image)

# Create Compute Instances using Custom Image with Terraform
1. Creat a working directory
2. Install Terraform depeding on the OS https://developer.hashicorp.com/terraform/downloads 
3. Commands to execute
    a. terraform init (To initialize the Terraform directory)
    b. terraform plan (To validate the infrastuctrue to build)
    c. terraform deploy (To build the compute instance)
    d. terrafrom destroy (To delete the infrastructure, built in 'step c'
