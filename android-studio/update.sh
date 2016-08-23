#!/bin/bash

NUMBER_OF_FILES=`ls -1 AndroidStudio-*.tar.gz 2> /dev/null | wc -l`

if [ "$NUMBER_OF_FILES" == "0" ]
then
	echo "There are no AndroidStudio source packages in this directory."
	echo "Please go to https://developer.android.com/studio/index.html to download the .tar.gz file, repack it to  AndroidStudio-VERSION.tar.gz and try again."
	exit
fi


if [ "$NUMBER_OF_FILES" != "1" ]
then
	echo "There are multiple AndroidStudio source packages in this directory."
	echo "Please remove old .tar.gz files and try again."
	exit
fi

VERSION=`ls AndroidStudio-*.tar.gz | sed -r 's/AndroidStudio-([0-9\.]+).tar.gz/\1/'`

cp debian/changelog.dist debian/changelog

dch -v $VERSION -m "New upstream version" -D stable
