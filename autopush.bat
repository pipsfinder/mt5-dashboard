:loop

copy "C:\Users\ADM\AppData\Roaming\MetaQuotes\Terminal\Common\Files\trades.json" "C:\Users\ADM\Documents\GitHub\mt5-dashboard\trades.json" /Y

cd "C:\Users\ADM\Documents\GitHub\mt5-dashboard"

git add trades.json
git commit -m "auto update"
git push origin main --force

timeout /t 5

goto loop