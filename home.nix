{ pkgs, unstable, ... }:

let

  upkgs = with unstable; [
    tailwindcss
    helix
    air
    
    #Runtimes
    bun

    ##Languages
    hare
    factor-lang    
    uiua
    unison-ucm
    zig
    
    ##LSP
    nil
    nixpkgs-fmt
    vscode-langservers-extracted
    typescript
    nodePackages.typescript-language-server
    lua-language-server
    marksman
    yaml-language-server
    taplo
    zls

    ##Game engines
    raylib
  ];
in

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home = {
    homeDirectory = "/home/prince";
    stateVersion = "23.11";
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
      lazygit
      lsd
      mercurial
      mariadb
      neovim
      openssl
      parallel
      podman-compose
      ripgrep
      rsync
      sshs
      starship
      tealdeer
      traceroute
      tree-sitter
      unzip
      vault
      wget
      wl-clipboard
      yarn
      zip
      zoxide

      # Programming languages
      cbqn-replxx
      io
      ghc
      gforth
      go

      ## janet
      janet
      jpm
      ## janet
      
      jelly
      kotlin
      kotlin-language-server

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
      python311Packages.ruff-lsp
      python311Packages.python-lsp-server
      ## python

      racket
      rakudo
      rustup
      zulu ## Java

      # Runtimes
      nodejs_21
      wasmtime


      # Build Tools
      #clang-tools
      libclang
      gfortran
      git
      lldb
      # Other
    ] ++ upkgs;
  };

  home.file = {
    ".config/fish/config.fish".source = dotfiles/fish/config.fish;
    ".config/starship.toml".source = dotfiles/starship.toml;
    ".config/helix/languages.toml".source = dotfiles/helix/languages.toml;
    ".config/helix/config.toml".source = dotfiles/helix/config.toml;
    ".config/wezterm/wezterm.lua".source = dotfiles/wezterm/wezterm.lua;
  };

  home.sessionVariables = {
    EDITOR = "hx";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
