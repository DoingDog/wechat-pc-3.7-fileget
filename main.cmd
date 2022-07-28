:: for wechat pc 3.7
:: put in xxxx\wxid_xxxx\FileStorage\
@echo off&color 0a&cd /d "%~dp0"
if exist Applet exit
if not exist MsgAttach exit
cd MsgAttach
dir /od/a-d/s/b/tw|findstr \File\>%temp%\natnatnat
for /f "delims=" %%i in ('type %temp%\natnatnat') do xcopy /d/y/c "%%i" ..\WechatFiles\|findstr [1-9]
if not exist ..\WechatFiles echo NO FILE&pause
echo SUCCESS&exit
