#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 构建
#npm run docs:build
vuepress build docs

# 进入生成的构建文件夹
cd docs/.vuepress/dist

# 部署到自定义域名
echo 'doc.dreamyao.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果你想要部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git push -f git@github.com:brucelong80/brucelong80.github.io.git master

# 如果你想要部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -