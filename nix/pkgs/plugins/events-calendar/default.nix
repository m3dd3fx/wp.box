{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "The events calendar";
  version = "6.5.1.4";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/the-events-calendar.${version}.zip";
    hash = "sha256-EjqeOwZRLVEP8zuu2bn/j6F9J0vO5LjEJiv+21kiP8E=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}