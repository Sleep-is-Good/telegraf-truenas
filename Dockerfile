FROM telegraf:1.40

RUN apt update && \
    apt install -y sudo smartmontools nvme-cli

COPY --chmod=755 image_files/entrypoint.sh /entrypoint.sh
COPY --chmod=755 image_files/telegraf.conf /etc/telegraf/telegraf.conf

ENV HOST_ETC=/hostfs/etc
ENV HOST_PROC=/hostfs/proc
ENV HOST_SYS=/hostfs/sys
ENV HOST_VAR=/hostfs/var
ENV HOST_RUN=/hostfs/run
ENV HOST_DEV=/hostfs/dev
ENV HOST_MOUNT_PREFIX=/hostfs
ENV HOST_MNT=/hostfs/mnt
ENV LD_LIBRARY_PATH=/mnt/zfs_libs