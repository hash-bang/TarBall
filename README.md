Tarball (`tb`) is a handy script which allows the management of active and inactive projects.

Its based around the idea that you have two folders:

1. An active folder full of extracted files (i.e. a folder containing more folders which in turn contain files)
2. An archive folder which contains the Tarballs of the active folder

This script manages the backup from active -> archive and vise-versa.

Installation
============
If you are using a Debian based system such as Ubuntu or mint simply open the .deb file found in the root folder.

If you are using another kind of system copy the `tb` script into /usr/bin (or wherever).

Alternatively run the following from a Debian based system:

	URL='https://github.com/hash-bang/Script-Tarball/blob/master/tb_0.1.0.deb?raw=true'; FILE=`mktemp`; wget "$URL" -qO $FILE && sudo dpkg -i $FILE; rm $FILE


Command line reference
======================
```
NAME
    tb - Manage projects by throwing them into and out of Tarballs

SYNOPSIS
            tb [options] <projects>

OPTIONS
    --dryrun
    -n      Do not actually run any system commands. Just output what WOULD
            run.

    --delete
    -d      Delete a project from the active folder after tarballing.

    --info
    -i      Show information about projects.

    --list
    -l      List all known active projects and tarballs.

    --force
    -f      If specified during normal operation this option forces a
            tarball to be created even if the tarball is the same age as the
            most recent file. If specified during a recovery action, any
            existing files are overritten during the recovery.

    --recover
    --reverse
    -r      Reverse the backup process so the backup is restored over the
            active version. If an active version of a project already exists
            this function will not continue unless force (-f) is specified.

    -v
    --verbose
            Be more verbose when outputting information to STDERR. Specify
            multiple times to increase verbosity.

DESCRIPTION
    A command line tool for the manipulation of projects.

EXAMPLES
    tb foo
        Tarball the project 'foo' to backup. If the tarball already exists
        and is up to date the project will be skipped (to override this
        behaviour use '-f').

    tb -d foo
        Tarball the project 'foo' to backup and delete the original active
        folder afterwards.

    tb -r foo
        Recover the tarballed project 'foo' from backup into an active
        project folder. If 'foo' already exists it will NOT be overwritten.

    tb -rf foo
        Same as above but this time if 'foo' does exist it will be removed
        before the restore takes place.

    tb -l
        List all known projects (both tarballs and active)

BUGS
    Quite probably.

    Please report to the author when found.

AUTHOR
    Matt Carter <m@ttcarter.com>

```
