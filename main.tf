resource "aws_iam_user" "example" {
  for_each = toset(["ravi", "patel", "afsah","yiqu"])
  name     = each.value
}


resource "azurerm_resource_group" "student" {
    provider = azurerm.Azure
    name = "raadjalatchumy.ravi@fdmgroup.com"
    password            = "P@sswd99!"
    location = "East US"
}

resource "azurerm_resource_group" "trainer" {
    provider = azurerm.Azure
    name = "ibrahim@fdmgroup.com"
    password            = "P@sswd100!"
    location = "East US"
}



resource "aws_s3_bucket" "example_1" {
  count = "${length(var.bucketname)}"
  name = "${element(var.bucketname,count.index )}"
  tags = {
    Env = "dev"
    Team = "DevOps"
  }
}