mock_provider "nexus" {}

run "creates_one_module_per_item" {
  command = plan

  variables {
    nexus_script = [
      {
        name    = "test-name-a"
        type    = "test-type-a"
        content = "test-content-a"
      },
      {
        name    = "test-name-b"
        type    = "test-type-b"
        content = "test-content-b"
      }
    ]
  }

  assert {
    condition     = length(module.nexus_script) == 2
    error_message = "nexus_script must create one nexus-script per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_script), k)])
    error_message = "nexus_script must be keyed by name"
  }

}

run "creates_nothing_by_default" {
  command = plan

  assert {
    condition     = length(module.nexus_script) == 0
    error_message = "nexus_script must be empty by default"
  }

}
