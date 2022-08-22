# Install and configure Nginx
exec { 'update':
  command => 'apt update',
  path    => '/usr/bin/',
}

package {'nginx':
  ensure  => 'present',
  name    => 'nginx',
  require => Exec['update'],
}

file_line {'Custom header':
  ensure  => 'present',
  path    => '/etc/nginx/sites-available/default',
  after   => 'server_name _;',
  line    => 'add_header X-Served-By $hostname;',
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => 'running',
  require => Package['nginx'],
}
