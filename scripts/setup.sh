#!/bin/bash

# Run this in a dataset made for telegraf. Update paths in the compose file accordingly
current_dir=`pwd`

mkdir $current_dir/zfs_libs

# These files change over time. Will need to get the current latest files if copying/mounting them into the container
cp /lib/x86_64-linux-gnu/libnvpair.so.3 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libzfs.so.6 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libbsd.so.0 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libc.so.6 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libzfs_core.so.3 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libuutil.so.3 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libm.so.6 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libcrypto.so.3 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libz.so.1 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libpthread.so.0 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libdl.so.2 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libmd.so.0 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libuuid.so.1 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/librt.so.1 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libblkid.so.1 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/libudev.so.1 $current_dir/zfs_libs/
cp /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 $current_dir/zfs_libs/
cp /usr/lib/zfs-linux/zpool_influxdb $current_dir/zfs_libs/

chown -R 0:0 $current_dir
chmod -R 777 $current_dir

ln -s /etc $current_dir/etc
ln -s /proc $current_dir/proc
ln -s /sys $current_dir/sys
ln -s /var $current_dir/var
ln -s /run $current_dir/run
ln -s /dev $current_dir/dev