{
  description = "Flake to build and develop 'wordpress.box'.";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = import ./pkgs {

        pkgs = nixpkgs.legacyPackages.aarch64-linux;
    
    };

    nodes = import ./nodes {
      nixosSystem = nixpkgs.lib.nixosSystem;
    };
    
  in
     pkgs // nodes;

}