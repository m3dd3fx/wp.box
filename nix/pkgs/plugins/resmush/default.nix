{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "reSmush.it";
  version = "1.0.3";
  src = pkgs.fetchzip {
    url = "hhttps://downloads.wordpress.org/plugin/resmushit-image-optimizer.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}