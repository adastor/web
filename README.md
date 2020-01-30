# AdaSTOR/OS &mdash; Your favorite next generation Linux distro
## Mission Statement

Deliver the best Linux distribution

- freely to anyone
- anywhere
- spy-free
- with the latest versions of the best Open Source Software
- on a daily basis &ndash; but without forced or otherwise intrusive update process.

### Purpose

AdaSTOR/OS is SlackwreLinux-current branch repackaged into several SquashFS
images and delivered to you the DevOps way via iPXE and IPFS (planned).
New releases are build automatically whenever Patrick releases new packages.
Packages are grouped into 'slices' &nbsp; SquashFS archives, mounted read-only
and stacked to provide consistent filesystem image; with writable layer
mounted on top of them.  That way more than 98% of filesystem data is mounted
read-only and served from compressed storage, which reduces I/O, which is
beneficial from both performance and security standpoint.  The 'slices' are
ready to be used "as-is" just after being downloaded (no installation step
required); moreover each participant host may serve them to others via IPFS
(planned), thus reducing bandwith cost of distribution.

## Origins

Few years ago I compressed my entire Slackware system with SquashFS to save
some space - and was amazed to see how much the system gained in terms of
loading speed as well.  This process was manual, slow, unreliable, and
required rebuilding the image each time new packages installed or upgraded.
So after several iterations I figured out how to break Slackware
installation in pieces to make updates easier - and today is the day it can
be tested by anyone willing to see Slackware installed within seconds.

Note: the system installed that way is 100% Slackware compatible - you can
use install/remove/upgrade-pkg as with traditionally installed Slackware -
it is just sub-optimal, since removed packages do not free space, and
upgraded packages consume additional space and are not compressed.

## Community packages

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia sapiente deserunt consectetur,
quod reiciendis corrupti quo ea aliquid! Repellendus numquam quo, voluptate. Suscipit soluta
omnis quibusdam facilis, illo voluptates odit!

## Automated build process

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia sapiente deserunt consectetur,
quod reiciendis corrupti quo ea aliquid! Repellendus numquam quo, voluptate. Suscipit soluta
omnis quibusdam facilis, illo voluptates odit!

## Physical & Virtual machines supported

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia sapiente deserunt consectetur,
quod reiciendis corrupti quo ea aliquid! Repellendus numquam quo, voluptate. Suscipit soluta
omnis quibusdam facilis, illo voluptates odit!

