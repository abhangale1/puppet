node default { }

node 'linuxagent.example.com' {
  include lampserver
  include cron-puppet
}

node 'windowsagent.example.com' {
  include iisserver
  include cron-puppet
  include critical_policy
  }
