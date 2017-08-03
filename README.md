# NorthBackup:
*Cron compatible* shell script to backup and announce players on a **detached screen based Minecraft Server**

#### Important: this script needs to run whit the same user as the Minecraft screen and the cron!

## what this thing does exactly?
* Announce players in game from the backup
* prevent file changes over the tar process
* generating tar.gz files to backup folder based on current date/time


##### requirements in Linux:
- Installed screen
- Minecraft Server
- Cron (optional)
- Screen based run on the Minecraft server


##### requirements in game:
if you want to use color-coded text and broadcast you need to install the Essentials plugin
else you need to change the ```broadcast``` to ```say``` at line 14 and 29 in backup.sh


### Installation:
Copy the backup.sh and place where you want

You need to change the folloings in the backup.sh file:
```
screen_name="MineCraft"		#remote screen name
backup_date=$(date +%F_%H-%M)	#backup-file date format / change if nessesery

path_to="/backup/minecraft/"	#Directory to put your backups
backups="/srv/minecraft/North*" #space sepatered list for backup directorys and paterns

filename="minecraft_save_$backup_date.tar.gz"	#backup file name / change if nessesery
```

### Run:
**make sure, you have the permission to execute the backup.sh**
You can run the following from terminal
```yourPathTo/backup.sh```
or
```
Cd /yourPathToBackupScript
./backup.sh"
```

##### grant execute privilages
```
sudo chmod +X "yourPathTo/backup.sh"
```