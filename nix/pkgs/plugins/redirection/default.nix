{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Redirection";
  version = "5.4.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/redirection.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}
