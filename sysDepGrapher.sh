#!/bin/bash

grapher="/usr/bin/rpmdep.pl"

dnf list installed | sed 's/\s.*$//' | sed -e 's/.x86_64//g' -e 's/.noarch//g' > installed

INPUT='./installed'

mkdir tmp

while IFS= read -r pkg
do
	echo `$grapher -dot tmp/$pkg.dot $pkg` &
done < './installed'

echo './outputGrapher.sh'

echo 'rm -R tmp installed '
