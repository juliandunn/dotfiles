#!/bin/sh

SSID=`networksetup -getairportnetwork en0 | awk '{ print $4 }'`

if [ $SSID == 'meowmeows' ]; then
  export HTTP_PROXY=http://squid:3128
  export HTTPS_PROXY=http://squid:3128
  export FTP_PROXY=http://squid:3128
  export http_proxy=http://squid:3128
  export https_proxy=http://squid:3128
  export ftp_proxy=http://squid:3128
fi
