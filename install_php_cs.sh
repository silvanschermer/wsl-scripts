#!/bin/bash
# From https://github.com/squizlabs/PHP_CodeSniffer

wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar

composer global require "squizlabs/php_codesniffer=*"
sudo ln -s /home/silvan/.composer/vendor/bin/phpcs.phar /usr/local/bin/phpcs
sudo ln -s /home/silvan/.composer/vendor/bin/silvan/phpcbf.phar /usr/local/bin/phpcbf