let
  pkgs = import <nixpkgs> {};
in
{
  mymat = import ./mymat.nix { inherit pkgs; myeigen=pkgs.eigen3_3; };
}