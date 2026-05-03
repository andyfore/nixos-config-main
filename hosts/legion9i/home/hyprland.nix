{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;

    settings = {
      monitor = [
        "eDP-2,3200x2000@60,0x0,2"
      ];

      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        ",XF86MonBrightnessUp, exec, brightnessctl -d intel_backlight -n10 set 5%+"
        ",XF86MonBrightnessDown, exec, brightnessctl -d intel_backlight -n10 set 5%-"
      ];

      bind = [
        "$mod, F9, exec, ~/.local/bin/legion-battery"
        "$mod, F10, exec, ~/.local/bin/legion-performance"
      ];
    };
  };
}
