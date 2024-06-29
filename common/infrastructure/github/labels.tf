resource "github_issue_label" "ludicrum_label_critical" {
  repository = github_repository.ludicrum.name
  name       = "Critical"
  color      = "FF0000"
  description = "Label used to mark critical issues or tasks that require immediate attention."
}

resource "github_issue_label" "ludicrum_label_medium" {
  repository = github_repository.ludicrum.name
  name       = "Medium Priority"
  color      = "FFFF00"
  description = "Label used to mark medium priority issues or tasks."
}

resource "github_issue_label" "ludicrum_label_low" {
  repository = github_repository.ludicrum.name
  name       = "Low Priority"
  color      = "00FF00"
  description = "Label used to mark low priority issues or tasks."
}

resource "github_issue_label" "ludicrum_label_bug" {
  repository = github_repository.ludicrum.name
  name       = "Bug"
  color      = "FF0000"
  description = "Label used to mark bug reports."
}

resource "github_issue_label" "ludicrum_label_feature" {
  repository = github_repository.ludicrum.name
  name       = "Feature"
  color      = "1E90FF"
  description = "Label used to mark feature requests."
}

resource "github_issue_label" "ludicrum_label_help_wanted" {
  repository = github_repository.ludicrum.name
  name       = "Help Wanted"
  color      = "8A2BE2"
  description = "Label used to mark issues where help is needed."
}
