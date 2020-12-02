@echo off



set incs=-DNDEBUG -DWIN32 -Izlib -DWINDOWS 

set opts= -fomit-frame-pointer 
rem -fno-stack-protector -fno-stack-check -fno-check-new

rem -flto -ffat-lto-objects -Wl,-flto -fuse-linker-plugin -Wl,-O -Wl,--sort-common -Wl,--as-needed -ffunction-sections
rem -fprofile-use -fprofile-correction  -fwhole-program 

rem set gcc=C:\MinGW\bin\g++.exe
rem set gcc=C:\MinGW\bin\g++.exe
set gcc=C:\mingw\bin\g++.exe
set path=%gcc%\..\



%gcc%\..\gcc.exe -c -march=k8 -O9 %incs% %opts% @list_c

%gcc% -s -march=k8 -O9 %incs% %opts% @list_cpp @list_o -static -o paq8pxd64.exe
rem -std=gnu++1z

del *.o
pause


