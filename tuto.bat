:Restart
echo off
title Mon jeu
cls
echo ***************************
echo     Trouve le nombre 0-100
echo  ********************
set /a Nba=%Random% %%100
set /a Nc=0

:Question
set /p Nb=votre nombre ?
set /a nc=nc+1
if %Nb% LSS %Nba% goto :PP
if %Nb% GTR %Nba% goto :PG
IF %Nb% == %Nba% goto :Win
echo Le nombre aleatoire est %Nba%
echo le nombre choisi est %Nb%
:PP
echo c'est plus....
goto :Question

:PG
echo c'est moins...
goto :Question

:Win
echo its winn... 
echo Nombre de tentatives %nc%  
pause>nul
goto :Restart