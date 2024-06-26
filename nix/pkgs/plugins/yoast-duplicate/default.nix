{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Yoast Duplicate Post";
  version = "4.5";
    src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/duplicate-post.${version}.zip";
    hash = "sha256-XKwVK+l+lMq2IGTFcR3iuyJAaCo2odcqvlRTg8CjtLI=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}