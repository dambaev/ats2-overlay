let
#  nixpkgs = import <nixpkgs>;
  pkgs = import <nixpkgs> {
    config = {};
    overlays = [
      (import ./overlay.nix)
    ];
  };
  shell = pkgs.mkShell {
    buildInputs = pkgs.ats2.buildInputs ++ [ pkgs.valgrind pkgs.gdb ];
  };

in shell
