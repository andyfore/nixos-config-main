{ inputs, pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./waybar.nix
    ./fuzzel.nix
    ./mako.nix
    ./git.nix
    ./shell.nix
    ./packages.nix
    ./hypridle.nix
  ];

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  home.username = "andyfore";
  home.homeDirectory = "/home/andyfore";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
