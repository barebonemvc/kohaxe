set KOHANA_ROOT=%CD%\platforms\kohana
set KOHANA_APPPATH=%KOHANA_ROOT%\application
set KOHANA_MODPATH=%KOHANA_ROOT%\modules
set KOHANA_SYSPATH=%KOHANA_ROOT%\system
set KOHANA_LIBS=%KOHANA_ROOT%\lib

set DIR_CONTROLLERS=%KOHANA_APPPATH%\classes\Controller
set DIR_MODEL=%KOHANA_APPPATH%\Model
set OUTPUT=%CD%\output
set CLASSPATH=%CD%\haxe

set MY_APPPATH=%CLASSPATH%\application
set OUT_CONTROLLERS=%OUTPUT%\lib\controller
set OUT_MODELS=%OUTPUT%\lib\model
set DIR_DEPLOY=C:\xampp\htdocs\kohana


set BACK=%CD%
cd %MY_APPPATH%

haxe -cp %CLASSPATH% controller.Welcome -php %OUTPUT%
robocopy %OUT_CONTROLLERS% %DIR_CONTROLLERS% /E

robocopy %OUTPUT%\lib\php %KOHANA_LIBS%\php /E

robocopy %KOHANA_ROOT% %DIR_DEPLOY% /E

cd %BACK%
