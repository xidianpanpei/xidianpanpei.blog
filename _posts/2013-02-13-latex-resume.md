---
title: 利用LaTeX制作个人简历
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201302130230
tags:
  - LaTex
  - Resume
  - 简历
---

前些日子，有点无聊，就在网上逛逛技术大牛的blogs，发现很多大牛都喜欢用pdf版式的简历，发现这种版式的简历排版非常漂亮简洁。深究了一下，发现其实是利用LaTeX生成的（多说一句，不得不佩服*DonaldE.Knuth*大师发明的TeX排版的确是美观）。


LaTeX或许不是很多人知道，但是那些忙着发papers的Master Candidate、Ph.D Candidate应该是非常了解的。当然，那些苦逼的数学系的孩子们应该也是知道，因为word对于数学公式的排版效果相比于LaTeX，还是差的远了。至于LaTeX的具体信息，这里就不废话，有兴趣的同学可以到Google上百度一下的。


言归正传，LaTeX写简历谈何容易，尤其是从头写起，还尤其对于我这样的LaTeX菜鸟而言，更是难如登天。于是Google了一把，找到一个叫`moderncv`的共享简历模板。有了模板，那么就简单多了（插嘴一句，其实发现有些大牛用的也是这个模板改写的）。


moderncv下载地址：[http://www.ctan.org/tex-archive/macros/latex/contrib/moderncv][1]


下载下来后应该是一个zip包，解压后目录如下：

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-1.png)</span>

其中.sty文件都是定义简历风格的文件，还有那个`moderncv.cls`文件。其实这些都是编写LaTeX风格源码后生成的，有兴趣的同学可以继续深究一下LaTeX的其他知识，应该会有所收获的。这些文件在后我们编译自己的简历时会用到。


接下来看看examples文件夹：

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-2.png)</span>


好了，这里面东西也很多，稍微懂点LaTeX的同学就会知道，其实，只有那几个.tex文件使我们想要的，而且也是非常重要的。为什么？因为那些个文件就是模板啊。我们的简历的生成就靠它们了。


`.tex`文件有三个：`template.tex`，`template-es.tex`，`template-zh.tex`，顾名思义，这个三个模板表示中英文简历的模板，其实`template.tex`就是英文模板，而`template-es.tex`是什么语种的模板，我也不知道，反正不是英文模板。


好了，剩下就是开始写我们的简历了，我们先建立一个文件夹，如MyCV之类的啦，然后把前面提到的`.sty`文件、`.cls`文件还有`.tex`的模板文件放进去。就像下面：

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-3.png)</span>

把模板文件的名字改成个人喜好的都可以的，如我就改成了`my_cv_en.tex`和`my_cv_en.tex`。剩下来我们就开始对我们的简历模板开始编辑了，我是用的NotePad++，当然大家可以用其他的编辑器，如WinEdt、Texmaker，甚至你可以用word，txt等等，当然我是既不赞成后两者的，尤其txt，当你使用后，就会对那一对没有高亮显示，没有缩进的代码抓狂的。


这个是我用Notepad++打开的`template.tex`的文档，效果还是可以的。

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-4.png)</span>


好了，如何改写这堆代码，其实挺容易的，模板中有着那么多的注释，很好的改的（好吧，我有点偷懒，这个以后再介绍）。


等我们改好个人信息后，剩下来就是编译了。


我用的是CTex的套装，然后利用WinEdt来编译，这个的确是有点偷懒了，不过可视化的界面的确是方便啊。用WinEdt打开我们编辑的`.tex`文件就可以了，当然，也可以用这个编辑器去编辑.tex文件。


CTex下载地址：[http://www.ctex.org/HomePage][2]


CTex中其实就包含有WinEdt。

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-5.png)</span>

英文模板直接用那个LaTeX按钮编译，中文模板涉及到编码问题，用那个XeLaTeX按钮。只要中间我们没有写错什么语句之类的，接下来我们就可以在文件夹中，如MyCVS，看到生成的pdf文件。排版效果相当的不错滴。


模板风格有好几个，如casual(default), classic, oldstyle 以及banking，还有颜色也有几种，blue(default), orange, green, red, purple, grey 和black。具体的要求可以根据注释自行搭配。


blue-casual

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-6.png)</span>

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-7.png)</span>

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-8.png)</span>

其他几种风格：

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-9.png)</span>

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-10.png)</span>

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-11.png)</span>

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-12.png)</span>

<span class="img-800">![](/media/files/2013/02/13/latex-resume-step-13.png)</span>


[1]:http://www.ctan.org/tex-archive/macros/latex/contrib/moderncv
[2]:http://www.ctex.org/HomePage