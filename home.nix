{ config, pkgs, ...}:

{
  # TODO pleasechange the username & homedirectory to your own
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  # Packages that should be installed to user profile.
  home.packages = with pkgs; [
  
  neofetch
  nnn # terminal file manager
  
  # archives
  zip
  xz
  unzip
  p7zip

  # utils
  ripgrep # recursively searches directories for a regex pattern
  jq # A lightweight and flexible command-lin JSON processor
  yq-go # yaml processor https://github.com/mikefarah/yq
  eza # A modern replacement for `ls`
  fzf # A command-line fuzzy finder
  
  # networking tools
  mtr # A netowrk diagnostic tool
  iperf3
  dnsutils # `dig` + `nslookup`
  ldns # replacement of `dig`, it provide the command `drill`
  aria2 # A lightweight multi-protocol & multi-source command-line download utilty
  socat # replacement of openbsd-netcat
  nmap # A utility for netowrk discovery and security auditing
  ipcalc # it is calculator for the IPv4/v6 addresses

  # misc
  cowsay
  file
  which
  tree
  gnused
  gnutar
  gawk
  zstd
  gnupg

  # nix related
  #
  #  it provides the command `nom` works just like `nix`
  #  with more detail log output  
  nix-output-monitor
  

  # productivity 
  hugo # static site generator
  glow # markdown previewer in terminal

  btop # replacement of htop/nmon
  iotop # io monitoring
  iftop # network monitoring

  #sytem call monitoring
  strace # system call monitoring
  ltrace # library call monitoring
  lsof # list open files

  # system tools
  sysstat
  lm_sensors # for `sensors` command
  ethtool
  pciutils # lspci
  usbutils #lsusb
  ];
  
  # you can update home Manager without changing this value. 
  # See the home Manager release notes for list of state version
  # changes in each releace.
  home.stateVersion = "24.05";

  # Let home Manager install and manage itself
  programs.home-manager.enable = true;
}
