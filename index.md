# head#AdaSTOR/OS &mdash; Your favorite next generation Linux distro
## id:AdaSTOR:abstract:AdaSTOR O/S:title:Mission Statement

Deliver the best Linux distribution

- freely to anyone
- anywhere
- spy-free
- with the latest versions of the best Open Source Software
- on a daily basis &ndash; but without forced or otherwise intrusive update process
- using DWeb/IPFS as distribution medium
- and iPXE to boot & setup.



### About the best Linux distro on Earth

Slackware Linux is the oldest actively developed Linux distribution. Being
developed by a single person (Patrick Volkerding), supported by small team of
close colaborators rather than a corporation, it has no time-tighted release
schedule, nor sales plan, nor fancy graphical setup wizard; hence is considered
as a very hard to set up and maintain on a machine.

Which is not true at all. OK, it may be a little hard to set up for the first
time for a Linux newbie.

### Enter AdaSTOR/OS.

AdaSTOR/OS is SlackwreLinux-current branch repackaged into several SquashFS
images and delivered to you the DevOps way via IPFS.

New releases are build automatically whenever Patrick releases new packages.
Packages are layered into 'slices' &nbsp; SquashFS images, mounted read-only
and stacked to provide consistent filesystem image; with writable layer
mounted on top of them.  That way more than 98% of filesystem data is mounted
read-only and served from compressed storage, which reduces I/O, which is
beneficial from both performance and security standpoint.  The 'slices' are
ready to be used "as-is" just after being downloaded, as **no installation step
is required**.  Moreover each participant host may serve them to others via
IPFS, thus reducing bandwith cost of distribution.

## sep#id:Slackware:abstract:is Slackware Linux:title:Origins

Few years ago I compressed my entire Slackware system with SquashFS to save
some space &ndash; and was amazed to see how much the system gained in terms of
system and program loading speed as well.  This process was manual, slow,
unreliable, and required rebuilding the image each time new packages installed
or upgraded.  Hence, after several iterations I figured out how to break
Slackware installation into pieces to make updates easier - and today is the day it can
be tested by anyone willing to see Slackware installed within seconds.

Note: the system installed that way is 100% Slackware compatible - you can
use install/remove/upgrade-pkg as with traditionally installed Slackware -
it is just sub-optimal, since removed packages do not free space, and
upgraded packages consume additional space and are not compressed.

## sep#id:Community:abstract:enhanced with tons of community packages:title:Community packages

Slackware Linux consists of about 1,300 packages, grouped in several series:
**a** is base system, **ap** &ndash; console-based applications,
**x** is graphical (X-Window) subsystem, **xap** &ndash; gui-based apps,
**d**, **l**, and **n** stand for development, libraries, and network
(respectively), and so on.

1,300 is not very much in terms of Linux distros these days, really.  But this
is just a beginning.  A typical Slacker would install all of them to have
stable, solid base for further customization.

## sep#id:Daily:abstract:delivered daily:title:Automated build process

Build is triggered whenever a package is added/upgraded/removed from Slackware,
-current branch only (stable branches are not supported yet).

## sep#id:Freedom:abstract:to any machine you want:title:Physical & Virtual machines supported

At the moment setup process was tested on QEMU virtual machines and VMs at
Vultr.com.  Tests on physical machines are scheduled when all issues are
resolved with virtual machines.

# foot#
