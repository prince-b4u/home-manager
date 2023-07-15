## Init

- Install nix 
- Run `nix run home-manager/release-<version number> -- init` to create the initial `~/.config/home-manager/home.nix` 
- Delete the `~/.config/home-manager/` and clone this repo in its place
- Change the username in (flake.nix)[flake.nix] and (home.nix)[home.nix]
- Run `nix run home-manager/release-<version number> -- init --switch` to install packages and link dotfiles

## Fish

- Install fish using home-manager 
- register in /etc/shells
- run `.  /home/<username>/.nix-profile/etc/profile.d/nix.fish`
- change default shell to fish

## Podman 

- Does not work in wsl alpine linux use the os package manager version
- podman-compose works fine
