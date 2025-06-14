# Battery Full Notification
A simple script to display a notification when your battery is full in PopOS made for using it as a Cron job.

Bassed on the [a repo](https://github.com/hg8/battery-full-notification) made by @hg8 

Does not require to install powermgmt-base for using the command 'on_ac_power' (this script uses another approach).

It also does not require to install libnotify-bin for sending the notification with the command 'notify-send'.

The sound and icon used for the notification is included in PopOS only but can be changed easyly in the script.

Example set at 57%. (default is 99%):
![preview](https://i.imgur.com/ao6Y8Ob.png)

## Installation :

1. Install `acpi` package :

        sudo apt-get install acpi

2. Clone this repo :
        
        git clone https://github.com/raafaar/battery-full-notification-cron.git
        
3. Add the `batteryfull.sh` script as a con job:

   As regular user in a terminal, run:
   ```
   id -u
   ```
   take note of the displayed number. Then run:
   ```
   crontab -e
   ```
   it will open an editor, add this at the end of the file (replace {userId} with the number from the `id -u` command):
   ```
   */5 * * * * export XDG_RUNTIME_DIR=/run/user/{userId} && /path/to/battery-full-notification/batteryfull.sh
   ```
   This cron job gets executed every 5 minutes. You can change it replacing "*/5", at the begining of the line, with the number of minutes you want.
5. Done!


----


    
