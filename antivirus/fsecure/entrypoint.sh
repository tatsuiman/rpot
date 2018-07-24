#!/bin/bash -e
/opt/f-secure/fsav/bin/fsav --virus-action1=none /malware/

#Usage: fsav [options | paths]

#valid options:

#--config={file[:PATH]|fsma[:OID]}
            #file: Use the configuration file based management method
            #optionally using PATH as the configuration file instead of the
            #default configuration file (/etc/opt/f-secure/fssp/fssp.conf).
            #fsma: Use the F-Secure Policy Manager based management method
            #optionally specifying the OID used in sending alerts.
#--databasedirectory=PATH
            #Read virus description databases from directory PATH.
            #Option is effective only, if the fsav launches the fsavd!
#--signal-dbupdate
            #New databases available, make necessary locking and signal daemon
            #to take the new databases into use
#--socketname=PATH
            #Use the given socket path to communicate with fsavd.
            #The default path is /tmp/.fsav-<UID> or /tmp/.fsav-<UID>-sa
            #if --standalone option is also given.
#--input
            #Read files to scan from standard input.
#--exclude=PATH
            #Do not scan PATH.
#--exclude-from=FILE
            #Do not scan files listed in FILE.
#--allfiles=[={on,off,yes,no,1,0}]
            #Enable/disable scanning of all files regardless of extension
            #Default is to scan all files
#--extensions=EXT,EXT,...
            #Scan files with specified extensions. Default extension list is '*'
#--scanexecutables[={on,off,yes,no,1,0}]
            #Enable executable scanning.
#--symlink[={on,off,yes,no,1,0}]
            #Enable/disable symbolic link following.
#--archive[={on,off,yes,no,1,0}]
            #Enable archive scanning.
#--mime[={on,off,yes,no,1,0}]
            #Enable MIME message scanning.
#--maxnested=VALUE
            #Set maximum nested archives allowed.
#--scantimeout=VALUE
            #Set scan time limit for a single file in seconds.
#--stoponfirst=[={on,off,yes,no,1,0}]
            #Stop scanning after first infection found with
            #any scan engine.

#Scan engine selection:
#(NOTE: By default, all engines are enabled. Enabling any engine
#will turn off the others, unless they are explicitly enabled.)
#--aqua[={on,off,yes,no,1,0}]
            #Enable/Disable Aquarius engine for the scan and disinfect.
#--fse[={on,off,yes,no,1,0}]
            #Enable/Disable FS-Engine for the scan and disinfect.

#--riskware[={on,off,yes,no,1,0}]
            #Report and handle riskware detections. Riskware is potential
            #spyware.
#--excluded-riskware=EXCLUSION;EXCLUSION;...
            #A list of riskware types that should be excluded from scanning.
            #Each EXCLUSION is of the form Category.Platform.Family.
#--virus-action1={none|report,disinf|clean,rename,delete|remove,abort,
                 #custom|exec}
#--virus-action2={none|report,disinf|clean,rename,delete|remove,abort,
                 #custom|exec}
            #Primary (action1) and secondary (action2) actions to take
            #when a virus infection is found:
            #none = only report the infection, both to the terminal and as an
                   #alert
            #report = synonym to none
            #disinf = try to disinfect the file
            #clean = synonym to disinfect
            #rename = rename the infected file
            #delete = delete the infected file
            #remove = synonym to delete
            #abort = abort scanning without scanning any remaining files
            #custom = run a program specified with --action[12]-exec option
            #exec = synonym to custom
#--action1-exec=PROGRAM
            #Run PROGRAM if --virus-action1=custom or --virus-action1=exec.
            #The PROGRAM get one parameter, the name of the infected file
#--action2-exec=PROGRAM
            #Run PROGRAM if --virus-action2=custom or --virus-action2=exec.
            #The PROGRAM get one parameter, the name of the infected file
#--riskware-action1={none|report,rename,delete|remove}
#--riskware-action2={none|report,rename,delete|remove}
            #Primary (action1) and secondary (action2) actions to take
            #when riskware is found, as with --virus-action options
#--suspected-action1={none|report,rename,delete|remove}
#--suspected-action2={none|report,rename,delete|remove}
            #Primary (action1) and secondary (action2) actions to take
            #when a suspected infection is found as with --virus-action options
#--action1={none|report,disinf|clean,rename,delete|remove,abort,custom|exec}
#--action2={none|report,disinf|clean,rename,delete|remove,abort,custom|exec}
            #Synonyms to --virus-action1 and --virus-action2, deprecated
#--action-timeout={e,c}
            #What to do when scan times out:
            #Treat timeout like it were a scan error (e);
            #Pretend the file was clean (c)
#--preserveatime[={on,off,yes,no,1,0}]
            #Enable/disable file's last access time restoring
            #after the file is scanned.
#--nopass    Ignore password-protected archives
            #NOTE: these days password-protected archives that fit a certain
            #profile are reported as suspected infections instead of password-
            #protected archives.
#--nomimeerr Ignore MIME decoding errors.
#--nomimepart
            #Ignore errors due to partial MIME content.
#--noinvalidmime
            #Ignore MIME header anomalies.
#--auto[={on,off,yes,no,1,0}]
            #Enable/disable non-interactive run, take enabled actions
            #without confirmation.
#--list[={on,off,yes,no,1,0}]
            #Enable/disable listing of all files that are scanned
#--raw[={on,off,yes,no,1,0}]
            #Enable/disable raw output, write ESC character (\033)
            #as is to output
#--short[={on,off,yes,no,1,0}]
            #Enable/disable short output format, show only
            #paths to infected/suspected files.
#--silent[={on,off,yes,no,1,0}]
            #Enable/disable silent run, do not generate any
            #output (except errors)
#--show-scan-time[={on,off,yes,no,1,0}]
            #Show/hide scanning time for each file
#--shutdown  Kill the server daemon instance
#--standalone
            #Force stand-alone mode, launch server even, if running.
#--usedaemon
            #Force client-server mode, do not fallback to stand-alone
            #mode if connect to server fails. The fsavd must be already
            #running, if this option is used.
#--skiplarge[={on,off,yes,no,1,0}]
            #Do not scan files equal or larger than 2 GB (2,147,483,648 bytes).
            #If this option is not set an error will be reported for large
            #files.
#--version   Show FSAV version and dates of signature files, and exit
#--status    Show the status of the scanning daemon and exit
#--help      Show command line options and exit

#Command line option will override config file options.

#Information about computer viruses, go to http://www.F-Secure.com/virus-info/.

