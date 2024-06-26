{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Redirection";
  version = "5.4.2";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/redirection.${version}.zip";
    hash = "sha256-7kkR+6o3GxthFp3i/6pIOstxo1qK3cBjEp9s1yay7Rw=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}
