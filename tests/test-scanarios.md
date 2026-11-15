Test Scenarios
Test 1 - Compliant Terraform Plan
Objective
Verify that a compliant Terraform configuration passes all Sentinel policy checks.

Configuration
Approved AWS region
Approved provider
Approved module source
Compliant security configuration
Expected Result
Sentinel policies pass and deployment is allowed.

Actual Result
All Sentinel policies passed successfully.

Evidence
See: evidence/SentinelPass.png

Status
PASS

Test 2 - Non-Compliant Terraform Plan
Objective
Verify that Sentinel blocks infrastructure that violates policy requirements.

Configuration
Modified Terraform configuration to violate Sentinel policy requirements.

Expected Result
Sentinel policy evaluation fails and deployment is blocked.

Actual Result
Sentinel policies hard failed and the deployment was prevented.

Evidence
See: evidence/SentinelFail.png

Status
FAIL

Test 3 - Policy Enforcement Validation
Objective
Confirm that the complete_policies policy set is actively evaluated during Terraform runs.

Configuration
Terraform plan submitted through HCP Terraform with Sentinel policy set attached.

Expected Result
Policy set evaluated before deployment.

Actual Result
The complete_policies policy was evaluated and returned a failure result when requirements were not met.

Evidence
See: evidence/SentinelFail2.png

Status
FAIL

Test 4 - Terraform Plan Creation
Objective
Verify that Terraform can successfully generate an execution plan for the configured infrastructure.

Command
terraform plan -out=tfplan

Expected Result
Terraform should generate a valid execution plan and identify any infrastructure changes before deployment.

Actual Result
Terraform successfully generated a plan for the infrastructure configuration and identified one resource for creation:

aws_s3_bucket.sovereignty_demo
Plan: 1 to add, 0 to change, 0 to destroy. 

Evidence
Terraform evidence1.txt

Status
PASS