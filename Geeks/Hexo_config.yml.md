```ini
# Hexo����
## �ĵ�: https://hexo.io/docs/configuration.html
## Դ��: https://github.com/hexojs/hexo/
## hexo�汾��hexo-cli: 1.1.0

# ��վ
title: Hexo # ��վ����
subtitle: # ��վ������
description: # ��վ����(SEO)
author: John Doe # ��������
language: # ��վʹ�õ�����
timezone: # ��վʱ��

# ��ַ
## ��������վ������Ŀ¼�У��뽫url����ΪΪ'http://yoursite.com/child'������Ŀ¼root����Ϊ'/child/'
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://yoursite.com # ��ַ
root: / # ��վ��Ŀ¼
permalink: :year/:month/:day/:title/ # ���µ���������
permalink_defaults: # ���������и����ֵ�Ĭ��ֵ

# Ŀ¼
source_dir: source # ��Դ�ļ��У�����ļ�������������ݡ�
public_dir: public # �����ļ��У�����ļ������ڴ�����ɵ�վ���ļ���
tag_dir: tags # ��ǩ�ļ���
archive_dir: archives # �鵵�ļ���
category_dir: categories # �����ļ���
code_dir: downloads/code # include code�ļ���
i18n_dir: :lang # ���ʻ���i18n���ļ���
skip_render: # ����ָ���ļ�����Ⱦ������ʹ�� glob ���ʽ��ƥ��·����

# ����
new_post_name: :title.md # �����µ��ļ�����
default_layout: post # Ԥ�貼��
titlecase: false # ������ת��Ϊtitle case
external_link: true # ���±�ǩ�д��ⲿ����
filename_case: 0 # ���ļ�����ת��Ϊ (1) Сд�� (2) ��д
render_drafts: false # ��ʾ�ݸ�
post_asset_folder: false # ����asset�ļ���
relative_link: false # �����Ӹ�Ϊ���Ŀ¼�����λַ
future: true # ��ʾδ��������
highlight: # ����������
  enable: true # ��������
  line_number: true # �к�
  auto_detect: false # �Զ����
  tab_replace: # tab�滻
  
# ��ҳ����
# path: Root path for your blogs index page. (Ĭ�� = '')
# per_page: Posts displayed per page. (0 = �رշ�ҳ����)
# order_by: Posts order. (Ĭ������°����ڽ�������)
index_generator: # ��������
  path: '' # ·��
  per_page: 10 # ÿҳչʾ������
  order_by: -date # ��������
  
# ���� & ��ǩ
default_category: uncategorized # Ĭ�Ϸ���
category_map: # �������
tag_map: # ��ǩ����     

# ���� / ʱ���ʽ
## Hexoʹ��Moment.js����������ʾ����
## �����԰�������ĵ������Զ������ڸ�ʽ
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD # ���ڸ�ʽ
time_format: HH:mm:ss # ʱ���ʽ

# ��ҳ & ��ǩ
## ��per_page����Ϊ0�ɽ��÷�ҳ
per_page: 10 # ÿҳ��ʾ�������� (0 = �رշ�ҳ����)
pagination_dir: page # ��ҳĿ¼

# ��չ
## �����https://hexo.io/plugins/ #
## ���⣺https://hexo.io/themes/
theme: landscape # ��ǰ�������ơ�ֵΪfalseʱ��������

# ����
## �ĵ�: https://hexo.io/docs/deployment.html
deploy: # ���𲿷ֵ�����
  type: # ��վ����
```