# Creates the Organization
resource "aws_organizations_organization" "org" {}
# Creates Organization main units
resource "aws_organizations_organizational_unit" "units" {
 count = length(var.org_units)
 name      = var.org_units[count.index].main
 parent_id = aws_organizations_organization.org.roots[0].id
}
// # Creates Organization children units
resource "aws_organizations_organizational_unit" "children" {
 for_each = {for u in var.org_units: u.main => u.children}
 name = length(each.value.children) > 0 ? each.value.children : null
 parent_id = aws_organizations_organizational_unit.units[each.key].id
}

