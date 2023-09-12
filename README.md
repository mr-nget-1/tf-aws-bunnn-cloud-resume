# DDMS/FESS AWS DEPENDENCIES
The purpose of this repo is to deploy and create AWS dependencies for the DDMS FESS application in the following environments:
- Sanpit
- SIT (non-prod)

<br />
<br />



## CURRENT CONFIGURATION

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
AWF EFS Deployment: Create_EFS

<br />

### Create_EFS

### ![#f03c15](https://via.placeholder.com/10/f03c15?text=+) **Input** <br />

![BlueGreen](https://user-images.githubusercontent.com/118230168/233266682-ee69594e-8294-483f-a240-0b7ef97ab002.png)

![wf_main_sandpit](https://github.com/mr-nget-1/tf-aws-bunnn-cloud-resume/assets/139294222/e5a507bc-9699-4971-8223-34f0cb108612)

- **Environment to deploy**: sandpit, sit.
- **Destroy environment**: true/false (default). 

### ![#1589F0](https://via.placeholder.com/10/1589F0?text=+) **Output** <br />

aws_efs_id: The workflow will create and AWS EFS and the file system id obtained after creation is then passed to this output value. 

<br />
