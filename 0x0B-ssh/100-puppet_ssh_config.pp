# Modify the /etc/ssh/ssh_config file
file_line { 'Modify an existing line':
  path   => '/etc/ssh/ssh_config',
  match  => '#   PasswordAuthentication yes',
  line   => '    PasswordAuthentication no',
}

file_line { 'Add a line':
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
