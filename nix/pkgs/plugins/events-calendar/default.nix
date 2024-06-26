{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "The events calendar";
  version = "6.5.1.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/the-events-calendar.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}