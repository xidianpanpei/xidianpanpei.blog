::The purpose of this bat script is to auto-build the .markdown files.
::The variable of filedir is able to be setted accord to your own file direction.
@echo off
set filedir=D:\GitHub\xidianpanpei.github.io\_posts\
set uuid=21a47a54-fe0a-4caa-bc60-%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%

echo Please input the Blog Title:
set /p input_blog_title=
echo Please input the File Title:
set /p input_file_title=
set filename=%date:~0,4%-%date:~5,2%-%date:~8,2%-%input_file_title%

echo --->> %filedir%%filename%.markdown
echo title: %input_blog_title%>> %filedir%%filename%.markdown
echo layout: post>> %filedir%%filename%.markdown
echo guid: urn:uuid:%uuid%>> %filedir%%filename%.markdown
echo tags:>> %filedir%%filename%.markdown
echo   - >> %filedir%%filename%.markdown
echo --->> %filedir%%filename%.markdown
