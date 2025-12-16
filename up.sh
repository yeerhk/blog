#!/bin/bash

# 1. 先生成并部署博客网站（给别人看的）
echo "正在生成并部署博客..."
hexo clean
hexo g
hexo d

# 2. 再备份源码到 GitHub（给自己存档的）
echo "正在备份源码..."
git add .
git commit -m "update blog"
git push

echo "搞定！博客已更新，源码已备份！"
