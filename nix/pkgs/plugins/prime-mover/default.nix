{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "Migrate WordPress Website & Backups – Prime Mover";
  version = "1.9.9";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/prime-mover.${version}.zip";
    hash = "sha256-ua8ZR1D5iU/SNHzLpEjOdmWaw5be91USBq5BIlVPjf0=g";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}

