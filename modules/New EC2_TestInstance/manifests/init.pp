ec2_securitygroup { 'sample-group':
  ensure      => present,
  region      => 'us-west-1',
  description => 'Group used for testing Puppet AWS module',
}

ec2_instance { 'sample-instance':
  ensure            => present,
  region            => 'us-west-1',
  availability_zone => 'us-west-1a',
  image_id          => 'ami-696e652c',
  instance_type     => 't1.micro',
  security_groups   => ['sample-group'],
}