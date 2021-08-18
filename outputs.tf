output "organization" {
 description = "AWS Organization resources"
 value = aws_organizations_organization.org
}

output "units" {
 description = "Organization Units"
 value = aws_organizations_organizational_unit.units
}