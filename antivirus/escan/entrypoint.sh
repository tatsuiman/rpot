#!/bin/bash -e
escan -ly /malware

#*******************************************************
	  #eScan Anti-Virus for Linux  
#Copyright (C), Microworld Technologies Inc.
	 #Website: http://www.escanav.com
#*******************************************************

#Usage: escan [OPTION] [OBJECT]
#Scans & Cleans Objects for Viruses

#Scan Actions
#-ly,--log-only                  Only Report, No action on infected files
#-dl,--disinfect-log	        Disinfect, if not possible log
#-dd,--disinfect-delete          Disinfect, if not possible delete
#-dq,--disinfect-quarantine	Disinfect, if not possible quarantine (Default)
#-dr,--disinfect-rename  	Disinfect, if not possible rename
#-dp,--disinfect-prompt          Disinfect, if not possible prompt action
#-di,--delete-infected 	    	Delete Infected Files
#-ri,--rename-infected           Rename Infected Files
#-qi,--quarantine-infected       Quarantine Infected Files
#-pr,--prompt                    Prompt for an Action (no disinfect)
#-qp,--quarantine-path*          Infected Quarantine Path. It sets action as quarantine.
#-re,--rename-extension*         Infected Rename Extension. It sets action as rename
#*Parameters are descarded in case of prompt action

#Recursion Options
#-rr,--recursion                 Scan Directories Recursively (Default)
#-rr-,--no-recursion             Do not Scan Directories Recursively
#-cr-,--no-cross-fs	    	Do not cross File Systems while scanning (Default)
#-cr,--cross-fs		    	cross File Systems while scanning
#-lk-,--no-symlink            	Do not Follow Any Symbolic Links (Default)
#-lk,--all-symlink           	Follow All Links 

#Scan Options
#-m0,--mem-scan-only             Perform only memory scan
#-m,--mem-scan                   Perform memory scan before actual scanning (Default)
#-m-,--no-mem-scan               No memory scan at startup
#-au,--auto-update               Update Virus Definition Before Scan
#-pk,--pack                      Enable Packed files scanning (Default)
#-pk-,--no-pack                  Disable Packed files
#-ac,--archives	                Scan All Archives (Default)
#-ac-,--no-archives	    	Do not Scan Archives
#-db-,--mails                    Scan Mails & Mail Databases (Default)
#-db,--no-mail          	        Do not Scan Mails and Mail Databases
#-hu-,--heuristic      	        Perform Heuristic Scanning for Suspected objects
#-hu,--no-heuristic              Disable Heuristic Scanning
#-sx,--scan-ext                  Scan exntesion list (seperated by ',')
#-xx,--exclude-ext               Exclude extension list (seperated by ',')
#-xd,--exclude-dirs              Exclude directory list (seperated by ',')
#-dh,--max-depth                 Scan Directory Depth Level
#-ms,--max-size                  Scan Files to this Size only (Suffix 'B'/'K'/'M')

#General Options
#-v,--version                    Display Version
#-y0,--display-none              Do not display any output
#-ym,--display-minimum           Display Minimum. Only Init, Conf and statistics
#-y,--display-all 	        Display All
#-yi,--display-infected          Display Infected Files
#-l,--log-path                   Scan Log file path
#-l0,--no-log                    Do not Log Anything
#-la,--log-all                   Log Everything
#-li,--log-infections            Log Infections
#-lm,--log-minimum               Log Minimum. Only Init, Conf and statistics
#-ss,--save-settings             Save Options as Default Settings before Scan
#-so,--save-only                 Save Options as Default Settings and Exit
#-G,--restore-global             Restore global settings (available for non-root users only)
#-ui,--av-info            	Anti-virus Engine and Virus Info

#Update Options
#-u,--update                     Update Virus Definition
#-x,--use-proxy                  Use Proxy while downloading updates
#-x-,--no-proxy                  Do not use Proxy while downloading updates
#-xi,--proxy-ip                  IP Address of the Proxy Server
#-xt,--proxy-port                Port of the Proxy Server
#-xa,--use-proxy-auth            Enable Proxy Authentication
#-xa-,--no-proxy-auth            Disable Proxy Authentication
#-xu,--proxy-user                Proxy User
#-pw,--proxy-passwd              Proxy Passwd
#-ul,--server-list               Update Servers List (comma separated)
#-xs,--use-https                 Use Secure http to download updates
#-xs-,--use-http                 Use Non-secure http to download updates
#-to,--time-out                  Connection time out for download (in seconds)
#-rc,--retries                   In case of connection time out, retry these many times

#Schedule Options
#-sc,--save-schedule             Save Schedule
#-min,--minute                   Schedule Time Minute
#-hr,--hour                      Schedule Time Hour
#-day,--month-day                Schedule Time Month-day
#-wd,--week-day                  Schedule Time Week-day (0 Monday/6 Sunday)
#-mon,--month                    Schedule Time Month
#-fq,--frequency                 Frequency 0-once/1-hourly/2-daily/3-weekly/4-monthly
#-ds,--del-schedule              Delete Schedule
#-do,--delete-old                Delete all expired schdules

#-h,--help                       Print this message and Exit

