{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "reSmush.it";
  version = "1.0.3";
  src = pkgs.fetchzip {
    url = "https://downloads.wordpress.org/plugin/resmushit-image-optimizer.${version}.zip";
    hash = "sha256-QXbnB620A7Euj5LDUXaJbuhYiVwybFYJSimVaaFcrf8=";
  };
  installPhase = "mkdir -p $out; cp -R * $out/";
}