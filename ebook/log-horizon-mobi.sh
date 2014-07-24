#!/bin/bash -x

cd AozoraEpub3
java -cp AozoraEpub3.jar AozoraEpub3 -enc UTF-8 ../log-horizon.txt
cd ..
kindlegen/kindlegen \[橙乃ままれ\]\ ログ・ホライズン.epub 

