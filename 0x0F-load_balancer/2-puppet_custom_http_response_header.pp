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

file {'Configure the home page':
  ensure  => 'present',
  path    => '/var/www/html/index.nginx-debian.html',
  content => 'Hello World'
}

file {'Configure the page for the error 404':
  ensure  => 'present',
  path    => '/var/www/html/404.html',
  content => 'Ceci n\'est pas une page',
}

file_line {'Redirection':
  ensure  => 'present',
  path    => '/etc/nginx/sites-available/default',
  after   => 'server_name _;',
  line    => 'location /redirect_me { rewrite ^ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent; }',
  require => Package['nginx'],
}

file_line {'error page':
  ensure  => 'present',
  path    => '/etc/nginx/sites-available/default',
  after   => 'server_name _;',
  line    => 'error_page 404 /404.html;',
  require => Package['nginx'],
}

file_line {'error page redirection':
  ensure  => 'present',
  path    => '/etc/nginx/sites-available/default',
  after   => 'error_page 404 /404.html;',
  line    => 'location /404 { root /var/www/html; internal; }',
  require => Package['nginx'],
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
