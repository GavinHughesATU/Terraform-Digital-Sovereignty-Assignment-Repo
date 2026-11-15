# Terraform-Digital-Sovereignty-Assignment-Repo
As the head of IT for your organization ,design and implement a Policy-as-Code Framework for Digital Sovereignty and Infrastructure-as-Code Supply Chain Security.

# Overview
This project demonstrates the implementation of cloud sovereignty and security controls using Terraform and HashiCorp Sentinel.

The solution deploys AWS infrastructure while enforcing governance requirements through policy-as-code.

# Objectives
- Deploy infrastructure using HCP Terraform
- Enforce governance using Sentinel
- Restrict deployments to approved EU regions only
- Permit only approved providers
- Permit only approved Terraform module sources
- Demonstrate automated policy validation


# Policy Controls

# Digital Sovereignty

I restricted deployments to approved EU AWS regions:
eu-west-1 
eu-west-2 
eu-central-1 

This helps support data residency requirements but it is not a complete solution. 
AWS services can still replicate data, create backups, or involve operational activities outside the selected region, 
so regional controls can only do so much.


# Infrastructure Security
Policies were put in place to:
Restricts approved EC2 instance types.
Requires encrypted EBS volumes.
Enforces IMDSv2 on EC2 instances.
Validates network security configurations.
Prevent unrestricted inbound SSH access.

These controls only evaluate the Terraform configuration before deployment and cannot detect changes made directly in AWS after resources have been created.

# IaC Supply Chain Security
Restricts Terraform providers to approved sources.
Enforces approved provider versions.
Restricts Terraform module usage to approved sources.
Reduces risk from untrusted providers and modules.

One challenge with Policy as Code is ongoing maintenance. Approved provider versions, module sources, 
and security requirements canchange, so sentinel policies need to be reviewed/updated regularly to remain effective.

# Reference Material and AI Usage
References
https://developer.hashicorp.com/terraform/docs
https://developer.hashicorp.com/sentinel/docs
https://developer.hashicorp.com/terraform/cloud-docs
https://developer.hashicorp.com/sentinel/docs/terraform
Tools Used:
Terraform
HashiCorp Sentinel
HCP Terraform
GitHub
VS Code
GitHub Copilot
Microsoft 365 Copilot

AI Usage Declaration
GitHub Copilot and Microsoft 365 Copilot were used to assist with Terraform configuration, 
Sentinel policy development and troubleshooting. 
Baisc Templates were generated then updated and tested as each setion was added.
All generated content was reviewed, tested, and modified before inclusion in the final submission.