{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Elementor Default";
  version = "3.22.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/elementor.${version}.zip";
    hash = "sha256-z1+wGYOusAc5h96vQg0lupgVO7P2TAFvMfDgAXKuyks=";   
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}