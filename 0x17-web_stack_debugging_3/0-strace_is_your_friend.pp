# find out why Apache is returning a error
# fixes bad phpp extension to php

$update_file = '/var/www/html/wp-settings.php'

exec { 'fixed-phpp':
    command => "sed -i 's/phpp/php/g' ${update_file}",
    path    => ['/bin', '/usr/bin']
}
