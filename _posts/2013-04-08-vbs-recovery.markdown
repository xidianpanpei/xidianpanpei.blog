---
title: Windows中.vbs文件恢复默认打开方式的解决方法
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201304082350
tags:
  - vbs
  - Windows
---

由于前些日子的操作失误，将vbs文件的默认打开方式改成了notepad++，结果vbs的脚本都不能执行了。结果今天安装PostgreSQL死活装不上，总是提示错误。最后查来查去，问题还是出在vbs文件的默认打开方式上，Google了半天，查到的总是以下两种解决方式：


1. 执行以下命令:

`rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %windir%\inf\wsh.inf`

2. 执行以下命令:

`reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.vbs\" /f`


但是实际结果却是都是不行，没办法，又是找了半天，终于找到一种办法试验成功。首先，“开始”->regedit，打开注册表，删除`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.vbs\`下的所有注册信息；接着，从其他电脑的`C:\Windows\System32\`目录下拷贝`wscript.exe`，将自己电脑中的`wscript.exe`文件删除，然后再将拷贝过来的`wscript.exe`复制进入自己电脑的`C:\Windows\System32\`目录下；然后，将以下代码：

    Windows Registry Editor Version 5.00
	[HKEY_CLASSES_ROOT\.VBS]
	@="VBSFile"

	[HKEY_CLASSES_ROOT\.VBS\PersistentHandler]
	@="{5e941d80-bf96-11cd-b579-08002b30bfeb}"

	[HKEY_CLASSES_ROOT\VBSFile\Shell]
	@="Open"

保存在`recover.reg`的文件中（文件名称任意取，如recover），执行该文件。


最后，.vbs文件就恢复了默认打开方式。


>注：重启系统后，就可以看到vbs文件恢复默认的图标，否则还是之前的图标。