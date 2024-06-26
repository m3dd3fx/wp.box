{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Download Manager Pro";
  version = "6.5.4";
  src = pkgs.fetchzip {
    url = "https://repo.martel-consulting.ch/download-manager-${version}.zip";
    hash = "sha256-AO5PWqXati9AYE5M0WTCqAOj1B9Ws5g71dlqiU9dAFo=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}
