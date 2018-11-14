# Some scripts I use often

## brewup
A macOS shell script to update, upgrade and clean your brew installation that shows a Notification Center notification when complete.

Ideally, you'd want this in a directory that is within your PATH, such as ``~/bin``.

If you do not have one directory like that, I strongly suggest to make one and edit your ``~/.bash_profile`` accordingly by adding:
``export PATH="/Users/yourusername/bin":$PATH``

Make it executable with ``chmod u+x ~/bin/brewup`` and just run it from your Terminal by issuing ``brewup``

## clean_kernel_headers.sh

A BASH script that I've found a while back at the Ubuntu Forums - it basically cleans all the unused kernel header files and associated junk that generally you would not need thus freeing up some valuable storage space.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/clean_kernel_headers.sh``
3. Run it by simply executing ``clean_kernel_headers.sh`` from anywhere

## dhcp_leases

A Python script that shows the currently active DHCP leases, courtesy of the kind fellow at https://askubuntu.com/a/553387
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/dhcp_leases``
3. Run it by simply executing ``dhcp_leases`` from anywhere

## filevault_progress

A macOS shell script that shows the FileVault / APFS encryption process for all ongoing drives.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/filevault_progress``
3. Run it by simply executing ``filevault_progress`` from anywhere

## ipchange.sh

A BASH script to detect and email the newly associated IPv4 address of a selected network interface, it queries the PHP file sitting over at my blog - read more about it in my relevant post here: https://gaborhargitai.hu/your-external-ip-address/

## remove_evusb.sh

A BASH script for macOS that completely removes all remnants of the Eltime USB over Ethernet software (https://www.eltima.com/products/usb-over-ethernet/)

## xcodecleanxattr

An invaluable script that strips all images files from the metadata that is not tolerated by Xcode - this usually shows up as a build error that points to newly added images.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/xcodecleanxattr``
3. Run it by simply executing ``xcodecleanxattr`` from the directory that holds the images in question

## pronvert_dir

Converts all files that do not have '-x265.' or '.h265.' in their name to HEVC/x265 using FFmpeg. Warns if you do not run it in a separate 'screen' as conversions tend to run for a long time. 'caffeinate' is macOS command to prevent the system from entering sleep mode. Ideally, the first audio track will be used and hard compressed to AAC 128k Stereo. Bad chapter data is discarded along with subtitles - although these can be altered by using a combination of the commented out commands.
1. Put this within your PATH, such as ``~/bin``.
2. Make it executable with ``chmod u+x ~/bin/pronvert_dir``
3. Run it by simply executing ``pronvert_dir`` from the directory that holds the video files in question

Sample output:

``[2018-11-14 06:33:10] Converting: video1``
``frame=94768 fps= 17 q=-0.0 Lsize=  448349kB time=00:52:42.09 bitrate=1161.5kbits/s speed=0.556x``
``[2018-11-14 08:07:55] Finished in 94 minutes and 45 seconds``

``[2018-11-14 08:07:55] Converting: totally_not_porn``
``frame=37834 fps=7.0 q=-0.0 Lsize=  318611kB time=00:26:18.00 bitrate=1654.0kbits/s speed=0.294x``
``[2018-11-14 09:37:24] Finished in 89 minutes and 29 seconds``
