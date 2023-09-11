{ config, pkgs, ... }:

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
      go
      janet

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

      rakudo
      rustup
      zulu ## Java

      # Runtimes
      bun
      nodejs
      wasmer


      # Build Tools
      clang-tools
      gfortran
      git
      # Other
    ];


    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    #".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    ".config/fish/config.fish".source = dotfiles/config.fish;
    ".config/starship.toml".source = dotfiles/starship.toml;

  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/princem/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
