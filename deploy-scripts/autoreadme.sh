#!/bin/sh

sed -i '21,$d' README.md

for f in $(ls backgrounds|sort); do echo \*\*$f\*\*; echo; echo \!\[\]\(backgrounds\/$f\); echo; done| tee -a README.md
