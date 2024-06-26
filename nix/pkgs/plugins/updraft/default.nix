{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "UpdraftPlus: WordPress Backup & Migration Plugin";
  version = "1.24.3";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/updraftplus.${version}.zip";
    hash = "sha256-rxCG9RiOoBPp8Izk9rnetyuHjAdPsjiBoGWh9YB3N38=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}