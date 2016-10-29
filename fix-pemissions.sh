#!/bin/sh

chgrp www-data -R /var/www/
find /var/www/ -type d -exec chmod 2775 {} +
find /var/www/ -type f -exec chmod 0664 {} +

