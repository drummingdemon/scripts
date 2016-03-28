#!/bin/bash
IPFILE=~/ipaddress
CURRENT_IP=$(curl -s http://extip.gaborhargitai.hu | awk '{print $1}')
if [ -f $IPFILE ]; then
KNOWN_IP=$(cat $IPFILE)
else
KNOWN_IP=
fi
if [ "$CURRENT_IP" != "$KNOWN_IP" ]; then
echo $CURRENT_IP &gt; $IPFILE
echo $CURRENT_IP | mutt -s "New External IP: $CURRENT_IP" your_email_address
fi
