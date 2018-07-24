#!/bin/bash -e
service avast start
scan -abfu /malware/

#Usage:
  #scan [-s SOCKET] [-e PATH] [-l LEVEL] [-abfipux] [PATH]...
  #scan [-s SOCKET] [-a] -U [URL]...
  #scan [-s SOCKET] -V
  #scan -v

#Options:
  #-v         Print program version and exit
  #-U         Check URLs
  #-V         Print VPS version and exit.
  #-s SOCKET  Use scan socket SOCKET.
  #-e PATH    Exclude PATH from the scan.
  #-a         Print all scanned files/URLs, not only infected.
  #-b         Report decompression bombs as infections.
  #-f         Scan full files.
  #-i         Print verbose infection info.
  #-p         Print archive content.
  #-u         Report potentionally unwanted programs (PUP).
  #-l LEVEL   Set heuristics level to LEVEL (0-100).
  #-x         Do not extract archives.

#Exit status:
  #0 - no infections were found
  #1 - some infected file was 
