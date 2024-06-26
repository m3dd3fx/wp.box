{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Show modified data in admin lists";
  version = "1.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/show-modified-date-in-admin-lists.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}