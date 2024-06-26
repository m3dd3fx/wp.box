{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "WP Rocket";
  version = "1.3.6";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/permalink-manager.zip";
    hash = "sha256-GIDZ9BHNV0LGST3U1ts+dV0QgL5j9kSKsqkyxIT+hFk=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}