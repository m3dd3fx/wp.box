{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "UpdraftPlus: WordPress Backup & Migration Plugin";
  version = "1.24.3";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/updraftplus.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}