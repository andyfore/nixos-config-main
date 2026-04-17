{pkgs, lib, hostname, ...}:

{
  home.packages = 
    # Core System Utilities
    (with pkgs; [
      libnotify          # Desktop notifications
      pwvucontrol        # PipeWire volume control
      btop               # System monitor
      lm_sensors         # Hardware sensors
      nvtopPackages.nvidia # GPU monitoring for btop
      udiskie
      alacritty
      networkmanagerapplet
      pavucontrol
      brightnessctl
      playerctl
      waybar
      fuzzel
      grim
      wl-clipboard
      slurp
      swaybg
      xwayland-satellite
      networkmanagerapplet
    ]) ++

    # File Manager
    (with pkgs; [
      thunar              # GUI file manager with drag-and-drop
      thunar-volman       # Automatic device management
      thunar-archive-plugin  # Archive file support
      thunar-vcs-plugin
      thunar-shares-plugin
      thunar-media-tags-plugin
    ]) ++
    
    # CLI Tools - themed with Catppuccin
    (with pkgs; [
      eza                # Modern 'ls' replacement
      bat                # Modern 'cat' with syntax highlighting
      fzf                # Fuzzy finder
      zoxide             # Smart 'cd' command
      gh                 # GitHub CLI
    ]) ++
    
    # Fonts and Themes
    (with pkgs; [
      nerd-fonts.jetbrains-mono  # Programming font with icons
      papirus-icon-theme
      themix-gui
      libsForQt5.qtstyleplugin-kvantum # Qt theme engine for Catppuccin
      qt6Packages.qtstyleplugin-kvantum # Qt6 theme engine
      nerd-fonts.hack
      cascadia-code
      ibm-plex
      nerd-fonts.zed-mono
      corefonts
    ]) ++
    
    
    # Essential Development Tools
    (with pkgs; [
      claude-code        # AI coding assistant
      python3            # Python interpreter
      uv                 # Python tool runner (pipx alternative)
      nodejs             # JavaScript runtime
      jq
    ]) ++
    
    # Media and Screenshot Tools
    (with pkgs; [
      grim               # Wayland screenshot tool
      slurp              # Screen area selection
      wl-clipboard       # Wayland clipboard
      cliphist           # Clipboard history manager
      loupe              # Image viewer
      cider              # Apple Music client
      spotify
      mesa-demos
    ]) ++
    
    # Gaming
    (with pkgs; [
      steam              # Gaming platform
      protonup-qt        # Proton version manager
      gamemode           # Game performance optimization
      gamescope          # Gaming compositor
      vulkan-tools       # Graphics debugging tools
      #prismlauncher      # Minecraft launcher (maintained alternative)
      wowup-cf           # World of Warcraft addon manager (CurseForge)
      #r2modman           # Thunderstore mod manager (Risk of Rain 2, Lethal Company, etc.)
    ]) ++
    
    # Productivity Applications
    (with pkgs; [
      obsidian           # Note-taking and knowledge management
      brave
    ]) ++
    
    # Communication (Unstable)
    (with pkgs; [
      discord            # Voice and text chat
      signal-desktop
      signal-cli
    ]) ++
    
    # Audio Production Tools
    (with pkgs; [
      audacity           # Free audio editor
      sox                # Sound processing library
      alsa-utils         # ALSA utilities (PipeWire compatible)
      reaper             # Professional DAW
      ffmpeg-full        # Comprehensive media conversion
      vlc                # Media player with codec support
    ]) ++

    # Hyprland specific
    (with pkgs; [
      hyprpaper
      hyprlock
      hypridle
      hyprland-protocols
      hyprpicker
      hyprwayland-scanner
      hyprpolkitagent
      hyprsunset
      pyprland
      #hyprlandPlugins.hyprexpo
      #hyprlandPlugins.hyprspace
      #hyprlandPlugins.hyprgrass
      #hyprlandPlugins.hypr-dynamic-cursors
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
      waypaper
      swayosd
    ]) ++

    # Utilities
    (with pkgs; [
      openrgb-with-all-plugins
      gnome-disk-utility
      seahorse
      carapace
      onefetch
      p7zip
      powertop
    ]) ++

    lib.optionals (hostname == "legion9i") [
      pkgs.lenovo-legion
    ];
}
