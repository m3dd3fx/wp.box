{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Recent Posts Widget Advanced";
  version = "3.16";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/wp-rocket_${version}.zip";
    hash = "sha256-3qw/gTsVvxZIDbW/pKaLigb0KOFN44RmI0d7vR31s5k=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}