# main_salt
Salt configuration files for home network.  Clone to working directory such
as /m/main_salt and make appropriate link(s).

ln -s /m/main_salt/srv/salt /srv/salt

This is just an initial set of states to capture as much installation as
possible. There is no organization to begin with. There is also no handling
of any architecture differences such as different package names or repo
additions for Ubuntu vs. CentOs.

Current manual installs once saltstack is running:

## Install proprietary nvidia video driver instead of nouveau driver

KDE was freezing every so often and could be an issue with KDE exercising
an error in the open-source driver. Eventually, I want to automate that
switch, but the web directions were inconsistent for command-line. So,
I loaded Unity to run the application off the menu for switching the video
driver.  TODO: Try and use command line to get to the same state.  Then
any window manager could be used. See the blacklist driver info added
by the utility.  It is very close to some of the web posts.

Also, see about black-listing the nouveau driver and adding the nivida
driver before doing the (k)ubuntu-desktop install, which installs the
noveau one.

## Select sound

Selected line out for sound - it wasn't plugged in during install and didn't
show up as a option until plugging it it. See if it automatically picked
during install if it was plugged in.  If not, see how it can be selected
via command line.

