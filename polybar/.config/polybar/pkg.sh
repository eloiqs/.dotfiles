#!/bin/bash
totalPac=$(checkupdates | wc -l)
totalAur=$(packer -Su | wc -l)

check=$((totalPac + totalAur))
if [[ "$check" != "0" ]]
then
    pac="%{A:termite -e 'yaourt -Syu' &:}$totalPac%{A}"
    icon="%{F#ec5f67}%{F-}"
    aur="%{A:termite -e 'yaourt -Syu --aur' &:}$totalAur%{A}"
    echo "$pac $icon $aur"
fi
