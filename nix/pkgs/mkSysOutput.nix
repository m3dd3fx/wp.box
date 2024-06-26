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

  # LIST OF PACKAGED AND USABLE THEMES 
  theme-hello-elementor = import ./wp-themes/hello-elementor {
    pkgs = sysPkgs;
  };
  theme-responsive = import ./wp-themes/responsive {
    pkgs = sysPkgs;
  };
  theme-kadence = import ./wp-themes/kadence {
    pkgs = sysPkgs;
  };

  # LIST OF PACKAGED AND USABLE THEMES 
  plugin-jetpack = import ./plugins/Jetpack {
    pkgs = sysPkgs;
  };
  plugin-connect-matomo = import ./plugins/matomo {
    pkgs = sysPkgs;
  };
  plugin-better-search-replace = import ./plugins/better-search-replace {
    pkgs = sysPkgs;
  };
  plugin-broken-link-checker = import ./plugins/broken-link-checker {
    pkgs = sysPkgs;
  };
  plugin-child-theme-configurator = import ./plugins/child-theme-configurator {
    pkgs = sysPkgs;
  };
  plugin-download-manager-pro = import ./plugins/download-manager-pro {
    pkgs = sysPkgs;
  };
  plugin-elementor = import ./plugins/elementor {
    pkgs = sysPkgs;
  };
  plugin-elementor-pro = import ./plugins/elementor-pro {
    pkgs = sysPkgs;
  };
  plugin-hubbub-lite = import ./plugins/hubbub-lite {
    pkgs = sysPkgs;
  };
  plugin-index-wp-mysql = import ./plugins/index-wp-mysql {
    pkgs = sysPkgs;
  };
  plugin-kadence-pro = import ./plugins/kadence-pro {
    pkgs = sysPkgs;
  };
  plugin-lightstart = import ./plugins/lightstart {
    pkgs = sysPkgs;
  };
  plugin-permalink = import ./plugins/permalink {
    pkgs = sysPkgs;
  };
  plugin-redirection = import ./plugins/redirection {
    pkgs = sysPkgs;
  };
  plugin-resmush = import ./plugins/resmush {
    pkgs = sysPkgs;
  };
  plugin-admin-lists = import ./plugins/admin-lists {
    pkgs = sysPkgs;
  };
  plugin-events-calendar = import ./plugins/events-calendar {
    pkgs = sysPkgs;
  };
  plugin-events-calendar-pro = import ./plugins/events-calendar-pro {
    pkgs = sysPkgs;
  };
  plugin-updraft = import ./plugins/updraft {
    pkgs = sysPkgs;
  };
  plugin-wordpress-importer = import ./plugins/wordpress-importer {
    pkgs = sysPkgs;
  };
  plugin-recent-posts = import ./plugins/recent-posts {
    pkgs = sysPkgs;
  };
  plugin-wp-rocket = import ./plugins/wp-rocket {
    pkgs = sysPkgs;
  };
  plugin-yoast-duplicate = import ./plugins/yoast {
    pkgs = sysPkgs;
  };

in rec {
    inherit theme-hello-elementor theme-responsive theme-kadence
            plugin-wordpress-importer plugin-recent-posts plugin-wp-rocket
            plugin-yoast-duplicate
            plugin-jetpack plugin-child-theme-configurator plugin-elementor 
            plugin-index-wp-mysql plugin-kadence-pro plugin-lightstart
            plugin-events-calendar plugin-events-calendar-pro plugin-updraft
            plugin-permalink plugin-redirection plugin-resmush plugin-admin-lists
            plugin-elementor-pro plugin-hubbub-lite plugin-download-manager-pro
            plugin-broken-link-checker plugin-better-search-replace plugin-connect-matomo;
}
