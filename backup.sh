#!/bin/bash
#Desc:  Cron based bash script to remote screen backup and player anuance
screen_name="MineCraft"			#remote screen name
backup_date=$(date +%F_%H-%M)	#backup file date format change if nessesery

path_to="/backup/minecraft/"	#Directory to put your backups
backups="/srv/minecraft/North*" #space sepatered list for backup directorys and paterns

filename="minecraft_save_$backup_date.tar.gz"	#backup file name



#Announce players
screen -S $screen_name -p 0 -X stuff "broadcast &3Backup &2Starting. &CWorld save disabled ^M"
#Turn off world save to prevent file changes
screen -S $screen_name -p 0 -X stuff "save-off^M"
wait
#force world to save
screen -S $screen_name -p 0 -X stuff "save-all^M"
wait
#echo $backup_date
#generating tar file:
tar cpvzf  $path_to/$filename $backups  #--exclude=$ex $backups 
wait
#turn save on
screen -S $screen_name -p 0 -X stuff "save-on^M"
wait
#announnce players
screen -S $screen_name -p 0 -X stuff "broadcast &3Backup &AFinished ^M"
