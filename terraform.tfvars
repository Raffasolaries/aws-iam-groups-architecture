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
 "policies": ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess","arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess","arn:aws:iam::aws:policy/CloudWatchEventsReadOnlyAccess"]
}, {
 "name": "SupportAdmin",
 "policies": []
}, {
 "name": "SupportReadOnly",
 "policies": ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess","arn:aws:iam::aws:policy/CloudWatchEventsReadOnlyAccess"]
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
    "events:*",
    "logs:*",
    "lambda:*",
    "dynamodb:*",
    "autoscaling:Describe*",
    "elasticloadbalancing:Describe*",
    "ec2:Describe*",
    "ec2:ModifySecurityGroupRules",
    "ecs:List*",
    "ecs:Describe*"
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
    "logs:testMetricFilter",
    "ec2:Describe*",
    "ecs:List*",
    "ecs:Describe*"
   ],
   "Resource": "*"
  }]
 }
}, {
  "name": "SupportAdmin",
  "association": "SupportAdmin",
  "policy": {
   "Version": "2012-10-17",
   "Statement": [{
    "Effect": "Allow",
    "Action": [
     "s3:*",
     "dynamodb:*",
     "route53:*",
     "cloudwatch:*",
     "elasticloadbalancing:*",
     "ec2:Describe*",
     "autoscaling:Describe*",
     "ecs:List*",
     "ecs:Describe*"
    ],
    "Resource": "*"
   }]
  }
 }, {
  "name": "SupportReadOnly",
  "association": "SupportReadOnly",
  "policy": {
   "Version": "2012-10-17",
   "Statement": [{
    "Effect": "Allow",
    "Resource": "*",
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
     "logs:testMetricFilter",
     "elasticloadbalancing:Describe*",
     "ec2:Describe*",
     "autoscaling:Describe*",
     "ecs:List*",
     "ecs:Describe*"
    ]
   }]
  }
 }]
