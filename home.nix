{ config, pkgs, unstable, ... }:

let

  upkgs = with unstable; [
    tailwindcss
    helix

    #Runtimes
    bun

    ##Languages
    swift
    go_1_21
    uiua
    unison-ucm

    ##LSP
    nixpkgs-fmt
    vscode-langservers-extracted
    typescript
    nodePackages.typescript-language-server
    lua-language-server
    marksman
    yaml-language-server
    taplo
  ];
in

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home = {
    homeDirectory = "/home/prince";
    stateVersion = "23.05";
    username = "prince";
    packages = with pkgs; [
      # CLI Tools
      awscli2
      awsebcli
      bat
      bash
      butane
      cmake
      cfssl
      coreutils-full
      darcs
      fd
      fish
      gnumake
      gnupatch
      gzip
      htop
      jq
      lsd
      mercurial
      mariadb
      neovim
      openssh
      openssl
      parallel
      podman-compose
      ripgrep
      rsync
      sshs
      starship
      tealdeer
      terraform
      traceroute
      tree-sitter
      unzip
      vault
      wget
      zip
      yarn
      zoxide

      # Programming languages
      cbqn-replxx
      io
      ghc
      gforth

      ## janet
      janet
      jpm
      ## janet

      ## lua
      lua
      luarocks
      ## lua

      mercury

      ## Ocaml
      ocaml
      opam
      ##

      perl

      ## python
      python311
      python311Packages.pip
      ## python

      racket
      rakudo
      rustup
      zulu ## Java

      # Runtimes
      nodejs
      wasmtime


      # Build Tools
      clang-tools
      gfortran
      git
      # Other
    ] ++ upkgs;
  };

  home.file = {
    ".config/fish/config.fish".source = dotfiles/config.fish;
    ".config/starship.toml".source = dotfiles/starship.toml;
  };

  home.sessionVariables = {
    EDITOR = "hx";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
