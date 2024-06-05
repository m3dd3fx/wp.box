{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "hello-elementor";
  version = "3.0.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/theme/hello-elementor.${version}.zip";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}

