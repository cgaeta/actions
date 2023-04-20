#!/bin/sh -l

cd portfolio
npm i
npm run build
cd ..
mv "./portfolio/$1 ./page/dist"
git add .
git commit -m "update portfolio"
git push
