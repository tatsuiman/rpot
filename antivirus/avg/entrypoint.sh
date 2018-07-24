#!/bin/bash -e
service avgd start
avgscan -P -j /malware
#Anti-Virus scanner usage:
#avgscan [options] [path-list]
#Options:
	#-h, --help               Display this help.
	#-v, --version            Display version.
	#-d, --debug              Verbose mode. Multiple -d options increase the
							 #verbosity. The maximum is 3.
	#-T, --tui                Use a terminal user interface.
	#-x, --exclude=<path>     Exclude path from scan. Multiple --exclude can
							 #be specified.
	#-e, --ext=<extension>    Scan files with specified extension. Multiple
							 #--ext can be specified. Can't be used with 
							 #--noext option.
	#-n, --noext=<extension>  Exclude files with specified extension.
							 #Multiple --noext options can be specified.
							 #Can't be used with --ext option.
	#-l, --heal               Automatically heal infected object.
	#-t, --delete             Automatically delete infected object.
	#-u, --vv-move            Automatically move infected object into vault.
	#-U, --vv-backup          Backup infected object if healed by deletion.
		#--ignerrors          Do not report object scan errors.
	#-H, --heur               Use heuristics for scanning. By default on.
		#--no-heur            Disable heuristics for scanning.
	#-p, --pup                Scan for Potentially Unwanted Programs.
							 #By default on.
		#--no-pup             Disable scanning for PUPs.
	#-P, --pup2               Scan for enhanced set of Potentially Unwanted
							 #Programs.
	#-c, --coo                Scan cookies.
	#-i, --hidext             Recognize hidden extensions.
	#-m, --macrow             Report documents with macros.
	#-o, --repok              Report also clean files.
	#-w, --pwdw               Report password protected files.
	#-b, --arcbombsw          Report archive bombs. By default on.
		#--no-arcbombsw       Do not report archive bombs.
	#-M, --media              Do not scan through media files.
	#-j, --paranoid           Enable paranoid mode. Scan for less dangerous
							 #malware and more time consuming algoritms.
	#-r, --report=<filename>  Save scan report to specified file.
	#-a, --arc                Scan through archives.
	#-L, --arc-reclevel=N     Maximum recursion level while scanning archives.
							 #Default value is 40.
	#-S, --arc-maxfilesize=N  Maximum file size extracted from archives.
							 #Default value is 268435456 B.
	#-N, --arc-maxfilenum=N   Maximum number of files scanned in archives.
							 #Default value is 50000.
	#-B, --boot-sector        Scan boot sector.
	#-s, --specfs             Scan special filesystems.
	#-R, --reclevel=N         Descend at most N (a non-negative integer)
							 #levels of directories. Default value is 16384.
	#-W, --winsysdir          Specifies a comma separated list of windows
							 #system directories. Any infected files found
							 #in this directory are marked as whitelisted
							 #in order to protect these files from being
							 #removed/moved to vault.
	#-F, --filelist=<filename> Scan file paths specified in given file, all
							  #other paths on command line will be ignored.
	#-k, --registryscan       Scan Windows registry.



