---
title: Yii创建web应用
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201304042242
tags:
  - PHP
  - Yii
---

背景：前几天，一导师想让鄙人参加其实验室，进去开发点东西，粗略打听了一下，需要.net和PHP的基础，可惜鄙人不会，也就不了了之了。PHP倒是听说过，可是真的不会。本着虚心好学的态度，花了几十分钟看了看PHP的基本语法，只有一个感觉--天下的语言都是一般的模样。剩下的时间便胡乱的看看，花了点时间在自己的小本上搭建了一个简单的PHP+Apache+MySQL的开发环境（这个的过程改天再论）。


今天，有点无聊，于是乎整了点Yii的资料看看（其实，也是在论坛上看到有这么个PHP框架，有点印象），想着搭建个PHP的Webapp的demo玩玩。


搭建过程：

1）环境要求：

本人的为自己手动搭建的环境，主要配置如下：

- PHP：php-5.4.13-Win32-VC9-x86
- Apache Server：httpd-2.2.22-win32-x86-openssl-0.9.8t
- MySQL：mysql-installer-community-5.6.10.1

所有的环境的配置均手动已经调整好的，确保了可以启动web服务器的。

另外，下载一个Yii的框架包，我的是yii-1.1.13.e9e4a0.tar.gz，解压到任意目录下，待会就靠它给我们自动生成Webapp了。

2）主要步骤：

cmd进入windows的命令行模式，我的yii解压到D:\Workspace\yii-1.1.13.e9e4a0了，所以主要命令如下：

>\>D:

>D:\>cd Workspace\yii-1.1.13.e9e4a0

>D:\Workspace\yii-1.1.13.e9e4a0>cd framework

>D:\Workspace\yii-1.1.13.e9e4a0\framework>yiic webapp ../testapp/

>注释：此处的`yiic webapp ../testapp/`为创建命令，testapp为web应用名称，`../testapp/`为所要放至的目录

>Create a Web application under 'D:\Workspace\yii-1.1.13.e9e4\testapp'? [Yes|No] yes

>注释：选择yes后，开始创建应用

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/assets

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/css

>generate css/bg.gif

>generate css/form.css

>generate css/ie.css

>generate css/main.css

>generate css/print.css

>generate css/screen.css

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/images

>generate index-test.php

>generate index.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected

>generate protected/.htaccess

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/commands

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/commands/shell

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/components

>generate protected/components/Controller.php

>generate protected/components/UserIdentity.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/config

>generate protected/config/console.php

>generate protected/config/main.php

>generate protected/config/test.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/controllers

>generate protected/controllers/SiteController.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/data

>generate protected/data/schema.mysql.sql

>generate protected/data/schema.sqlite.sql

>generate protected/data/testdrive.db

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/extensions

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/messages

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/migrations

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/models

>generate protected/models/ContactForm.php

>generate protected/models/LoginForm.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/runtime

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/tests

>generate protected/tests/bootstrap.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/tests/fixtures

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/tests/functional

>generate protected/tests/functional/SiteTest.php

>generate protected/tests/phpunit.xml

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/tests/report

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/tests/unit

>generate protected/tests/WebTestCase.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/views

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/views/layouts

>generate protected/views/layouts/column1.php

>generate protected/views/layouts/column2.php

>generate protected/views/layouts/main.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/views/site

>generate protected/views/site/contact.php

>generate protected/views/site/error.php

>generate protected/views/site/index.php

>generate protected/views/site/login.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/protected/views/site/pages

>generate protected/views/site/pages/about.php

>generate protected/yiic

>generate protected/yiic.bat

>generate protected/yiic.php

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/themes

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/themes/classic

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/themes/classic/views

>generate themes/classic/views/.htaccess

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/themes/classic/views/layouts

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/themes/classic/views/site

>mkdir D:/Workspace/yii-1.1.13.e9e4/testapp/themes/classic/views/system

>Your application has been created successfully under 


好了，现在我们已经可以在D:/Workspace/yii-1.1.13.e9e4目录中发现testapp这个应用，更改下自己的Apache的配置，就可以在浏览器中看到自己的应用了。


3）总结：

由于我的开发环境是自己手动搭建的，关于php.exe的环境信息没有配置，所以创建时出现：“"php.exe"’ 不是内部或外部命令，也不是可运行的程序或批处理文件。”这样的错误，于是查了点资料，更改如下：

修改yiic.bat文件

打开yii安装目录d：/www/yii/framework/yiic.bat，yiic.bat有记事本打开有如下一行：

`if "%PHP_COMMAND%" == "" set PHP_COMMAND=php.exe`

修改如下：

`if "%PHP_COMMAND%" == "" set PHP_COMMAND=D:\Workspace\phpVC9\php.exe`

其中，D:\Workspace\phpVC9\php.exe为我的开发环境中的PHP绝度路径。