mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    content = "test-content"
    name    = "test-name"
    type    = "test-type"
  }

  assert {
    condition     = nexus_script.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_script.main.type == var.type
    error_message = "type does not match var.type"
  }

  assert {
    condition     = nexus_script.main.content == var.content
    error_message = "content does not match var.content"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    content = "test-content"
    name    = "test-name"
  }

  assert {
    condition     = nexus_script.main.name == var.name
    error_message = "name does not match var.name"
  }

}
