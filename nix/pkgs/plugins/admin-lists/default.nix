{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Show modified data in admin lists";
  version = "1.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/show-modified-date-in-admin-lists.${version}.zip";
    hash = "sha256-2uE3JlRB+iUTsMNecs1COnPNjOZuh+15OGkSuX5Du08=";
  };               
  installPhase = "mkdir -p $out; cp -R * $out/";
}