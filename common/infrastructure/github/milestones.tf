resource "github_repository_milestone" "milestone_initial_repository_setup" {
  owner       = "Jotaherrera"
  repository  = github_repository.ludicrum.name
  title       = "Initial Repository Setup"
  description = "Set up the basic structure and initial configurations of the repository"
}
