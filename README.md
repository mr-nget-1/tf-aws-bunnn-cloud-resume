# DDMS/FESS AWS DEPENDENCIES
The purpose of this repo is to deploy and create AWS dependencies for the DDMS FESS application in the following environments:
- Sanpit
- SIT (non-prod)

<br />
<br />



## Current Configuration

### Subnet
- Provide the IDs of the different private subnets in your infrastructure.

[Configuration] <br />
- In **variable.hcl** file, replace:
  -  **Private_Subnet_AZ1**
  -  **Private_Subnet_AZ2** 
  ```bash
  #Example
  locals {
    Private_Subnet_AZ1 = "subnet-"
    Private_Subnet_AZ2 = "subnet-"
  }
  ```

<br />

### Security Group
- Provide the Security Groups created for the EFS. 

[Configuration] <br />
- In **variable.hcl** file, replace:
  -  **security_group_id**
  ```bash
  #Example
  locals {
    security_group_id = "sg-"
  }
  ```

<br />
<br />
<br />
<br />

## WORKFLOW
Workflows - efs

<br />

### EFS

<br />

## DEPLOY
To Deploy EFS

<br />

## DESTROY
To Destroy EFS


