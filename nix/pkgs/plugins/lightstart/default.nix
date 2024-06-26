{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "LightStart – Maintenance Mode";
  version = "2.6.11";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/wp-maintenance-mode.${version}.zip";
    hash = "sha256-bl2Um5GL4Rzj8FPmxkOubLdwA0wHSqBlmuWy10emHCA=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}