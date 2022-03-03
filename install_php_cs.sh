#!/bin/bash
# From https://github.com/squizlabs/PHP_CodeSniffer

composer global require "squizlabs/php_codesniffer=*"
sudo ln -s /home/silvan/.composer/vendor/bin/phpcs.phar /usr/local/bin/phpcs
sudo ln -s /home/silvan/.composer/vendor/bin/silvan/phpcbf.phar /usr/local/bin/phpcbf

