{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "hello-elementor";
  version = "3.0.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/theme/hello-elementor.${version}.zip";
    hash = "sha256-/OriCGN7D7Q78vTis++WagYQX3lbFvulWlSvv2UcZo8=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}

