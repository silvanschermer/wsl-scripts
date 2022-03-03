#!/bin/bash

# From https://github.com/squizlabs/PHP_CodeSniffer

# Check if composer is installed and exit if not
composer=$(dpkg -l | grep -i composer)

if [ "$composer" = "" ];
then
    echo "Composer not installed exiting..."
    exit 0
fi

## install codesniffer globally with composer
composer global require "squizlabs/php_codesniffer=*"

# create symlinks
sudo ln -s /home/silvan/.composer/vendor/bin/phpcs.phar /usr/local/bin/phpcs
sudo ln -s /home/silvan/.composer/vendor/bin/silvan/phpcbf.phar /usr/local/bin/phpcbf

exit 1