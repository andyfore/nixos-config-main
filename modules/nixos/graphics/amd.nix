{ config, pkgs, ... }:

{
  hardware.amdgpu = {
    # load the amdgpu driver earlier
    initrd.enable = true;
    # rocm clr drivers
    opencl.enable = true;
  };
}
