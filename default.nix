let
  pkgs = import <nixpkgs> {};

  dotnix = with pkgs;
    [
      # customized packages
      git
      tmux

      # Sourced directly from Nixpkgs
      pkgs.direnv
      pkgs.kubectl
      pkgs.kubectx
      pkgs.oh-my-zsh
      pkgs.wget
    ];

  # Git with config baked in
  git = import ./git (
    { inherit (pkgs) makeWrapper symlinkJoin writeTextFile;
      git = pkgs.git;
    });

  # Tmux with a custom tmux.conf baked in
  tmux = import ./tmux (with pkgs;
    { inherit
        makeWrapper
        symlinkJoin
        ;
      tmux = pkgs.tmux;
    });

  # Vim with a custom vimrc and set of packages
  vim = pkgs.callPackage ./vim
    { inherit (pkgs) symlinkJoin makeWrapper;
    };

in dotnix