let
  pkgs = import <nixpkgs> {};
  # unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/b644d97bda6dae837d577e28383c10aa51e5e2d2.tar.gz") {};
  packages = [
    pkgs.vim
    pkgs.git
    pkgs.jdk
    pkgs.maven
    # unstable.jdk21
    # (unstable.maven.override { jdk = unstable.jdk21; })
    pkgs.nodejs-18_x
    pkgs.nodePackages.grunt-cli
    pkgs.podman
    pkgs.qemu
    pkgs.ant
    pkgs.shellcheck
    pkgs.neovim
    (pkgs.tomcat9.overrideAttrs (finalAttrs: previousAttrs: {
      meta.priority = 0;
    }))
  ];
in
packages
