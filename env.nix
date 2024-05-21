let
  pkgs = import <nixpkgs> {};
  unstable = import <unstable> {};
  packages = [
    pkgs.vim
    pkgs.git
    pkgs.jdk21
    pkgs.maven
    pkgs.nodejs-18_x
    pkgs.nodePackages.grunt-cli
    unstable.podman
    pkgs.qemu
    pkgs.ant
    pkgs.shellcheck
    pkgs.neovim
    pkgs.shell_gpt
    pkgs.direnv
    pkgs.yabai
    pkgs.skhd
    pkgs.ripgrep
    pkgs.tmux
    (pkgs.tomcat9.overrideAttrs (finalAttrs: previousAttrs: {
      meta.priority = 0;
    }))
  ];
in
packages
