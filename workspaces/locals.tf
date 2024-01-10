locals {
  instance_Name = (var.select_Environment == "dev")? "workspace-dev" : "workspace-prod"
}