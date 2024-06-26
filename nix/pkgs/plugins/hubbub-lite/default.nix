{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Hubbub Lite – Fast, Reliable Social Sharing Buttons";
  version = "1.34.1";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/social-pug.${version}.zip";
    hash = "sha256-UhQR4rOiukSZeDQfWh7+ANh9d1vHF5tx2EG+YdZxx58=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}