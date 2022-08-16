# Install and configure Nginx
package {'nginx':
  install_options => '-y',
}

file {'Configure the home page':
  ensure    => 'present',
  path      => '/var/www/html/index.nginx-debian.html',
  content   => 'Hellow World\n'
}

file_line {'Redirection':
  path  => '/etc/nginx/sites-available/default',
  after => 'server_name _;',
  line  => 'location /redirect_me { rewrite ^ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent; }',
}

service { 'nginx':
  ensure  => 'running',
  require => Package['nginx'],
}
