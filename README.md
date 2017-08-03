# NorthBackup:
<<<<<<< HEAD
*Cron compatible* shell script to backup and announnce players on a **detached screen based MineCraft Server**

#### Important: this script need to run whit the same user as the minecraft screen and the cron!

##### reqirements in linux:
- Insalled screen
- MineCraft Server
- Cron (optional)
- screen based run on the minecraft server


##### reqirements in game:
if you want to use color-coded text and broadcast you need to install the Essentials plugin
else you need to change the ```broadcast``` to ```say``` at line 14 and 29 in backup.sh


### Insallation:
=======
*Cron compatible* shell script to backup and announnce players
on a **detached screen based MineCraft Server**

##### reqirements in linux:
screen
minecraft_server


##### reqirements in game:
Esentials	/ if you want to use color-coded text and broadcast you need to install essentials plugin


### Insallation
>>>>>>> b87f9ef4ccb9fae57366589e1d3be596e3ecea15
Copy the backup.sh and place where you want

You need to change the folloings in the backup.sh file:
```
<<<<<<< HEAD
screen_name="MineCraft"		#remote screen name
backup_date=$(date +%F_%H-%M)	#backup-file date format / change if nessesery
=======
screen_name="MineCraft"			#remote screen name
backup_date=$(date +%F_%H-%M)	#backup file date format change if nessesery
>>>>>>> b87f9ef4ccb9fae57366589e1d3be596e3ecea15

path_to="/backup/minecraft/"	#Directory to put your backups
backups="/srv/minecraft/North*" #space sepatered list for backup directorys and paterns

<<<<<<< HEAD
filename="minecraft_save_$backup_date.tar.gz"	#backup file name / change if nessesery
```

### Run:
make sure, you have the permission to execute the backup.sh
otherwise you can run the following from terminal
```
Cd /yourPathToBackupScript
./backup.sh"
```

##### grant execute privilages
=======
filename="minecraft_save_$backup_date.tar.gz"	#backup file name
```

### run
make sure that you have the permission to execute the backup.sh
otherwise you can run the following from terminal 
>>>>>>> b87f9ef4ccb9fae57366589e1d3be596e3ecea15
```
sudo chmod +X "yourPathTo/backup.sh"
```