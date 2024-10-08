#Docker
dit() {
  docker exec -it $1 bash
}

#Git
gcho() {
  git checkout $1
}

#Javascript Build
js() {
  npm run $1
}

iw() {
  if [ -z "$1" ]
  then
    npm i && npm run watch
  else
    npm i && build=$1 npm run watch
  fi
}

id() {
  if [ -z "$1" ]
  then
    npm i && npm run dev
  else
    npm i && build=$1 npm run dev
  fi
}

#Laravel
ca() {
  art cache:clear && art config:clear && art clear-compiled && cda
 }

migrate-tenant() {
  if [ -z "$1" ]
  then
    echo "Tenant DB name required."
  else
    php artisan migrate:tenants --tenantdb=$1
  fi
}

m-sl() {
  migrate-main && migrate-test && art migrate:tenants && migrate-deliverability
}

pu() {
  if [ -z "$1" ]
  then
    phpunit
  else
    phpunit --filter $1
  fi
}

# Processes

kp() {
  if [ -z "$1" ]
  then
    echo "Process name required."
  else
    kill -9 `ps aux | grep $1 | awk '{print $2}'`
  fi
}

nbsave() {
  if [ -z "$1" ]
  then
    echo "URL required to save to newsboat."
  else
    echo $1 >> $DOTFILES_CONFIG/.newsboat/urls
    echo "$1 saved to newsboats urls file."
  fi
}
