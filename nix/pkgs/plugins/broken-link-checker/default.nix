{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Broken Link Checker";
  version = "2.2.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/broken-link-checker.${version}.zip";
    hash = "sha256-JhMNXcc6SkUlZElRtQPKcuug0quEGeb+Dz4aTik9LfM=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}