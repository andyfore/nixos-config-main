{ ... }:

{
  home.file.".local/bin/legion-battery" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash
      hyprctl keyword monitor "eDP-2,3200x2000@60,0x0,2"
      brightnessctl -d intel_backlight set 30%
      powerprofilesctl set power-saver
    '';
  };

  home.file.".local/bin/legion-performance" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash
      hyprctl keyword monitor "eDP-2,3200x2000@165,0x0,2"
      brightnessctl -d intel_backlight set 70%
      powerprofilesctl set performance
    '';
  };
}
