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
Workflows - efs

<br />

### Create_EFS

### ![#f03c15](https://via.placeholder.com/10/f03c15?text=+) **Input** <br />

![BlueGreen](https://user-images.githubusercontent.com/118230168/233266682-ee69594e-8294-483f-a240-0b7ef97ab002.png)

![wf_main_sandpit](https://github.com/uts-itd/iac_aws_fess_dependencies/assets/120345179/554bb604-8bf0-4754-8ad6-55d498207c39)

- **environment_type**: sandpit, preprod or prod.
- **Blue environment** represents current application version serving production traffic.
- **Green environment** is staged running the newer version. 

Pass the inputs to either 1 or 0 depending on which servers you want to flow the traffic. Options are 1 and 0 where 1 will flow 100% of traffic to blue/green and 0 will flow null to blue/green. 

In this project, Green is set to 1 and Blue is set to 0 by default.

### ![#1589F0](https://via.placeholder.com/10/1589F0?text=+) **Output** <br />
The workflow will change the routing traffic from old instances to the new instances.

<br />
