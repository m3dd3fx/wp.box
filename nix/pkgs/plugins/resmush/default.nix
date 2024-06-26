{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "reSmush.it";
  version = "1.0.3";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/resmushit-image-optimizer.${version}.zip";
    hash = "sha256-nNLyCWX0X6Jjkb19VTkeDZHKq4cxkrhgz6WpCXdh4uc=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}