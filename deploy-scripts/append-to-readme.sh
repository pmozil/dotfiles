#!/bin/sh

sed -i '35,$d' README.md

for f in $(ls backgrounds|sort); do echo \*\*$f\*\*\:; echo; echo \!\[\]\($f\); echo; done| tee -a README.md
