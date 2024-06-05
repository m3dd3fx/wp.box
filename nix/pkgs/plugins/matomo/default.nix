{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Connect Matomo";
  version = "1.0.30";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/wp-piwik.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}