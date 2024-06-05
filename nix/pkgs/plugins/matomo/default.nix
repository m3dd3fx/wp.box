{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Connect Matomo";
  version = "1.0.30";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/wp-piwik.${version}.zip";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}