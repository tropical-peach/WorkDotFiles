#!/bin/bash

#
#                               _ _                            __               
#                              (_) |                          / _|              
#  ___ ___  _ __ ___  _ __ ___  _| |_ ___    __ _ _ __ ___   | |_ _ __ ___  ___ 
# / __/ _ \| '_ ` _ \| '_ ` _ \| | __/ __|  / _` | '__/ _ \  |  _| '__/ _ \/ _ \
#| (_| (_) | | | | | | | | | | | | |_\__ \   (_| | | |  __/  | | | | |  __/  __/
# \___\___/|_| |_| |_|_| |_| |_|_|\__|___/  \__,_|_|  \___|  |_| |_|  \___|\___|
#                                                                                            
#                                                                                            

#cd /projs/10820ap/users/seppala_steven/cdl_hub/apiu_stk/apf/
cmtMsg="CronJob commit for safty. No commit today, and recent commit was not a cronjob."
logDate=$(git log -1 --format="%at" | xargs -I{} date -d @{} +%Y%m%d)
logComt=$(git log -n1 | grep ran | head -c 10)
date=$(date +%Y%m%d)

if [ "$(git status . | grep modified | wc -l)" > 0 ]; then 
  echo "[$(date -u | head -c 20) GitComit] CronJob script for $(pwd). No recent changes. No issues" #>> /home/z1127156/00_CronLog
elif [ "$logDate" "=" "$date" ] ; then
  echo "Recent push made today"
elif [[ "$(git --no-pager log -n1 | tail -n 1)" == *"CronJob"* ]]; then
  echo "recent commit was cronjob"
  #echo "[$(date -u | head -c 20) GitComit] Recent Commit on $(pwd) was a CronJob. No issues" >> /home/z1127156/00_CronLog
else
  echo "PSUDO PUSH"
  echo $(git --no-pager log -n1 | tail -n 1)
  echo $cmtMsg
#  $(git commit -am "CronJob commit for safty. No commit today, and recent commit was not a cronjob.")
#  $(git push)
#  echo "[$(date -u | head -c 20) GitComit] CronJob script for $(pwd). No issues" >> /home/z1127156/00_CronLog
fi
         
