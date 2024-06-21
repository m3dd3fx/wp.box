{
  description = "Flake to build and develop 'wordpress.box'.";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }:
  let
    mypkgs = import ./pkgs {

      pkgs = nixpkgs.legacyPackages.aarch64-linux;

    };

    allpkgs = mypkgs // nixpkgs.legacyPackages.aarch64-linux;

    nodes = import ./nodes {
      nixosSystem = nixpkgs.lib.nixosSystem;
      pkgs = allpkgs;
    };
    
  in
     mypkgs // nodes;

}