{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let
  my-pkgs = rWrapper.override {
    packages = with rPackages; [ GENESIS ggplot2 GGally ];
  };
in
mkShell {
  buildInputs = [my-pkgs];
}