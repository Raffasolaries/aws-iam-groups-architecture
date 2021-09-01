profile = "default"
users2groups = [{
 users: ["RaffaeleSuperga", "LucaTavecchia"],
 group: "Admin"
}, {
 users: ["MicheleCortellini"],
 group: "Billing"
}, {
 users: ["MarcoOrizio"],
 group: "SupportAdmin"
}, {
 users: ["ChiaraGiorgetti","AlessioViola"],
 group: "ContentEdit"
}, {
 users: ["EmanueleRogledi","GiuseppeRinella","MatteoSinatra"],
 group: "DevelopAdmin"
}, {
 users: ["systrategy"],
 group: "InfrastructureAdmin"
}]
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
 "policies": ["arn:aws:iam::aws:policy/job-function/SupportUser"]
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
    "route53domains:*",
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
    "ecs:Describe*",
    "ecr:*"
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
     "route53domains:*",
     "cloudwatch:*",
     "logs:*",
     "events:*",
     "elasticloadbalancing:*",
     "ec2:Describe*",
     "ec2:AuthorizeSecurityGroupIngress", 
     "ec2:RevokeSecurityGroupIngress", 
     "ec2:AuthorizeSecurityGroupEgress", 
     "ec2:RevokeSecurityGroupEgress", 
     "ec2:ModifySecurityGroupRules",
     "ec2:UpdateSecurityGroupRuleDescriptionsIngress", 
     "ec2:UpdateSecurityGroupRuleDescriptionsEgress",
     "autoscaling:Describe*",
     "ecs:List*",
     "ecs:Describe*"
    ],
    "Resource": "*"
   }]
  }
 }]
