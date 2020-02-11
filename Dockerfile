FROM mediawiki:stable

# zip utilities
RUN apt-get update && apt-get install -y zip unzip && rm -rf /var/lib/apt/lists/*

# install SMTP
RUN pear channel-update pear.php.net
RUN pear install net_smtp
RUN pear install mail

# install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# install semantic
RUN composer require "mediawiki/semantic-media-wiki:~3.1.4"
RUN composer update --no-dev

