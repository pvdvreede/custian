FROM debian:jessie
MAINTAINER Paul Van de Vreede <pvdvreede@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

ENV release_cache /var/local/mirrors
ENV mirror_dir /mirrors/debian
ENV tarball /opt/mirror/deboostrap.tgz
ENV release jessie
ENV chroot_dir /app/chroot
ENV image_dir  /app/image

RUN mkdir -p dirname $tarball

RUN apt-get update
RUN apt-get install -y live-build debootstrap syslinux squashfs-tools genisoimage memtest86+

#RUN cdebootstrap \
#      --verbose \
#      --make-tarball=$tarball \
#      $release $release_cache http://httpredir.debian.org/debian/

