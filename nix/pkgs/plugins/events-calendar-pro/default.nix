{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "The events calendar - pro";
  version = "6.5.0";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/events-calendar-pro.${version}.zip";
    hash = "sha256-JccphC4KDXn1ujrgFy2C4SIZ7wDOfaIxMkYTwF9sw0A=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}