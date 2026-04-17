{ config, pkgs, ... }:

{
  services.power-profiles-daemon.enable = true;
  services.thermald.enable = true;

  environment.systemPackages = with pkgs; [
    config.boot.kernelPackages.cpupower
  ];

  programs.coolercontrol.enable = true;
}
