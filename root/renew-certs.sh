#!/bin/bash

cd /etc/letsencrypt/live-ecdsa/abyssproject.net/letmp
rm *
/etc/letsencrypt/letsencrypt-auto certonly -a webroot --email nicolas@abyssproject.net --webroot-path /var/www/wordpress/abyssproject.net/ --csr /etc/letsencrypt/live-ecdsa/abyssproject.net/csr-p384.der --renew-by-default --agree-tos
cat 0001* > ../chain.pem

cd /etc/letsencrypt/live-ecdsa/rss.nicolas-simond.com/letmp
rm *
/etc/letsencrypt/letsencrypt-auto certonly -a webroot --email nicolas@abyssproject.net --webroot-path /var/www/rss/ --csr /etc/letsencrypt/live-ecdsa/rss.nicolas-simond.com/csr-p384.der --renew-by-default --agree-tos
cat 0001* > ../chain.pem

cd /etc/letsencrypt/live-ecdsa/enter.thewhiterabbit.space/letmp
rm *
/etc/letsencrypt/letsencrypt-auto certonly -a webroot --email nicolas@abyssproject.net --webroot-path /var/www/ghost/enter.thewhiterabbit.space/ --csr /etc/letsencrypt/live-ecdsa/enter.thewhiterabbit.space/csr-p384.der --renew-by-default --agree-tos
cat 0001* > ../chain.pem


cd /etc/letsencrypt/live-ecdsa/nicolas-simond.com/letmp
rm *
/etc/letsencrypt/letsencrypt-auto certonly -a webroot --email nicolas@abyssproject.net --webroot-path /var/www/ghost/nicolas-simond.com/ --csr /etc/letsencrypt/live-ecdsa/nicolas-simond.com/csr-p384.der --renew-by-default --agree-tos
cat 0001* > ../chain.pem

service nginx reload