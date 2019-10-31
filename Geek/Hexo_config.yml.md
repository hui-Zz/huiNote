```ini
# Hexo配置
## 文档: https://hexo.io/docs/configuration.html
## 源码: https://github.com/hexojs/hexo/
## hexo版本：hexo-cli: 1.1.0

# 网站
title: Hexo # 网站标题
subtitle: # 网站副标题
description: # 网站描述(SEO)
author: John Doe # 您的名字
language: # 网站使用的语言
timezone: # 网站时区

# 网址
## 如果你的网站放在子目录中，请将url设置为为'http://yoursite.com/child'，将根目录root设置为'/child/'
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://yoursite.com # 网址
root: / # 网站根目录
permalink: :year/:month/:day/:title/ # 文章的永久链接
permalink_defaults: # 永久链接中各部分的默认值

# 目录
source_dir: source # 资源文件夹，这个文件夹用来存放内容。
public_dir: public # 公共文件夹，这个文件夹用于存放生成的站点文件。
tag_dir: tags # 标签文件夹
archive_dir: archives # 归档文件夹
category_dir: categories # 分类文件夹
code_dir: downloads/code # include code文件夹
i18n_dir: :lang # 国际化（i18n）文件夹
skip_render: # 跳过指定文件的渲染，您可使用 glob 表达式来匹配路径。

# 文章
new_post_name: :title.md # 新文章的文件名称
default_layout: post # 预设布局
titlecase: false # 将标题转换为title case
external_link: true # 在新标签中打开外部链接
filename_case: 0 # 把文件名称转换为 (1) 小写或 (2) 大写
render_drafts: false # 显示草稿
post_asset_folder: false # 启动asset文件夹
relative_link: false # 把链接改为与根目录的相对位址
future: true # 显示未来的文章
highlight: # 代码块的设置
  enable: true # 启动设置
  line_number: true # 行号
  auto_detect: false # 自动检测
  tab_replace: # tab替换
  
# 主页设置
# path: Root path for your blogs index page. (默认 = '')
# per_page: Posts displayed per page. (0 = 关闭分页功能)
# order_by: Posts order. (默认情况下按日期降序排序)
index_generator: # 索引生成
  path: '' # 路径
  per_page: 10 # 每页展示文章数
  order_by: -date # 排序依据
  
# 分类 & 标签
default_category: uncategorized # 默认分类
category_map: # 分类别名
tag_map: # 标签别名     

# 日期 / 时间格式
## Hexo使用Moment.js来解析和显示日期
## 您可以按下面的文档描述自定义日期格式
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD # 日期格式
time_format: HH:mm:ss # 时间格式

# 分页 & 标签
## 将per_page设置为0可禁用分页
per_page: 10 # 每页显示的文章量 (0 = 关闭分页功能)
pagination_dir: page # 分页目录

# 拓展
## 插件：https://hexo.io/plugins/ #
## 主题：https://hexo.io/themes/
theme: landscape # 当前主题名称。值为false时禁用主题

# 部署
## 文档: https://hexo.io/docs/deployment.html
deploy: # 部署部分的设置
  type: # 网站类型
```