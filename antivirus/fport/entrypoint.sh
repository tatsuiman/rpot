#!/bin/bash -e
/usr/local/bin/fpscan -r /malware

#F-PROT Antivirus CLS version 6.7.10.6267, 32bit (built: 2012-03-27T12-34-14)


#FRISK Software International (C) Copyright 1989-2011
#Engine version:   4.6.5.141
#Arguments:        -h 
#Virus signatures: 20180724123169d1589cd5f11abadec90446397a5b18
                  #(/opt/f-prot/antivir.def)


 #SYNTAX:
 #-------
	#fpscan [MEDIA] [OPTIONS] [PATHS]

	#[MEDIA] can be ALL, LOCAL or BOOT.
	#[OPTIONS] is any combination of legal command line options (see below).
	#[PATHS] is one or more paths to scan.

	#* If [MEDIA] is specified, paths are optional.
	#* If [PATHS] are given [MEDIA] is optional.
	#* Options and media specifiers are not case sensitive.

 #MEDIA OPTIONS:
 #--------------

  #-a, --all
	#Scan every file found and all boot sectors.
	#Specifying additional paths after this switch has no effect since any
	#path is a subset of ALL.

  #-l, --local
	#Scan all local disks/partitions.
	#Specifying additional paths causes those paths to be scanned as well.

  #-n, --network (Windows only)
	#Scan every file on every network drive.
	#Specifying additional paths causes those paths to be scanned as well.

  #-b, --boot (Windows/Linux only)
	#Scan all boot sectors.
	#Specifying paths in addition causes those paths to be scanned as well.

 #SCAN AND OUTPUT OPTIONS:
 #------------------------

  #-t, --streams (Windows only)
	#Scan inside alternate data streams (e.g. on NTFS).

  #-f, --follow
	#Follow symbolic links. Symlinks, when specified as paths on the command
	#line are always followed, regardless of this option.

  #-m, --mount (Unix only)
	#For each path given, stay on that filesystem.

  #-d n, --maxdepth=n (default 30)
	#Descend at most n levels of directories below a given scan path.

  #-s n, --scanlevel=n (0 <= n <= 4, default 2)
	#0 => Disable regular scanning (only heuristics).
	#1 => Skip suspicious data files. Not recommended if filename is
		 #unavailable.
	#2 => Unknown and/or wrong extentions will be emulated.
	#3 => Unknown binaries emulated.
	#4 => For scanning virus collections, no limits for emulation.

  #-u n, --heurlevel=n (0 <= n <= 4, default 2)
	#Aggressiveness of the heuristics used. The higher the level the more
	#heuristic tests are done which increases both the detection rates *and*
	#the risk of false positives (i.e. detecting innocent files).

  #-z n, --archive=n (0 <= n <= 99, default 5)
	#How deep to scan inside nested archives.

  #--adware
	#Scan for and report/act on adware in addition to viruses and worms.

  #--applications
	#Scan for and report/act on applications that may constitue security
	#risks.  This includes remote access tools which users should regard as
	#malware if installed without their knowledge or consent. The same
	#program could be a perfectly valid and useful tools for another person,
	#so the definition of what should be considered malware in this category
	#must come from the user.

  #-v n, --verbose=n (0 <= n <= 4, default 1)
	#0 => Report infections only.
	#1 => Report infections and scan errors.
	#2 => Report all files as they are processed, as well as all warnings
		 #and errors.

  #-!, --profile
	#Turns on profiling. For each top-level scanned object an extra line of
	#timing information will be shown. The format of the lines is:
	  #[[mm:ss.us == s.us]] <filename>

	#NOTE: this does not rely on the verbosity at all.

  #-i <FILE>, --signatures=<FILE>
	#Use a specific virus signature file (antivir.def).

	#By default the virus signature file is loaded from the same directory
	#as the command-line scanner binary.

  #-o <FILE>, --output=<FILE>
	#Send output to FILE along with the console.

  #-+, --append
	#Modify the behavior of the --output option to append to the file
	#instead of overwriting it.

  #--nospin
	#Suppress the spinning progress indicator even at verbosity > 0.
	#NOTE: if the environment variable FPSCAN_NEVER_SPIN is defined, this
		  #switch will be implied.

  #-e <LIST>, --exclude=<LIST>
	#Do not scan files and directories that match entries in LIST.
	#LIST should be a comma seperated list of paths.
	#The '*' character may be used as a wildcard. If entry ends with
	#a path separator ('/' on Unix, '\' on Windows), any directory that
	#matches the entry will be skipped entirely.

	#Examples (Unix paths used):
	#--exclude=/tmp/  => skips /tmp and any and all files therein.
	#--exclude=/tmp/* => does the same thing, but is less efficient.
	#--exclude=*/tmp/ => skips all folders named 'tmp'.
	#--exclude=*.dat  => skips all files ending in .dat.
	#--exclude=/boot/initrd,/tmp/ => skips the specific file /boot/initrd
	  #and the directory /tmp/.

	#Please remember that most Unix shells treat '*' as a special character
	#so it must be escaped with a backslash ('\') or surrounded by quotation
	#marks to be passed on to the program.

 #DISINFECTION OPTIONS:
 #---------------------

  #-k, --ask
	#Ask how to proceed when something was found.

	#HINT: This can be used to override the changed default behavior if the
		  #environment variable FPSCAN_REPORT_IS_DEFAULT was set.

  #-y, --disinfect
	#Automatically disinfect files if possible.

	#HINT: For the short switch think: "yes, always disinfect".

  #-r, --report
	#Only report infections. Never disinfect or delete.
	#The default is to prompt for the desired action.
	#NOTE: by defining the environment variable FPSCAN_REPORT_IS_DEFAULT
		  #this will become the default behavior.

  #--deleteall
	#Delete all files containing malware, including documents and archives.
	#Requires the --disinfect option!
	#WARNING: Use with care! This is a potentially *dangerous* option.

 #EXTRA MACRO DISINFECTION OPTIONS:
 #---------------------------------

  #--macros_safe
	#Remove all macros from infected documents.

  #--macros_new
	#Remove all macros from document when new variant is found.
	#The default is to remove only known malware macros.

  #--stripallmacros
	#Force removal of *all* macros regardless of infections.
	#Requires the --disinfect option!
	#WARNING: Use with care! This is a dangerous option.

 #HELP, INFORMATION AND OTHER OPTIONS:
 #------------------------------------

  #--balert
	#Reports unrecognized objects with a special marker.
	#This switch overrides these settings as follows:
	#--verbose=0 --adware --archive=99 --nospin --report

  #--defid, --sdefid
	#Show the (short) identifier for the virus signature file. This value
	#is also known as DEFID. The program will print it to the standard
	#output and exit (code: 0), or print an error to error output.

  #-g <FILE>, --merge-file=<FILE>
	#Given a differential update file (.diff) this option will merge those
	#changes into the virus signatures (.def) given by the 'signatures'
	#switch or the one that got automatically picked.

  #--virlist
	#List known malware and exit.

  #--virno
	#Print statistics about malware from definition file and exit.

  #--
	#Ends the command line switches. Anything after that will be considered
	#a file or path to scan. This is optional!

  #-h, -?, --help
	#Print this help.

  #--version
	#Print version numbers and exit.

  #-x [n], --explain[=n] (1 <= n <= 255)
	#Explain the exit code.

	#There are two methods to use this switch:
	#- Just pass it along with other parameters on the command line and if
	  #the final exit code is not zero (i.e. something notable happened) you
	  #will see a short analysis of what this exit code means at the bottom
	  #of your scan report.
	#- Alternately give it the numeric argument and it will print the
	  #analysis for this given exit code (which was probably retrieved
	  #during an earlier run of the command line scanner).

 #ENVIRONMENT VARIABLES:
 #------------------------------------
 #You can use the following environment variables to alter default behavior.

  #FPSCAN_NEVER_SPIN
	#Suppress the spinning progress indicator completely. There is no way to
	#revert this without undefining the environment variable.

  #FPSCAN_REPORT_IS_DEFAULT
	#Will cause 'report' to become the default behavior, instead of asking
	#the action to take. This can be reverted for individual invocations of
	#the command line scanner by using the 'ask' switch.

 #OPTION FILES:
 #------------------------------------
  #You may create text files containing command line options and file names and
  #pipe their contents into the scanner like this:

	#cat options.txt | fpscan

  #or this:

	#echo --version --verbose=3 | fpscan

  #or this:

	#fpscan < options.txt

  #The rules are mostly the same as for options given on the command line, with
  #these three exceptions:
  #- The hash mark ('#') as the first character on a line denotes a comment
    #line. This means that remaining contents of the line will be ignored.
  #- Short options are allowed, but their arguments should never be quoted.
  #- The options from standard input will be parsed after all other options.


 #------------------------------------------------------------------------------
  #This program uses third-party components. Below you find the respective
  #copyright notices as applicable. They apply to portions of this code.
 #------------------------------------------------------------------------------

  #RSA Data Security, Inc. MD5 Message-Digest Algorithm:
      #Copyright (C) 1990, RSA Data Security, Inc.

  #LZMA SDK, public domain:
      #http://7-zip.org

  #BZIP2 library:
      #Copyright (C) 1996-2010 Julian R Seward.  All rights reserved.
      #http://bzip.org

  #zlib library:
      #Copyright (C) 1995-2010 Jean-loup Gailly and Mark Adler.
      #http://zlib.net

  #Info-ZIP unzip:
      #Copyright (C) 1990-2009 Info-ZIP. All rights reserved.
      #http://www.info-zip.org

  #Portable UnRAR:
      #Copyright (C) Alexander Roshal
      #http://www.rarlab.com

  #UnACE:
      #Copyright (C) by ACE Compression Software
      #http://www.winace.com

  #RC4:
      #Copyright (C) 1995-1998 Eric Young (eay@cryptsoft.com). All rights reserved.

  #UNARJ:
      #Copyright (c) 1991 by Robert K Jung.� All rights reserved.
      #[This code may be freely used in programs that are NOT archivers.]

  #GLIBC version 2.0, under the GNU Lesser General Public License:
      #Copyright (C) Free Software Foundation
      #http://www.gnu.org/software/libc/
      #http://www.gnu.org/software/libc/manual/html_node/Contributors.html
      #NOTE: the the copyright years depend on the library version linked.

