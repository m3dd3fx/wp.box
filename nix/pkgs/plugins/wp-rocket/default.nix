{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "WP Rocket";
  version = "1.3.6";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/permalink-manager.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}