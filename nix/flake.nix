{
  description = "Flake to build and develop 'wordpress.box'.";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }:
  let
    mkPkgs = import ./pkgs/mkSysOutput.nix;

    allPkgs = {
      packages = {
        aarch64-darwin = mkPkgs {
          system = "aarch64-darwin";
          sysPkgs = nixpkgs.legacyPackages.aarch64-darwin;
        };
        aarch64-linux = mkPkgs {
          system = "aarch64-linux";
          sysPkgs = nixpkgs.legacyPackages.aarch64-linux;
        };
      };
    };

    overlay = final: prev: {
      wpbox = allPkgs.packages.${prev.system} or {};
    };

    nodes = import ./nodes {
      nixosSystem = nixpkgs.lib.nixosSystem;
      wpbox = self;
    };

  in
    { inherit overlay; } // allPkgs // nodes;
}