AutoCompileTools
================

Windows平台下对项目进行自动编译多个VS版本，并打包发布（需要编译环境中集成所编译的VS版本的编译器）
例如：
配置项目路径SourcePath=C:\Users\ya\Documents\GitHub\OfficeOperation
配置编译器路径和日志生成路径
::配置文件所在目录
ROOT=F:\cootoo

::编译日志保存路径

LogFileIn=F:\cootoo\CompileTool\BulidLogOfAuto

::[CompilerPath]
::vc6.0
CompilePath6=G:\Program Files\Microsoft Visual Studio\Common\MSDev98\Bin

::vc9.0

CompilePath9=G:\Program Files\Microsoft Visual Studio 9.0\Common7\IDE

在SetConfigOfficeOperation.ini中配置编译方式

vc8:OfficeOperation.sln:"Release|win32"
vc8:OfficeOperation.sln:"UNICODE Release|win32"
vc8:OfficeOperation.sln:"Debug|win32"
vc8:OfficeOperation.sln:"UNICODE Debug|win32"

vc9:OfficeOperation.sln:"Release|win32"
vc9:OfficeOperation.sln:"UNICODE Release|win32"
vc9:OfficeOperation.sln:"Debug|win32"
vc9:OfficeOperation.sln:"UNICODE Debug|win32"
