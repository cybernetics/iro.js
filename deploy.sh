#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
echo 'iro.js.org' > CNAME

git init
git add -A
git commit -m 'deploy iro.js.org'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:jaames/iro.js.git master:gh-pages

cd -