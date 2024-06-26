{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Index WP MySQL For Speed";
  version = "1.4.18";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/index-wp-mysql-for-speed.${version}.zip";
    hash = "sha256-aSKXH+q2IBQkT+j313OgMe7aVn33OLsCzQtVnTikJFA=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}