{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Yoast Duplicate Post";
  version = "4.5";
    src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/duplicate-post.${version}.zip";
    hash = "sha256-t49CXIDmZtv1iDOzyHyd0JHwTdXFM78dKZnjZcXErFw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}