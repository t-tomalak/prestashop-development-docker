#!/bin/bash

prestashop='prestashop16'

curl -o app/${prestashop}.zip https://download.prestashop.com/download/releases/prestashop_${PRST_16_VERSION}.zip

cd app

unzip ${prestashop}.zip  'prestashop/*'
mv prestashop ${prestashop}
rm ${prestashop}.zip

cd ${prestashop}
php install/index_cli.php --domain=${prestashop}.localhost --db_server=mysql --db_name=${prestashop} --db_user=root --db_password=root --email=admin@admin.com --password=abcd1234 --name=${prestashop} --send_email=0 --db_create=1

rm -R install
mv admin admin736uauzo5
chmod -R 777 ./




