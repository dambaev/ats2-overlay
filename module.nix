{config, pkgs, options, lib, ...}:
let
  overlay = (import ./overlay.nix);
in
{
  nixpkgs.overlays = [ overlay ];
  environment.systemPackages = with pkgs; [
    ats2
  ];
}