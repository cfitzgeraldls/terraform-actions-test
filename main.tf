terraform {
    backend "remote" {
        organization = "demo-terraform-actions"
        workspaces {
            name = "terraform-actions-test"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!2"
  }
}