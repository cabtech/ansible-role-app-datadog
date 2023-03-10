----
# ansible-role-app-datadog

## Purpose
Installs and enables a DataDog agent

## Required variables
| Name | Type | Description |
| ---- | ---- | ----------- |
| datadog_api_key | string | the value DataDog provide you when you signed up |

## Defaulted variables
| Name | Type | Value | Description |
| ---- | ---- |----- | ----------- |
| datadog_agent_enabled | Boolean | true | passed to systemd |
| datadog_agent_status | string | started | passed to systemd |
| datadog_arch | string | x86_64 | i386 is not supported |
| datadog_cfg_file | path | '{{datadog_etc_dir}}/datadog.yaml' | would only change if Datadog changed things |
| datadog_enable_disks | Boolean | true | choose whether to monitor disk usage |
| datadog_enable_docker | Boolean | false | choose whether to monitor Docker |
| datadog_enable_processes | Boolean | false | choose whether to monitor processes |
| datadog_enable_system_probe | Boolean | false | choose whether to monitor system |
| datadog_etc_dir | path | /etc/datadog-agent | would only change if Datadog changed things |
| datadog_group | username | dd-agent | would only change if Datadog changed things |
| datadog_handler | string | handler_restart_datadog | |
| datadog_keyring | UnixPath | /usr/share/keyrings/datadog-archive-keyring.gpg ||
| datadog_owner | username | dd-agent | would only change if Datadog changed things |
| datadog_pkg_dependencies | list(string) | see `defaults/main.yml` | things DD depends on |
| datadog_pkg_names | list(string) | see `defaults/main.yml` | main DD packages |
| datadog_pubkey_id | string | 382E94DE | DEPRECATED.  Was used for APT repo |
| datadog_repo_keys | list(URL) | see `defaults/main.yml` | repo keys we need to validate repo downloads |
| datadog_repo_url | FQDN| datadoghq.com | Used for YUM repo |
| datadog_state | Boolean | present | set to absent to uninstall |
| datadog_svc_name | string | datadog-agent | would only change if Datadog changed things |


## Optional variables
| Name | Type | Description |
| ---- | ----- | ----------- |
| datadog_tags | dict | Used to tag hosts in the Datadog console |

Also, if you add a dictionary called 'datadog' to host or group vars, its contents will be set as tags in Datadog

## Supported Distros
- Amazon Linux 2
- Ubuntu 18
- Ubuntu 22

## Untested, but should work
- CentOS 7 & 8 (if using systemd)
- RHEL 7 & 8 (if using systemd)
- Ubuntu 20

****
