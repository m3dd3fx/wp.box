{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "The events calendar";
  version = "6.5.1.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/the-events-calendar.${version}.zip";
    hash = "sha256-ONKvCL5JHAf0Y80QTRcHzQiWP5RXTta8H7HFPC2u8VU=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}