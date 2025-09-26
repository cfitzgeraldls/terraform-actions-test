terraform {
    backend "remote" {
        organization = "terraform-demo-actions"
        workspaces {
            name = "terraform-demo-actions"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}