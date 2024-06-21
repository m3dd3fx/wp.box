#
# Function to generate the Flake output for a given system.
#
{ # System label---e.g. "x86_64-linux", "x86_64-darwin", etc.
  system,
  # The Nix package set for the input system, possibly with
  # overlays from other Flakes bolted on.
  sysPkgs,
  ...
}:
let
  theme-hello-elementor = import ./wp-themes/hello-elementor {
    pkgs = sysPkgs;
  };
  theme-responsive = import ./wp-themes/responsive {
    pkgs = sysPkgs;
  };
  plugin-jetpack = import ./plugins/Jetpack {
    pkgs = sysPkgs;
  };
  plugin-connect-matomo = import ./plugins/matomo {
    pkgs = sysPkgs;
  };
in rec {
    inherit theme-hello-elementor theme-responsive
            plugin-jetpack plugin-connect-matomo;
}
