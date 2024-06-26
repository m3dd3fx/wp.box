{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Redirection";
  version = "5.4.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/redirection.${version}.zip";
    hash = "sha256-70cz02IEYHvLVSYqzoJmbtDlnSa0O8cQPyajgkfy8u4=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}
