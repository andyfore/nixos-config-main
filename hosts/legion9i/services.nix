{ config, pkgs, lib, ... }:

{
  services.power-profiles-daemon.enable = true;
  services.thermald.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.fwupd.enable = true;

  powerManagement.cpuFreqGovernor = "powersave";
  powerManagement.cpuFreqGovernor = lib.mkDefault "schedutil";

  environment.systemPackages = with pkgs; [
    config.boot.kernelPackages.cpupower
    powertop
    lm_sensors
    nvme-cli
    brightnessctl
    openrgb-with-all-plugins
  ];

  programs.coolercontrol.enable = true;
}
