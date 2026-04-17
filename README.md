# nixos-config

Personal laptop NixOS config, refactored for multiple hosts.

## Hosts

- `a16` - current ASUS TUF A16
- `legion9i` - future Lenovo Legion 9i placeholder

## Build the current host

```bash
sudo nixos-rebuild switch --flake .#a16
```

## Prepare disks on the A16

```bash
nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode zap_create_mount ./hosts/a16/disko-config.nix
```

## Legion 9i next steps

When the Legion arrives, generate a real hardware configuration for it and add it under `hosts/legion9i/`.
