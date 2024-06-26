{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "The events calendar - pro";
  version = "6.5.0";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/events-calendar-pro.${version}.zip";
    hash = "sha256-LKms3dj8lVTxIkiyXaaLfkaBLHLJgklQZxL7k3zeMU4=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}