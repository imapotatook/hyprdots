#!/bin/bash

pipewire_running=$(ps -fC pipewire | grep pipewire | awk '{print $8}')
pipewire_pulse_running=$(ps -fC pipewire-pulse | grep pipewire-pulse | awk '{print $8}'  )
wireplumber_running=$(ps -fC wireplumber | grep wireplumber | awk '{print $8}'  )
#hyprland_running=$(ps -fC Hyprland | grep Hyprland | awk '{print $8}'  )

if [[ $pipewire_running == "pipewire" && $pipewire_pulse_running == "pipewire-pulse" && $wireplumber_running ==>
    then
    echo "Already running"
    else
    pipewire & pipewire-pulse & wireplumber
fi