@ECHO OFF
echo MAKEBETA: started
echo - - - - - - - - - - - - - - -
call clearenv
call setenv %1
echo SETENV: build environment set for '%TIDDLYWIKI_RELEASE%'
echo - - - - - - - - - - - - - - -
call bldbeta  %TIDDLYWIKI_RELEASE%
echo - - - - - - - - - - - - - - -
call zip  %TIDDLYWIKI_RELEASE%
echo - - - - - - - - - - - - - - -
echo TEST: running BETA version comparison...
set TIDDLYWIKI_TEST=%CD%\test\beta.html
call test %TIDDLYWIKI_RELEASE% %2
echo - - - - - - - - - - - - - - -
echo MAKEBETA: done
