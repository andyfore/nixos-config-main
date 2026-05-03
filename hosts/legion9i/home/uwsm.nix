{ ... }:

{
  home.file.".config/uwsm/env-hyprland".text = ''
    export AQ_DRM_DEVICES=/dev/dri/intel-igpu
  '';

  home.file.".config/uwsm/env".text = ''
    export MOZ_ENABLE_WAYLAND=1
    export QT_QPA_PLATFORM=wayland
    export SDL_VIDEODRIVER=wayland
    export WLR_NO_HARDWARE_CURSORS=1
  '';
}
