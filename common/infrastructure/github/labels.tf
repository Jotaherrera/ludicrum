resource "github_issue_labels" "ludicrum_labels" {
  repository = data.github_repository.ludicrum.id

  label {
    name        = "Critical"
    color       = "FF0000"
    description = "Label used to mark critical issues or tasks that require immediate attention."
  }

  # Copy and paste the following block to add more labels
  # label {
  #   name        = "LabelName"
  #   color       = "FF0000"
  #   description = "LabelDescription"
  # }
}
