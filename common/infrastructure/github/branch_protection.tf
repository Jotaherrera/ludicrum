resource "github_branch_protection" "base_branch_proctection" {
  repository_id = github_repository.ludicrum.name

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false
  allows_force_pushes = true
  require_conversation_resolution = true
  require_signed_commits = false
  required_linear_history = true

  required_status_checks {
    strict   = true
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews  = true
    restrict_dismissals    = true
    required_approving_review_count = 1
  }
}
