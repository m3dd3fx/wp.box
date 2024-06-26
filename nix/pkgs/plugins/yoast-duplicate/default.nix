{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Yoast Duplicate Post";
  version = "4.5";
    src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/duplicate-post.${version}.zip";
    hash = "sha256-Ln0nPoRJkQKk1+UECu6AKD0yTyKeruvYd7icMKbtXYY=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}