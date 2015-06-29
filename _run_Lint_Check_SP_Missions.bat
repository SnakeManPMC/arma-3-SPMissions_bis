@echo off
if exist log.txt del log.txt
for /f %%a IN (_list.txt) do (
d:\tools\mikero\rapify -L %%a\description.ext >>log.txt
d:\tools\mikero\rapify -L %%a\mission.sqm >>log.txt
)
pause
exit
