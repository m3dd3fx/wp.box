{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Child Theme Configurator";
  version = "2.6.6";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/child-theme-configurator.${version}.zip";
    hash = "sha256-UH+YVy7eSu8x52EnU1208AwSoLWjkyXiq6dmCHFSxL8=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}