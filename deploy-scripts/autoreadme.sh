#!/bin/sh

for f in $(ls data/backgrounds|sort); do
    echo \*\*$f\*\*;
    echo;
    echo \!\[\]\(data/backgrounds\/$f\);
    echo;
done > backgrounds.md
