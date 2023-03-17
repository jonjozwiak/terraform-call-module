terraform {
  # This module is now only being tested with Terraform 0.13.x. However, to make upgrading easier, we are setting
  # 0.12.26 as the minimum version, as that version added support for required_providers with source URLs, making it
  # forwards compatible with 0.13.x code.
  required_version = ">= 0.12.26"
}

module "hello-world" {
  #source = "git@github.com/jonjozwiak/hello-world-module-test.git//?ref=main"
  source = "git::https://github.com/jonjozwiak/terraform-hello-world-module.git//?ref=main"
}

# website::tag::1:: The simplest possible Terraform module: it just outputs "Hello, World!"
output "hello_world" {
  value = module.hello-world.outputs.hello_world
}
