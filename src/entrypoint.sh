#! /bin/sh


/run/openrc/softlevel
/sbin/openrc
rc-service apache2 restart
rc-service php-fpm7 restart
tail -f /dev/null
