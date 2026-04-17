{ config, pkgs, ... }:

{
  services.xserver.enable = false;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.libinput.enable = true;

}
