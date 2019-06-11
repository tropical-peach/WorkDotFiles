#!/bin/zsh

log_file=~/cron_log/$(date -u | tr -d '\040\011\012\015').log

w -i >> $log_file

cd /projs/10820ap/users/seppala_steven/cdl_hub//apiu_stk
git commit -m "This is a cronjob nightly commit"
git push 2>&1 >> $log_file


