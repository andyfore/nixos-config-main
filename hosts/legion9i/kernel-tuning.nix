{ ... }:

{
  boot.kernelParams = [
    "nvidia-drm.modeset=1"
    "i915.enable_psr=1"
    "i915.enable_dc=4"
    "pcie_aspm.policy=powersupersave"
    "nvme_core.default_ps_max_latency_us=5500"
  ];


}
