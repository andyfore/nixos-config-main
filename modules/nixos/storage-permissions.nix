{ config, lib, pkgs, ... }:

let
  hasDataMount = lib.hasAttr "/data" config.fileSystems;
  hasAndy = lib.hasAttr "andyfore" config.users.users;
in
{
  systemd.services.data-subdirs = lib.mkIf (hasDataMount && hasAndy) {
    description = "Create /data subdirectories for andyfore";
    wantedBy = [ "multi-user.target" ];
    after = [ "data.mount" ];
    requires = [ "data.mount" ];

    unitConfig.ConditionPathIsMountPoint = "/data";

    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
      ExecStart = pkgs.writeShellScript "create-data-subdirs" ''
        install -d -m 0755 -o andyfore -g users /data/code
        install -d -m 0755 -o andyfore -g users /data/games
        install -d -m 0755 -o andyfore -g users /data/documents
        install -d -m 0755 -o andyfore -g users /data/pictures
      '';
    };
  };
}
