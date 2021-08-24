profile = "default"
iam_groups = [{
 "name": "Admin",
 "policies": ["arn:aws:iam::aws:policy/AdministratorAccess"]
}, {
 "name": "Billing",
 "policies": ["arn:aws:iam::aws:policy/job-function/Billing"]
}, {
 "name": "InfrastructureAdmin",
 "policies": ["arn:aws:iam::aws:policy/job-function/SystemAdministrator"]
}, {
 "name": "DevelopAdmin",
 "policies": []
}, {
 "name": "DevelopReadOnly",
 "policies": []
}, {
 "name": "SupportAdmin",
 "policies": []
}, {
 "name": "SupportReadOnly",
 "policies": []
}, {
 "name": "ContentEdit",
 "policies": []
}]
iam_policies = [{
 "name": "DevelopAdmin",
 "association": "DevelopAdmin",
 "policy": {
  "Version": "2012-10-17",
  "Statement": [{
   "Effect": "Allow",
   "Action": [
    "s3:*",
    "route53:*",
    "cloudwatch:*",
    "logs:*",
    "lambda:*",
    "dynamodb:*",
    "autoscaling:Describe*",
    "elasticloadbalancing:Describe*",
    "ec2:Describe*",
    "ec2:ModifySecurityGroupRules"
   ],
   "Resource": "*"
  }]
 }
}]
// org_accounts = [{
//  "name": "LucaTavecchia",
//  "email": "lt@tantosvago.it",
//  "unit": "Admin",
//  "subunit": ""
// }, {
//  "name": "RaffaeleSollecito",
//  "email": "rs@tantosvago.it",
//  "unit": "Admin",
//  "subunit": ""
// }]
