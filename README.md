# Some scripts I use often

## brewup
A macOS shell script to update, upgrade and clean your brew installation that shows a Notification Center notification when complete.

Ideally, you'd want this in a directory that is within your PATH, such as ``~/bin``.

If you do not have one directory like that, I strongly suggest to make one and edit your ``~/.bash_profile`` accordingly by adding:
``export PATH="/Users/yourusername/bin":$PATH``

Make it executable with ``chmod u+x ~/bin/brewup`` and just run it from your Terminal by issuing ``brewup``

## clean_kernel_headers.sh

A BASH script that I've found a while back at the Ubuntu Forums - it basically cleans all the unused kernel header files and associated junk that generally you would not need thus freeing up some valuable storage space.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/clean_kernel_headers.sh``
3. Run it by simply executing ``clean_kernel_headers.sh`` from anywhere

## dhcp_leases

A Python script that shows the currently active DHCP leases, courtesy of the kind fellow at https://askubuntu.com/a/553387
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/dhcp_leases``
3. Run it by simply executing ``dhcp_leases`` from anywhere

## filevault_progress

A macOS shell script that shows the FileVault encryption process for all ongoing drives.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/filevault_progress``
3. Run it by simply executing ``filevault_progress`` from anywhere

## ipchange.sh

A BASH script to detect and email the newly associated IPv4 address of a selected network interface, it queries the PHP file sitting over at my blog - read more about it in my relevant post here: https://gaborhargitai.hu/your-external-ip-address/

## remove_evusb.sh

A BASH script for macOS that completely removes all remnants of the Eltime USB over Ethernet software (https://www.eltima.com/products/usb-over-ethernet/)

## xcodecleanxattr

An invaluable script that strips all images files from the metadata that is not tolerated by Xcode - this usually shows up as a build error that points to newly added images.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/xcodecleanxattr``
3. Run it by simply executing ``xcodecleanxattr`` from the directory that holds the images in question
