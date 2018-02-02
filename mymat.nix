{ pkgs ? import <nixpkgs> {}, myeigen ? pkgs.eigen } :
pkgs.stdenv.mkDerivation {
  name = "mymat-0.1";
  src = ./.;
  buildInputs = [ pkgs.cmake pkgs.pkgconfig myeigen ];
}