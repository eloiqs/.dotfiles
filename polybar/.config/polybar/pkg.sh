#!/bin/bash
totalPac=$(checkupdates | wc -l)
totalAur=$(packer -Su | wc -l)

check=$((totalPac + totalAur))
if [[ "$check" != "0" ]]
then
    pac="%{A:termite -e 'packer -Syu' &:}$totalPac%{A}"
    icon="%{F#ec5f67}%{F-}"
    aur="%{A:termite -e 'packer -Syu --aur' &:}$totalAur%{A}"
    echo "$pac $icon $aur"
fi
