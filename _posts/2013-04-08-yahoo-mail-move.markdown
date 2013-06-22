---
title: 关于yahoo.com.cn邮箱导入Gmail邮箱验证异常的机制解析及解决办法
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-20130404869aa
tags:
  - 碎碎念
  - Gmail
  - Yahoo
  - 邮箱
---

一大早起来，突然就发现雅虎中国的邮箱要关停了，阿里巴巴居然都发了最后通牒了。吐槽一下，国际互联网企业来天朝之后，似乎就没有一个活的很好的，ebay被淘宝赶出了天朝，Google被度娘赶走了，Facebook之流，根本就过不了天朝的长城。虽说Yahoo中国很早就被阿里收购了，可一直也不受什么待见。如今，首先拿邮箱开刀了，Yahoo中国终于也开始了从天朝消失的序幕了。


一直用Yahoo的邮箱好几年了，前前后后虽然也注册遍了市场主流的邮箱，但还是一直主要在用Yahoo的邮箱，如今突然宣布停止服务了，不得不说，真的很坑爹啊。花了一上午的时间，把以前能记起来的用yahoo.com.cn注册的网站的邮箱都改了一遍，纠结啊，更纠结的是，居然还有些网站把邮箱作为了认证ID，改不了。剩下的那些想不起来的网站，只能以后慢慢改了。


言归正传，Yahoo邮箱的那些信件总不能丢了吧，于是打算导入到Gmail邮箱（那些支持POP功能的邮箱都是可以导入Gmail的，Yahoo邮箱以前似乎要自己特别设置的，现在好像阿里为了迁移，开放了POP功能了），可是其中就是遇到了麻烦，一直提示密码无法验证。开始以为是自己把密码输错了，可是后来试了n多次，还是提示同样的错误。


网上逛了一圈，还是没找到什么有价值的解决方案。倒是发现Gmail的这个导入功能采用的是POP获取的技术，其实在Outlook、ThunderBird、Foxmail这些邮件客户端中，用的就是这种方式，既然如此，就明白了为什么一直提示密码错误了。


Yahoo邮箱一直用了一个很奇怪的域名，它的POP服务器是：`pop.mail.yahoo.com.cn`，SMTP服务器是：`smtp.mail.yahoo.com.cn`，这个和其他邮箱是有区别的，例如：网易126邮箱，POP服务器是：`pop.126.com`，SMTP服务器是：`smtp.126.com`，相信大家应该明白这其中的区别了，主流邮箱都是用户+@+服务器域名，如网易126邮箱为`example@126.com`，而Yahoo邮箱的标准格式也是：`example@yahoo.com.cn`，但它的服务器域名却是`mail.yahoo.com.cn`，因此，就有了如下猜想：只要Gmail想用POP方式去`yahoo.com.cn`上收取邮件，可是它却用`pop.yahoo.com.cn`的域名去获取，可是这个服务器到底是不是存在，天知道，就算存在，也不存在我们的邮箱啊，所以一直提示密码验证错误。


既然已经知道错误的原因所在，于是，如果我们的邮箱是`username@yahoo.com.cn`，我们就在导入过程中填入`username@mail.yahoo.com.cn`，如图示：

<span class="img-800">![](/media/files/2013/04/08/yahoo-move-step1.png "步骤一")</span>

试了果然有效果了，没有再提示验证错误了，直接进入下图：

<span class="img-600">![](/media/files/2013/04/08/yahoo-move-step2.png "步骤二")</span>

输入咱的邮箱密码就有了：

<span class="img-600">![](/media/files/2013/04/08/yahoo-move-step3.png "步骤三")</span>

离成功就一步之遥了，上图中还是有个错误，就是那个POP server：`mail.mail.yahoo.com.cn`，我们将其改成真正的POP server：`pop.mail.yahoo.com.cn`，然后就一路continue吧。


OK，任务就此完成，邮件导入成功。