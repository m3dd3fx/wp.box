{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Better Search Replace";
  version = "1.4.7";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/better-search-replace.zip";
    hash = "sha256-lGBje/PnSSczWg5Ob/kPJIV2QlDB3yNPcaUpxKCf5bo=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}