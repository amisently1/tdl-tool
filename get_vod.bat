@echo off
set /p vodid="Enter VOD ID: "
set /p startTrim="Start cut (seconds): "
set /p endTrim="End cut (seconds): "
tdl videodownload --id %vodid% -o %vodid%.mp4 -e %endTrim% -b %startTrim%
tdl chatdownload --id %vodid% -o %vodid%_chat.json -e %endTrim% -b %startTrim%
tdl chatrender -i %vodid%_chat.json -h 1080 -w 480 --framerate 24 --update-rate 0 --font-size 24 -o %vodid%_chat.mov --background-color "#00000000" --output-args="-c:v prores_ks -qscale:v 62 -pix_fmt argb "{save_path}""

pause