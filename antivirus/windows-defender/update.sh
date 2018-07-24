#!/bin/bash
echo "===> Download 32-bit antimalware update file.."
wget --progress=bar:force "https://go.microsoft.com/fwlink/?LinkID=121721&arch=x86" -O /loadlibrary/engine/mpam-fe.exe
cd /loadlibrary/engine
cabextract mpam-fe.exe
rm -rf mpam-fe.exe
