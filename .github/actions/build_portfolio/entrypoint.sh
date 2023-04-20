#!/bin/sh -l

ls
npm -v
yarn -v
cd portfolio
npm i
npm run build
cd ..
mv "./portfolio/$1" ./page/dist
cd page
git add .
git commit -m "update portfolio"
git push
