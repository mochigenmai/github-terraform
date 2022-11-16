module "collaborator" {
  source  = "./modules/collaborator"
  members = var.collaborator_members

  permissions = {
    "repo01" : "push",
    "repo02" : "push"
  }
}
