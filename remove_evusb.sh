#!/bin/sh

if test -f "/Library/Application Support/Eltima/eveusbd/bin/uninstall"
then
    echo "eveusb: uninstalling USB To Ethernet Connector 1.x"
    /Library/Application\ Support/Eltima/eveusbd/bin/uninstall || true
fi

if test -f "/Library/Frameworks/EveUSB.framework/Support/uninstall"
then
    echo "eveusb: uninstalling USB Network Gate 2.x"
    /Library/Frameworks/EveUSB.framework/Support/uninstall || true
fi

COUNTER=0

while true; do
    DAEMONS=`ps ax | grep -v grep | grep -c eveusbd`

    if test $DAEMONS -gt 0; then
        echo "eveusb: trying to terminate daemon"

        launchctl remove com.eltima.eveusbd || launchctl remove com.eltima.eveusb.daemon || killall -u root -c eveusbd || true

        let COUNTER=COUNTER+1

        if test $COUNTER -eq 10; then
            echo "eveusb: killing daemon"
            killall -u root -c eveusbd -KILL
        fi

        if test $COUNTER -gt 10; then
            echo "eveusb: cant stop daemon"
            break
        fi

        sleep 1
    else
        break
    fi
done

if test -d "/Library/Application Support/Eltima/eveusbd"
then
    echo "eveusb: clearing old configuratiins"
    rm -fr "/Library/Application Support/Eltima/eveusbd"
fi

if test -f "/var/log/eveusbd.log"
then
    echo "eveusb: clearing old log file"
    rm -fr "/var/log/eveusbd.log"
fi

if test -f "/var/log/com.eltima.eveusb.daemon.log"
then
    echo "eveusb: clearing log file"
    rm -fr "/var/log/com.eltima.eveusb.daemon.log"
fi

rm -fr /var/tmp/com.eltima.eveusbd
