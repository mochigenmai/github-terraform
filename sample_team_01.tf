module "team_01" {
  source      = "./modules/team"
  name        = "team01"
  description = "team01 members"
  privacy     = "closed"

  members = var.team01_members

  permissions = {
    "github-terraform" : "push",
    "repo01" : "push",
    "repo02" : "push",
    "repo03" : "pull"
  }
}
