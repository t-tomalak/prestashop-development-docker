#!/bin/bash

prestashop='prestashop17'

curl -o app/${prestashop}.zip https://download.prestashop.com/download/releases/prestashop_${PRST_17_VERSION}.zip

cd app
unzip ${prestashop}.zip 'prestashop.zip' -d ${prestashop}
rm ${prestashop}.zip

cd ${prestashop}
unzip prestashop.zip

php install/index_cli.php --domain=${prestashop}.localhost --db_server=mysql --db_name=${prestashop} --db_user=root --db_password=root --email=admin@admin.com --password=abcd1234 --name=${prestashop}  --send_email=0 --db_create=1
rm -R install
mv admin admin736uauzo5
chmod -R 777 ./
