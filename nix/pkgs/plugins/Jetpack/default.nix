{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Jetpack – WP Security, Backup, Speed, & Growth";
  version = "13.5";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/jetpack.${version}.zip";
    hash = "sha256-GsMo/baxNRcajC6xX0F/RiOhj91T3Nf82Qdf17OXqYo=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}