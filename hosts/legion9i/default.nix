{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix
    ./services.nix
    ./gpu.nix
    ./kernel-tuning.nix
    ./drm-symlinks.nix

    ../../modules/nixos/boot.nix
    ../../modules/nixos/hardware.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/graphics/common.nix
    ../../modules/nixos/audio.nix
    ../../modules/nixos/bluetooth.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/packages.nix
    #../../modules/nixos/greetd.nix
    ../../modules/nixos/hyprland.nix
    ../../modules/nixos/services.nix
    ../../modules/nixos/storage-permissions.nix
  ];

  networking.hostName = "voyager2";
  time.timeZone = "America/New_York";

  system.stateVersion = "26.05";
}
