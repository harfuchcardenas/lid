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
NOTE: this needs appropriate rights to modify
system configuration, therefore `sudo`rights
are required to be able to run this command
successfully.
