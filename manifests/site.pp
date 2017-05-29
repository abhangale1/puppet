node default { }

node 'linuxagent.example.com' {
  include lampserver
  include cron-puppet
}

node 'windowsagent.example.com' {
  include iisserver
  include cron-puppet
  include critical_policy
  include puppet-windows_updates-master
  }

  node 'sample-instance' {
    include New EC2_TestInstance
}