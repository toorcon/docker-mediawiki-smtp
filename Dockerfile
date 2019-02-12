FROM mediawiki:stable

RUN pear channel-update pear.php.net
RUN pear install net_smtp
RUN pear install mail
