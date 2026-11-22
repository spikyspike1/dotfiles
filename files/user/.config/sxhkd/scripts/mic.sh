#!/bin/bash

if [[ $(pactl get-source-mute alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__Mic1__source | awk '{print $2}') = "no" ]]; then pactl set-source-mute alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__Mic1__source 1 && polybar-msg hook mic 1; else pactl set-source-mute alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__Mic1__source 0 && polybar-msg hook mic 2; fi
