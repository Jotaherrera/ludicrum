resource "github_issue_labels" "ludicrum-labels" {
  repository = ""

  label {
    name        = "Critical"
    color       = "FF0000"
    description = ""
  }

  # Copy and paste the following block to add more labels
  # label {
  #   name        = "LabelName"
  #   color       = "FF0000"
  #   description = "LabelDescription"
  # }
}
