---
title: Windows上Google Code 无法checkout的解决方法
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201304081235
tags:
  - Google
  - checkout
  - TortoiseSVN
---

突然在OSC上看到一篇关于代码风格的文章，其中就有Google的Styles，于是打开主页，结果相关内容托管在Google Code上，然后就有了以下提示：

>Use this command to anonymously check out the latest project source code:

>\# Non-members may check out a read-only working copy anonymously over HTTP.
svn checkout http://google-styleguide.googlecode.com/svn/trunk/ google-styleguide-read-only


结果按照提示，用TortoiseSVN来checkout，总是提示错误，没办法，上网搜了一遍，结果是：

- 如果你使用的是带命令行的SVN，直接输入，就能把代码下载下来；
- 如果你是Windows的用户，那么一般用的都是TortoiseSVN， 那么输入上面的URL不行，实际上只需要输入URL到trunk，如例中的：`http://google-styleguide.googlecode.com/svn/trunk/`即可。


亲自试验了一下，果然如此。


谨以记录和分享吧。