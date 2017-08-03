# NorthBackup:
*Cron compatible* shell script to backup and announnce players
on a **detached screen based MineCraft Server**

##### reqirements in linux:
screen
minecraft_server


##### reqirements in game:
Esentials	/ if you want to use color-coded text and broadcast you need to install essentials plugin


### Insallation
Copy the backup.sh and place where you want

You need to change the folloings in the backup.sh file:
```
screen_name="MineCraft"			#remote screen name
backup_date=$(date +%F_%H-%M)	#backup file date format change if nessesery

path_to="/backup/minecraft/"	#Directory to put your backups
backups="/srv/minecraft/North*" #space sepatered list for backup directorys and paterns

filename="minecraft_save_$backup_date.tar.gz"	#backup file name
```

### run
make sure that you have the permission to execute the backup.sh
otherwise you can run the following from terminal 
```
sudo chmod +X "yourPathTo/backup.sh"
```