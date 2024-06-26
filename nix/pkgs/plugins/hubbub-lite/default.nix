{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Hubbub Lite – Fast, Reliable Social Sharing Buttons";
  version = "1.34.1";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/social-pug.${version}.zip";
    hash = "sha256-aSKXH+q2IBQkT+j313OgMe7aVn33OLsCzQtVnTikJFA=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}