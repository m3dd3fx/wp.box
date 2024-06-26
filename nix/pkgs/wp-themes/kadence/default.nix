{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Kadence";
  version = "1.2.5";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/theme/kadence.${version}.zip";
    hash = "sha256-6eMSdiAJIld6IgLldePJ6PsFjjznoLCWg9PTCT9BjFU=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}
