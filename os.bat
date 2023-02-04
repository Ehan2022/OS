@echo off
color 0f
cls

:bootscreen
cls
set /p password= Enter Your Password: 
if %password% == ehan409l@Pro! goto desktop
if not %password% == ehan409l@Pro! goto bootscreentwo
:escreen
cls
color 0f
cls
echo You exited the OS!!!!!!!
echo But you can go back
echo 1)Go to desktop
set /p mselect= 
if %mselect% == 1 goto desktop
:desktop
cls
color 0f
cls
echo Welcome IBTISAM EHAN
echo.
echo Date: %date% Time: %time%
echo Here are your options in your own OS!!:
echo 1)Write text file.
echo 2)Documents...
echo 3)Calculator...
echo 4)Exit
set /p menuselect=
if %menuselect% == 1 goto write
if %menuselect% == 2 goto browse
if %menuselect% == 3 goto calculator
if %menuselect% == 4 goto bootscreen

:write
cls
echo Welcome to Write, an application which let's you write text files...
echo What will be the name of your text?
set /p writeone= Name:
cls
echo Ok, your file has been created. Have fun!
pause
cls
set /p textone=
pause
echo Ok, now your done, you will be redirected to the desktop...
pause
goto desktop

:calculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto desktop

:browse
cls
echo 1)%writeone%
echo 2)%writetwo%
echo 3)%writethree%
set /p browse= 
if %browse% == 1 goto textone
if %browse% == 2 goto texttwo
if %browse% == 3 goto textthree

:textone
cls
echo %writeone%
echo %textone%
pause
goto desktop

:texttwo
cls
echo %writetwo%
echo %texttwo%
pause
goto desktop

:textthree
cls
echo %writethree%
echo %textthree%
pause
goto desktop


:bootscreentwo
cls
color 0f
echo Ooops, That was wrong passcode
echo Here are your options
echo 1)Admin Login!
echo 2)Guest login!
set /p logintype=
if %logintype% == 1 goto bootscreen
if %logintype% == 2 goto ltddesktop

:ltddesktop
cls
echo Hello there, you are logged in as a guest, you do not have permission to create or browse through text files...
echo.
echo But You can use the standard tools such as: The calculator and the clock...
echo.
echo Have fun!
pause
cls
echo 1)Calculator!
echo 2)Clock
echo 3)Exit 
set /p ltdmenu=
if %ltdmenu% == 1 goto ltdcalculator
if %ltdmenu% == 2 goto clock
if %ltdmenu% == 3 goto bootscreen

:clock 
cls
echo %date% %time%
pause
goto ltddesktop

:ltdcalculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto ltddesktop
goto ltddesktop