# Some scripts I use often

## brewup
A macOS shell script to update, upgrade and clean your brew installation that shows a notification when complete.

Ideally, you'd want this in a directory that is within your PATH, such as ``~/bin``.

If you do not have one directory like that, I strongly suggest to make one and edit your ``~/.bash_profile`` accordingly by adding:
``export PATH="/Users/yourusername/bin":$PATH``

Make it executable with ``chmod u+x ~/bin/brewup``

## dhcp_leases

A Python script that shows the currently active DHCP leases, courtesy of the kind fellow at https://askubuntu.com/a/553387
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/dhcp_leases``
