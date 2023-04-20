#!/bin/sh -l

ls
ls portfolio
cd portfolio
npm i
npm run build
cd ..
mv "./portfolio/$1" ./page/dist
ls page
ls -al page/dist
cd page
git config user.email 'cgaeta@users.noreply.github.com'
git config user.name 'cgaeta'
git commit -am "update portfolio"
git push
