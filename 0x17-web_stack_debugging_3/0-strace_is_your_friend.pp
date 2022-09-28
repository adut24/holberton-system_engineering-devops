# Webstack debugging 3
exec {'Correction of file':
  command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  provider => shell,
}
