@echo off
:mainUI
cls
title ZpycuA Bat Rever 5.2
ECHO --------------------------
ECHO ZpycuA Bat Rever 5.2
ECHO --------------------------
ECHO 小贴士：在第一级子界面键入"exit"可退出。
ECHO.
ECHO 0.快捷应用
ECHO.
ECHO 1.系统操作
ECHO.
ECHO 2.网络操作
ECHO.
ECHO 3.设置

:mainCH
Set /p a=请选择功能：
If "%a%"=="0" goto linkUI
If "%a%"=="1" goto toolUI
If "%a%"=="2" goto webUI
If "%a%"=="3" goto setUI
If /I "%a%"=="debug" goto D
Echo [Error]The input value "%a%" is not defined.
wscript vbscript:msgbox("[Error]The input value is not defined.",16,"ZpycuA Bat Rever")
cls
goto mainUI

:linkUI
cls
title ZpycuA Bat Rever5.1\Link
ECHO --------------------------
ECHO ZpycuA Bat Rever 5.2\Link
ECHO --------------------------
ECHO.
ECHO 0.Windows 资源管理器       1.Windows 任务管理器
ECHO.
ECHO 2.Microsoft 管理控制台     3.辅助功能屏幕键盘
ECHO.
ECHO 4.Windows 命令处理程序     5.Windows 磁盘空间清理管理器
ECHO.
ECHO 6.DiskPart

:linkCH
Set /p a=请选择功能：
If "%a%"=="0" goto 0
If "%a%"=="1" goto 1
If "%a%"=="2" goto 2
If "%a%"=="3" goto 3
If "%a%"=="4" goto 4
If "%a%"=="5" goto 8
If "%a%"=="6" goto 11
If "%a%"=="exit" goto mainUI
Echo [Error]The input value "%a%" is not defined.
wscript vbscript:msgbox("[Error]The input value is not defined.",16,"ZpycuA Bat Rever")
cls
goto linkUI


:toolUI
cls
title ZpycuA Bat Rever5.1\Tool
ECHO --------------------------
ECHO ZpycuA Bat Rever 5.2\Tool
ECHO --------------------------
ECHO.
ECHO 0.HTML浏览器   1.任务列出
ECHO.
ECHO 2.清理缓存     3.磁盘修复
ECHO.
ECHO 4.用户管理     5.文件浏览
ECHO.
ECHO 6.管理员获得所有权   

:toolCH
Set /p a=请选择功能：
If "%a%"=="0" goto 5
If "%a%"=="1" goto 7
If "%a%"=="2" goto 9
If "%a%"=="3" goto 10
If "%a%"=="4" goto 12
If "%a%"=="5" goto 13
If "%a%"=="6" goto 15
If "%a%"=="exit" goto mainUI
Echo [Error]The input value "%a%" is not defined.
wscript vbscript:msgbox("[Error]The input value is not defined.",16,"ZpycuA Bat Rever")
cls
goto toolUI

:webUI
cls
title ZpycuA Bat Rever5.1\Web
ECHO --------------------------
ECHO ZpycuA Bat Rever 5.2\Web
ECHO --------------------------
ECHO.
ECHO 0.PING      1.远程关机

:webCH
Set /p a=请选择功能：
If "%a%"=="0" goto 6
If "%a%"=="1" goto 14
If "%a%"=="exit" goto mainUI
Echo [Error]The input value "%a%" is not defined.
wscript vbscript:msgbox("[Error]The input value is not defined.",16,"ZpycuA Bat Rever")
cls
goto webUI

:setUI
cls
title ZpycuA Bat Rever5.1\Set
ECHO --------------------------
ECHO ZpycuA Bat Rever 5.2\Set
ECHO --------------------------
ECHO.
ECHO 0.关于     1.帮助
ECHO.
ECHO 2.退出     3.检查更新
ECHO.
ECHO 4.个性化   5.权限检测
    
:setCH
Set /p a=请选择功能：
If "%a%"=="0" goto a
If "%a%"=="1" goto h
If "%a%"=="2" goto q
If "%a%"=="3" goto j
If "%a%"=="4" goto g
If "%a%"=="5" goto who
If "%a%"=="exit" goto mainUI

:0
start explorer
pause
goto linkUI

:1
start taskmgr
pause
goto linkUI

:2
start mmc
pause
goto linkUI

:3
start osk
pause
goto linkUI

:4
start cmd.exe
pause
goto linkUI

:Q
exit

:5
Set /p b=请输入URL：
start hh "%b%"
pause
goto toolUI


:6
Set /p c=请输入IP：
ping "%c%"
pause
goto webUI


:7
tasklist
pause
goto toolUI


:8
start cleanmgr
pause
goto linkUI

:H
echo ERROR.no help file!
Echo [Error]The input value "%a%" is not defined.
pause
goto setUI

:J
updata.exe
if %errorlevel% NEQ 0 PAUSE
if %errorlevel% NEQ 0 GOTO J1

:J1
echo 从下载
pause
goto setUI

:H.bak
echo ZpycuA Bat Rever
echo  关于
echo    ZpycuA Bat Rever是一款轻便的Windows管理工具，目前为bat-beta版本
echo    作者zjyAilmf
echo  用法
echo    在运行完成后，输入数字选项然后按Ender即可
echo  功能
echo    0.资源管理器
echo    1.任务管理器
echo    2.管理控制台
echo    3.虚拟键盘 
echo    4.高级设置
echo    5.浏览器
echo    6.PING
echo    7.任务列出
echo    8.磁盘清理
echo    9.清理缓存
echo    10.磁盘修复
echo    11.磁盘管理
echo    A.关于
echo    H.HELP
echo    Q.退出 
echo  开发者选项
echo    在主菜单运行''debug''以进入
echo    0.Back
echo    1.Command
echo    2.Settitle
echo    3.Run
echo    4.Checkversion 
echo  版本
echo    最新版本5.1
echo ---------------------------
echo     Copyright ? 2023 . All Rights Reserved. 
pause
goto setUI

:who
echo 当前ZpycuA Bat Rever可使用权限:
whoami
pause
goto setUI

:9
del /f /s /q %systemdrive%\*.tmp

del /f /s /q %systemdrive%\*._mp

del /f /s /q %systemdrive%\*.gid

del /f /s /q %systemdrive%\*.log

del /f /s /q %systemdrive%\*.chk

del /f /s /q %systemdrive%\*.old

del /f /s /q %windir%\*.bak

del /f /s /q %windir%\prefetch\*.*

del /f /q %userprofile%\recent\*.*

del /f /s /q %userprofile%\Local Settings\Temp\*.*

del /f /s /q %userprofile%\recent\*.*

pause
goto toolUI

:10
Set /p d=请输入盘符：
chkdsk "%d%" /f
pause
goto toolUI

:11
start diskpart
pause
goto linkUI

:12
Set /p t=请输入命令：
net user %t%
pause
goto toolUI

:13
Set /p e=请选择(1.列出 2.读取）：
If "%e%"=="1" goto 13.1
If "%e%"=="2" goto 13.2

:13.1
Set /p r=目录：
cd %r%
dir
pause
goto toolUI

:13.2
Set /p r=目录：
Set /p w=打开方式：
start %w% %r%
pause
goto toolUI

:14
start shutdown /i
pause
goto webUI


:A
winver
echo by zjyAilmf ZpycuA Bat Rever 5.2
pause
goto setUI

:15
set /p a=Press in filewhere:
takeown /f %a% && icacls %a% /grant administrators:F
pause
goto toolUI

:g
set /p color=Press in color:
color %color%
pause
goto setUI

:D
cls
title ZpycuA Bat Rever 5.2\DebugMode
ECHO --------------------------
ECHO ZpycuA Bat Rever 5.2\DebugMode
ECHO --------------------------
ECHO.
ECHO 0.Back           1.Command
ECHO.
ECHO 2.Settitle       3.Run
ECHO.
ECHO 4.Checkversion   5.Goto
ECHO. 
Echo 6.Variablelists
ECHO.
    
:ddesk
Set /p a=请选择功能：
If "%a%"=="0" goto mainUI
If "%a%"=="1" cmd
If "%a%"=="2" goto d2
If "%a%"=="3" goto d3
If "%a%"=="4" goto j
If "%a%"=="5" goto d5
If "%a%"=="6" goto d6
Echo ZpycuA Bat Rever运行时出错
Echo [Error]The input value "%a%" is not defined.
pause
goto D

:d2
Set /p b=Press in title：
title ZpycuA Bat Rever\%b%
pause
goto D

:d3
Set /p c=Press to run：
%c%
pause
goto D

:d5
Set /p f=Press in：
goto %f%
pause
goto D

:d6
Set /p w=Press in VariableName：
set %w%
pause
goto D
