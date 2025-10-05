{ config, pkgs, ...}:

{
  # Packages that should be installed to user profile.
  home.packages = with pkgs; [
    pyenv
    nodenv
    tenv
  ];
}
