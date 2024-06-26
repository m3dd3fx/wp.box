{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Elementor Website Builder – More than Just a Page Builder";
  version = "3.7.7";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/elementor-pro.zip";
    hash = "sha256-0v5aNzfz/zk5pIrg92XyntL7yoPcoSNeApC7WBk+Ztg=";   
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}