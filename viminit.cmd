@echo off

rem ========================================
rem setup the vim bundle manager first 
rem ========================================

IF NOT DEFINED HOME (
  echo Error: env variable HOME NOT defined!
  exit /B 1
)
echo.
echo Home dir is: %HOME%

SET target_dir=%HOME%\.vim\bundle\vundle
IF NOT EXIST %target_dir% (
  echo.
  echo Install vundle to %target_dir% ...
  echo.
  mkdir %target_dir%
  git clone https://github.com/gmarik/vundle.git %target_dir%
) ELSE (
  echo.
  echo NOTE: target dir:%target_dir% already exists, skip installing vundle ...
)

rem ========================================
rem get our global vim config file 
rem ========================================

echo. 
echo Generating %HOME%\.vimrc ...
echo. 
copy dot.vimrc %HOME%\.vimrc

echo Done.

@echo on
