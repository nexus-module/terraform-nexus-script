# Nexus Script

This module allows you to create **Nexus Script as a global resource** and **individual Nexus Script resources.** For individual examples, see the usage snippets and [examples](https://github.com/nexus-module/terraform-nexus-script/tree/main/examples).

## Provider
You need use a [Nexus provider](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs).
```hcl
provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}
```

## Root module usage
`nexus-script`:

```hcl
module "nexus_script" {
  source  = "nexus-module/script/nexus/"

  nexus_script = [
    {
      name    = "create-repo-pypi-internal"
      type    = "groovy"
      content = "repository.createPyPiHosted('pypi-internal')"
    }
  ]
}
```

## Individual module usage

`nexus-script`:

```hcl
module "nexus_script" {
  source  = "nexus-module/script/nexus//modules/nexus-script"

  name    = "create-repo-pypi-internal"
  type    = "groovy"
  content = "repository.createPyPiHosted('pypi-internal')"
}
```

## Terraform Docs

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 2.0.0 |

### Providers

No providers.

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_script"></a> [nexus\_script](#module\_nexus\_script) | ./modules/nexus-script | n/a |

### Resources

No resources.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_script"></a> [nexus\_script](#input\_nexus\_script) | value | <pre>list(object({<br>    name    = string<br>    type    = optional(string)<br>    content = string<br>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_script_name"></a> [script\_name](#output\_script\_name) | The name of the script. |

## Authors

Module is maintained by [DevOps IA](https://github.com/devops-ia) with help from [these awesome contributors](https://github.com/nexus-module/terraform-nexus-script/graphs/contributors).
