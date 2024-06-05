{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "responsive";
  version = "4.7.9";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/theme/responsive.${version}.zip";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}