## Prestashop development env

List of supported prestashop versions:

1. Prestashop 1.7.3.1
1. Prestashop 1.6.1.18 

## Requirements

1. Docker
1. Make

## Installation

1. Automatic build
        
        make init_all // !!command clears all previous data and containers!!
        
1. Manual process
    1. Build and run `docker-compose` by using
    
        make start_docker
        
    1. Chose version of prestashop
        1. Prestashop 1.7 - `make init_prest17`
        1. Prestashop 1.6 - `make init_prest16`
        1. All prestashops - `init_prest_all`
    
## Access

1. Credentials - `admin@admin.com/abcd1234`
1. Prestashop 1.6

        url   - http://prestashop16.localhost
        admin - http://prestashop16.localhost/admin736uauzo5

1. Prestashop 1.7

        url   - http://prestashop17.localhost
        admin - http://prestashop17.localhost/admin736uauzo5

## After installation

If you are using Linux you can append you host file using

    make append_hosts