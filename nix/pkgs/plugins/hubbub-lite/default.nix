{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Hubbub Lite – Fast, Reliable Social Sharing Buttons";
  version = "1.34.1";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/social-pug.${version}.zip";
    hash = "sha256-fP4GJ46UeY6dw+K7+ahvMLCJ7LQbp8JftTC1L9El93Y=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}