FROM mediawiki:stable

RUN pear install mail && pear install net_smtp