/*
* # Governance
*
* This is a repository for managing our GitHub organization. Anyone from CMCS can add members through a pull request, and any member can approve it.
*/

resource "github_membership" "admin" {
  for_each = { for key, user in local.users : key => user if user.owner }
  username = each.key
  role     = "admin"
}

resource "github_membership" "users" {
  for_each = { for key, user in local.users : key => user if !user.owner }
  username = each.key
}


resource "github_team" "all_users" {
  name        = "All Users"
  description = "Every user in the organization."
  privacy     = "closed"
}

resource "github_team" "devops" {
  name        = "platform"
  description = "platform team members."
  privacy     = "closed"
}

resource "github_team" "security" {
  name        = "Security"
  description = "Security team members."
  privacy     = "closed"
}


resource "github_team_membership" "all_users" {
  for_each = local.users
  username = each.key
  role     = each.value.owner ? "maintainer" : "member"
  team_id  = github_team.all_users.id
}

resource "github_team_membership" "devops" {
  for_each = { for key, user in local.users : key => user if user.devops || user.owner }
  username = each.key
  role     = each.value.owner && each.value.devops ? "maintainer" : (
    each.value.devops ? "member" : ""
  )
  team_id  = github_team.devops.id
}


resource "github_team_membership" "security" {
  for_each = { for key, user in local.users : key => user if user.security || user.owner }
  username = each.key
  role     = each.value.owner && each.value.security ? "maintainer" : (
    each.value.security ? "member" : ""
  )
  team_id  = github_team.security.id
}
