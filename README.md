This Repository is used to control the
behavior of your laptop system when closing
the lid of your laptop.
There are two options:
- work with the lid: for this run `sudo lid`
- work without the lid: for this run `sudo no-lid`
Emphazis that whenever one would like to work
without the lid (no-lid) the system will be 
configured not to sleep whenever the lid is
closed.
On the contrary when one would like to work
with the lid (lid) will suspend everytime one
closes the lid.
NOTE: these commands needs appropriate rights
to modify system configuration, therefore
`sudo`rights are required to be able to run
this command successfully.
Additionally whenever the command `lid` is
run, the effects for going to sleep are defined in the file:
/usr/lib/systemd/logind.conf.d/*.conf,
so one needs to modify the InhibitDelayMaxSec 
in order to make the changes apply after this 
time
NEXT STEPS: This file modifies the /etc/systemd/login.conf file and looks for:
-HandleLidSwitch
-HandleLidSwitchExternalPower
-HandleLidSwitchDocked
and modifies these accordingly to act 
upon the closure of lid or not, so if any of these lines are commented with a `#` out, this
will not work, so remove the `#`from these
lines in order to make the commands work
appropriately.

