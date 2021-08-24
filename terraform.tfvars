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
 "policies": ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess","arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess"]
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
}, {
 "name": "ContentEdit",
 "association": "ContentEdit",
 "policy": {
  "Version": "2012-10-17",
  "Statement": [{
   "Effect": "Allow",
   "Action": [
    "s3:*",
    "dynamodb:*"
   ],
   "Resource": "*"
  }]
 }
}, {
 "name": "DevelopReadOnly",
 "association": "DevelopReadOnly",
 "policy": {
  "Version": "2012-10-17",
  "Statement": [{
   "Effect": "Allow",
   "Action": [
    "s3:Get*",
    "s3:List*",
    "route53:Get*",
    "route53:List*",
    "route53:TestDNSAnswer",
    "logs:describeExportTasks",
    "logs:describeLogGroups",
    "logs:describeLogStreams",
    "logs:describeMetricFilters",
    "logs:describeQueryDefinitions",
    "logs:describeSubscriptionFilters",
    "logs:filterLogEvents",
    "logs:getLogEvents",
    "logs:testMetricFilter"
   ],
   "Resource": "*"
  }]
 }
}]
