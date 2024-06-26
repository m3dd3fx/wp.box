{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Kadence Theme Pro";
  version = "1.0.20";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/kadence-pro.${version}.zip";
    hash = "sha256-QT3qGqOKP5bj17H/glxayzp7k/TTgPk1uQBirMBUy4I=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}
