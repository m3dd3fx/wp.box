{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Recent Posts Widget Advanced";
  version = "3.16";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/wp-rocket_${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}