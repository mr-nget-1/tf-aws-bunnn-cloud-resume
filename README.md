# DDMS/FESS AWS DEPENDENCIES
The purpose of this repo is to deploy AWS dependencies for the DDMS FESS application in the following environments:
- Sanpit
- SIT (non-prod)

<br />
<br />



## CURRENT CONFIGURATION

### Subnet
- Provide the IDs of the private subnets obtained from your infrastructure.

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
- Provide the Security Groups obtained from your infrastructure.

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

### Create_EFS

### ![#f03c15](https://via.placeholder.com/10/f03c15?text=+) **Input** <br />

![wf_main_sandpit](https://github.com/mr-nget-1/tf-aws-bunnn-cloud-resume/assets/139294222/3eef57ce-8b6a-485e-b1d0-6956cbb81fef)

- **Environment to deploy**: sandpit, sit.
- **Destroy environment**: true/false (default). 

### ![#1589F0](https://via.placeholder.com/10/1589F0?text=+) **Output** <br />

<b>aws_efs_id:</b> The workflow will create an AWS EFS in the selected environment. The EFS file system id is outputted to this value.

<br />
