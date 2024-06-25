{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Elementor Website Builder – More than Just a Page Builder";
  version = "3.22.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/elementor.${version}.zip";
    hash = "sha256-zfZ0WQuIpy6Qvqxfzn3aYDSowfb7/NuL/lPkFpfjdjw=";   
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}