#!/bin/sh

sed -i '27,$d' README.md

for f in $(ls data/backgrounds|sort); do echo \*\*$f\*\*; echo; echo \!\[\]\(data/backgrounds\/$f\); echo; done| tee -a README.md
