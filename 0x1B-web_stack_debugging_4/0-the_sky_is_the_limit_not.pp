#Web stack debugging #4
exec {'Changing open file limit for Nginx':
  notify   => Service['nginx'],
  command  => "sed -i 's/15/30000/g' /etc/default/nginx",
  provider => shell,
}

service {'nginx':
  ensure => 'running',
  enable => true,
}
