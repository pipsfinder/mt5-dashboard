@echo off

:loop

echo Copying trades.json...

copy "C:\Users\ADM\AppData\Roaming\MetaQuotes\Terminal\Common\Files\trades.json" "C:\Users\ADM\Documents\GitHub\mt5-dashboard\trades.json" /Y

echo Switching to GitHub folder...

cd /d "C:\Users\ADM\Documents\GitHub\mt5-dashboard"

echo Adding file...

git add trades.json

echo Committing...

git commit -m "auto update"

echo Pushing...

git push origin main --force

echo Done. Waiting 5 seconds...

timeout /t 5

goto loop