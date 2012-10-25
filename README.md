# Bash History Count
## by @rexfeng 2012

A simple ruby script that looks through ~500 lines of your ~/.bash_history file. Counts occurrences of Bash commands and puts results in desc order.

# possible uses of this:
* stats of bash commands over time (requires backing up .bash_history over time)
* advice on what shortcuts to implement in .bash_profile based on what commands you enter too much

# Instructions to Automate Backup of .bash_history in OS X with Crontab

1. Create a local script that creates the task of copying your ~/.bash_history (an example in script/.backup_bash_history.sh). 
    * You need to rename "~/backup/dir/goes/here/foryour" to your desired backup directory.

2. Setup recurring Crontab task to run .backup_bash_history at specified times.
    * In Terminal, type "crontab -e"
    * Press "i" to get into Insert Mode.
    * Type in the following "0 */6 * * * ~/.backup_bash_history.sh" where "~/.backup_bash_history.sh" matches the correct path.
    * Press the escape key to exit out of Insert Mode.
    * You may either type ":wq" (to save and exit) or ":q!" (to exit without saving) followed by enter to submit your command.

3. Congratulations, based on your "crontab -e" setup, your ~/.bash_history will be backed up to the location specified in .bash_backup_history.sh (assuming your computer is on when crontab requires it).