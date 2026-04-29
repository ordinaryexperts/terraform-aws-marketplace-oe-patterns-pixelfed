# Unreleased

# 2.1.0

* Upgrading to OE Pixelfed Pattern 2.1.0 (Pixelfed v0.12.7)
* Add `asg_data_volume_backup_retention_period`, `asg_data_volume_backup_vault_arn`, and `asg_disk_usage_alarm_threshold` variables for the new CFN parameters in 2.1.0
* Add `asg_data_volume_backup_vault_arn_output` output
* Fix `mastodon_login_max_uses_limit` variable type from `bool` to `number` (the CFN parameter is numeric)
* Refresh test cert ARN to the unexpired one used by the other terraform modules

# 2.0.0

* upgrade to OE Pixelfed Pattern 2.0.0 (Pixelfed v0.12.4)
* add testing

# 1.1.0

* upgrade to OE Pixelfed Pattern 1.1.0

# 0.1.2

* use bool for variables

# 0.1.1

* Fix duplicate variable

# 0.1.0

* Initial module development
