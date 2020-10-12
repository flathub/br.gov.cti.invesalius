{ pkgs ? import <nixpkgs> {} }:

let
  mach-nix = import (builtins.fetchGit {
    url = "https://github.com/DavHau/mach-nix/";
    ref = "refs/tags/2.4.1";
  });

custom_python = mach-nix.mkPython {
  requirements = ''
    requirements-parser
    pip
    setuptools
  '';
};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      custom_python
      flatpak-builder
    ];
  }
