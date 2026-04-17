{ pkgs, ... }:

{
  services.power-profiles-daemon.enable = true;
  services.thermald.enable = true;

  environment.systemPackages = with pkgs; [
    cpupower
  ];

  programs.coolercontrol.enable = true;
}
