let
  pkgs = import <nixpkgs> {};

  dotnix =
    [
      # Sourced directly from Nixpkgs
      pkgs.direnv
      pkgs.kubectl
      pkgs.kubectx
      pkgs.oh-my-zsh
    ];

in dotnix