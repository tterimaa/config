let
  pkgs = import <nixpkgs> {};
  packages = [
    pkgs.vim
    pkgs.python311Full
    pkgs.git
    pkgs.jdk21
    (pkgs.maven.override { jdk = pkgs.jdk21; })
    pkgs.nodejs-18_x
    pkgs.nodePackages.grunt-cli
    pkgs.podman
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
