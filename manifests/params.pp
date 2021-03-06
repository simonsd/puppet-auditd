# == Class: auditd::params
#
# This class shouldn't be called directly
#
class auditd::params {
  $rules_file              = '/etc/audit/audit.rules'
  $immutable               = true
  $failure_mode            = '1'
  $log_file                = '/var/log/audit/audit.log'
  $log_format              = 'RAW'
  $log_group               = 'root'
  $priority_boost          = '4'
  $flush                   = 'INCREMENTAL'
  $freq                    = '20'
  $num_logs                = '4'
  $disp_qos                = 'lossy'
  $dispatcher              = '/sbin/audispd'
  $name_format             = 'NONE'
  $max_log_file            = '5 '
  $max_log_file_action     = 'ROTATE'
  $space_left              = '75'
  $space_left_action       = 'SYSLOG'
  $action_mail_acct        = 'root'
  $admin_space_left        = '50'
  $admin_space_left_action = 'SUSPEND'
  $disk_full_action        = 'SUSPEND'
  $disk_error_action       = 'SUSPEND'
  $tcp_listen_queue        = '5'
  $tcp_client_max_idle     = '0'
  $enable_krb5             = 'no'
  $krb5_principal          = 'auditd'
  $service_name            = 'auditd'
  $service_ensure          = 'running'
  $service_enable          = true
  $service_hasstatus       = true
  $service_hasrestart      = true
  $service_restart_command = undef
}
