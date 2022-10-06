# Advanced web stack #4
exec {'Change open file hard limit for holberton':
  command  => "sed -i 's/5/30000/g' /etc/security/limits.conf",
  provider => shell,
}

exec {'Change open file soft limit for holberton':
  command  => "sed -i 's/4/10000/g' /etc/security/limits.conf",
  provider => shell,
}
