{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Wordpress Importer";
  version = "0.8.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/wordpress-importer.${version}.zip";
    hash = "sha256-nw0sLYL27Gj3Uwe2X3I92kStfc55McMHqIctBOycomg=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}