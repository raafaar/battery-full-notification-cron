# *******Unfinished script, may not work yet*************

# Battery Full Notification
A simple script to display a notification when your battery is full in PopOS made for using it as a Cron job.

Bassed on the [a repo](https://github.com/hg8/battery-full-notification) made by @hg8 

Does not require to install powermgmt-base for using the command 'on_ac_power' (this script uses another approach).

It also does not require to install libnotify-bin for sending the notification with the command 'notify-send'.

The sound and icon used for the notification is included in PopOS only but can be changed easyly in the script.

![preview](http://i.imgur.com/rVGMBK8.png)

## Installation :

1. Install `acpi` package :

        sudo apt-get install acpi

2. Clone this repo :
        
        git clone https://github.com/raafaar/battery-full-notification-cron.git
        
3. Add the `batteryfull.sh` script as a con job:
   As regular user, run:
   ```
   crontab -e
   ```
   then add this at the end of the file:
   ```
   * * * * * /path/to/battery-full-notification/batteryfull.sh
   ```
5. Done!


----

<sup>Battery icon credit to [DreamStale](http://www.dreamstale.com/free-download-40-battery-vector-icons/).</sup>


    
