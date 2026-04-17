{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        #command = "${pkgs.greetd.tuigreet}/bin/tuigreet --cmd niri-session";
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd 'hyprland'";
        user = "greeter";
      };
    };
  };
}
