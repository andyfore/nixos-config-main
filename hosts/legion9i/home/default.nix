{ inputs, pkgs, hostname, ... }:

{
  imports = [
    ../../../modules/home
    ./hyprland.nix
    ./uwsm.nix
    ./power-profiles.nix
  ];
}
