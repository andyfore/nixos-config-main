{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix

    ../../modules/nixos/boot.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/graphics.nix
    ../../modules/nixos/audio.nix
    ../../modules/nixos/bluetooth.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/packages.nix
    ../../modules/nixos/greetd.nix
    ../../modules/nixos/hyprland.nix
    ../../modules/nixos/services.nix
    ../../modules/nixos/storage-permissions.nix
  ];

  networking.hostName = "a16";
  time.timeZone = "America/New_York";

  system.stateVersion = "26.05";
}
