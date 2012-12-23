Tarball (`tb`) is a handy script which allows the management of active and inactive projects.

Its based around the idea that you have two folders:
# An active folder full of extracted files (i.e. a folder containing more folders which in turn contain files)
# An archive folder which contains the Tarballs of the active folder

This script manages the backup from active -> archive and vise-versa.


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

    --force
    -f      Force a recovery action to overrite any existing files if any
            are found.

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
        Tarball the project 'foo' to backup.

    tb -d foo
        Tarball the project 'foo' to backup and delete the original active
        folder afterwards.

BUGS
    Quite probably.

    Please report to the author when found.

AUTHOR
    Matt Carter <m@ttcarter.com>

```
