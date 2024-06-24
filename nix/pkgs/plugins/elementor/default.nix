{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Elementor Website Builder – More than Just a Page Builder";
  version = "3.22.1";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/elementor.${version}.zip";
    hash = "sha256-ua8ZR1D5iU/SNHzLpEjOdmWaw5be91USBq5BIlVPjf0=g";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}