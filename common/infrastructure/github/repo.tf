resource "github_repository" "ludicrum" {
  allow_auto_merge       = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = false
  archive_on_destroy     = null
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "This repository exemplifies global best practices, ensuring robustness, scalability, and maintainability across its codebase."
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "ludicrum"
  topics                 = ["terraform", "devops"]
  visibility             = "public"
  vulnerability_alerts   = true
}
