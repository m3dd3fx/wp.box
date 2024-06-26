{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Wordpress Importer";
  version = "0.8.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/wordpress-importer.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}