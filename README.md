# *******Unfinished script, may not work yet*************

# Battery Full Notification
A simple script to display a notification when your battery is full in PopOS made for using it as a Cron job.

Bassed on the [a repo](https://github.com/hg8/battery-full-notification) made by @hg8 
Does not require to install powermgmt-base for using the command 'on_ac_power' (this script uses another approach).
The sound used for the notification is included in PopOS only but can be changed easyly in the script.

![preview](http://i.imgur.com/rVGMBK8.png)

## Installation :

1. Install `acpi` package :

        sudo apt-get install acpi

2. Clone this repo :
        
        git clone https://github.com/raafaar/battery-full-notification-cron.git
        
3. Add the `batteryfull.sh` script as a con job:
   ```
   <add-cron-job>
   ``
5. Done!


----

<sup>Battery icon credit to [DreamStale](http://www.dreamstale.com/free-download-40-battery-vector-icons/).</sup>


    
