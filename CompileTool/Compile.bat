set LogFile=%LogFileIn%\%date:~0,4%%date:~5,2%%date:~8,2%\

if not exist %LogFile% md %LogFile%
FOR /F "tokens=1,2 delims==" %%i in (%COMPLIER_PATH%) DO (
set %%i=%%j
        FOR /F "delims=" %%k in ('dir /B %ROOT%\ProjectConfig *Config*.ini') DO (
        set CONFIG=%%k
           FOR /F "tokens=1,2,3 delims=:" %%l in (%ROOT%\ProjectConfig\%%k) DO (

           if %%l==vc6 (
           "%CompilePath6%\MSDEV.com" %%j\%%m /make %%n /Rebuild /out %LogFile%compiler6.log)
           if %%l==vc7 (
           "%CompilePath7%\devenv.com" %%j\%%m  /Rebuild %%n /out %LogFile%compiler7.log)
           if %%l==vc8 (
           "%CompilePath8%\devenv.com" %%j\%%m  /Rebuild %%n /out %LogFile%compiler8.log)
           if %%l==vc9 (
           "%CompilePath9%\devenv.com" %%j\%%m  /Rebuild %%n /out %LogFile%compiler9.log)
           if %%l==vc10 (
           "%CompilePath10%\devenv.com" %%j\%%m  /Rebuild %%n /out %LogFile%compiler10.log)
           )
           
       )
)

echo %CONFIG%
echo %l%
echo %m%
echo off
echo *************************±‡“ÎÕÍ≥…*****************************