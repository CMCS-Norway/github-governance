/*
* # Governance
*
* This is a repository for managing our GitHub organization. Anyone from CMCS can add members through a pull request, and any member can approve it.
*/

resource "github_membership" "admin" {
  for_each = local.admins
  username = each.key
  role     = "admin"
}

resource "github_membership" "users" {
  for_each = local.users
  username = each.key
}

resource "github_team" "all_users" {
  name        = "All Users"
  description = "Every user in the organization."
  privacy     = "closed"
}

resource "github_team" "devops" {
  name        = "DevOps"
  description = "DevOps team members."
  privacy     = "closed"
}

resource "github_team_membership" "all_users" {
  for_each = setunion(local.users, local.admins)
  username = each.key
  role     = contains(local.admins, each.key) ? "maintainer" : "member"
  team_id  = github_team.all_users.id
}

resource "github_team_membership" "platform" {
  for_each = setunion(local.platform)
  username = each.key
  role     = contains(local.platform, each.key) ? "maintainer" : "member"
  team_id  = github_team.platform.id
}
