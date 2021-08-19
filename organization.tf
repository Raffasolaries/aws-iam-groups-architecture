# Creates the Organization
resource "aws_organizations_organization" "org" {}
# Creates Organization main units
resource "aws_organizations_organizational_unit" "units" {
 count = length(var.org_units)
 name      = var.org_units[count.index]
 parent_id = aws_organizations_organization.org.roots[0].id
}
// # Creates Organization children units
resource "aws_organizations_organizational_unit" "children" {
 count = length(var.org_subunits)
 name = var.org_subunits[count.index].child
 parent_id = aws_organizations_organizational_unit.units[index([for u in var.org_units: u], var.org_subunits[count.index].name)].id
}
