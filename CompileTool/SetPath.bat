set ROOT=F:\commtool\
set ITEMPATH=%ROOT%%1

set COMPLIER_PATH=%ROOT%ProjectPath.ini


FOR /f "tokens=1,2 delims==" %%i in (%ITEMPATH%) DO (set %%i=%%j)