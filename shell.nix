let
  pkgs = import <nixpkgs> {};
  mach-nix = import (builtins.fetchGit {
    url = "https://github.com/DavHau/mach-nix/";
    ref = "refs/tags/3.4.0";
  }) {
    # optionally bring your own nixpkgs
    pkgs = import <nixpkgs> {};

    # optionally specify the python version
    python = "python38";

    # optionally update pypi data revision from https://github.com/DavHau/pypi-deps-db
    # pypiDataRev = "some_revision";
    # pypiDataSha256 = "some_sha256";
  };

customPython = mach-nix.mkPython {
  requirements = ''
  requirements-parser
  setuptools
  pip
  '';
};

in
pkgs.mkShell {
  name = "flatpak";
  buildInputs = with pkgs; [
    customPython
    flatpak-builder
    cmake
  ];
}
