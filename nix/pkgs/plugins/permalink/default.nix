{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Permalink Manager";
  version = "2.4.3.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/permalink-manager.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}

