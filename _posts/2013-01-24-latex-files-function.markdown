---
title: LaTeX使用过程中的各种类型文件说明
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201301242201
tags:
  - LaTeX
---

最近没事在捣鼓LaTex，在网上看到诸多大牛都在用LaTex写个人简历，于是也就下载一个模板，结果发现自己那半吊子的LaTex水平实在烂的不行，发现很多文件都没见过。于是乎就在Internet上搜了一把，找了各种LaTex文件的说明。


在系统使用过程中会遇到各种类型的文件


后缀   | 用途
----- | -----
.afm  |  Adobe Type1字体描述文件，ASCII格式。
.bak  |  备份文件，当源文件.tex存盘时由系统自动创建。
.bib  |  文献数据库。
.bst  |  BiBTeX文献样式文件。
.cfg  |  供类包或宏包调用的配置文件。
.cls  |  稿件类型文件，可用命令\documentclass调用。
.doc  |  类包或宏包的说明文件。
.dtx  |  包含类或宏包及其说明文件的文件，需用同名.ins文件或docstrip工具分解。
.fd   |  字体定义文件，定义某一字族，用于LaTeX字体寻找。
.ins  |  同名.dtx的分解文件，用PDFLaTeX编译，可得到sty或cls等类型文件。
.map  |  字体名称与.tfm文件之间的字体映射文件。
.mbs  |  主控文件，包含全部 文献样式命令，用于生成.bst文献样式文件。
.mf   |  METAFONT字体描述文件，Knuth教授创立的矢量字体。
.pfa  |  Type 1字体文件，ASCII格式，一种高品质矢量字体，越放大越清晰。
.pfb  |  Type 1字体文件，二进制格式。
.pk   |  pk字体，一种点阵字体，用于dvi文件预览等。
.pl   |  字体属性列表，可读的字体描述文件。
.sfd  |  子字库定义文件。
.sty  |  宏包文件，可用命令\usepackage调用。
.tex  |  LaTeX源文件。
.tfm  |  字体描述文件，设定字体的宽、高和间距等，LaTeX用以规划页面。
.ttf  |  Truetype字体，Windows系统使用的一种全真字体。
.vf   |  TeX虚拟字体
.vpl  |  虚拟属性列表，可读的虚拟字体文件。

在源文件编译过程中创建的文件

后缀   | 用途
----- | -----
.aux  |   引用标记记录文件，用于再次编译时生成参考文献和超链接等。
.bbl  |   由BiBTeX编辑.bib后创建的文献文件，再次编译时带入源文件生成文献列表。
.blg  |   BiBTeX处理过程记录文件。
.dbj  |   批处理文件，由makebst工具在创建.bst文献样式文件时生成。
.dvi  |   由LaTeX对.tex源文件编译后创建的输出文件，含有字库信息。
.glo  |   术语标记记录文件，用于再次编译时生成术语表。
.idx  |   索引资料记录文件，可用makeindex排序后创建索引文件.ind。
.ilg  |   makeindex处理过程记录文件。
.ind  |   makeindex对.idx排序后创建的索引文件，再次编译时带入源文件生成索引。
.lof  |   图形标题记录文件，用于再次编译时生成图形目录。
.log  |   编译过程记录文件，记录编译时出现的提示、警告和错误信息。
.lot  |   表格标题记录文件，用于再次编译时生成表格目录。
.pdf  |   由PDFLaTeX对.tex或dvipdf对.dvi或pspdf对.ps编译后创建的图形文件。
.ps   |   由dvips对.dvi文件编译后创建的图形文件。
.toc  |   章节标题记录文件，用于再次编译时生成章节目录。