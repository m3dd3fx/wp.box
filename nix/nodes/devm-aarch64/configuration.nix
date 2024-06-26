{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = [
    pkgs.eza
    pkgs.bat
    pkgs.dogdns
    pkgs.git
    pkgs.wordpress6_4
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Host basic configuration  
  networking.hostName = "devm";
  time.timeZone = "Europe/Amsterdam";
  system.stateVersion = "23.11";
  
  # Enables a firewall and opens spefified ports
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 80 443 ];
  };

  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";

  services.wordpress.webserver = "nginx";

  services.nginx = {
    recommendedOptimisation = true;
    recommendedTlsSettings = true;
    recommendedGzipSettings = true;
  };

  services.wordpress.sites."localhost".package = pkgs.wordpress6_4;

  services.wordpress.sites."localhost" = {
    settings = {
      WP_SITEURL = "http://127.0.0.1/";
      WP_HOME = "http://127.0.0.1/";
	    WP_MEMORY_LIMIT = "512M";
      WP_MAX_MEMORY_LIMIT = "1024M";
	    WP_DEBUG = true;
      WP_DEBUG_LOG = true;
    };

    plugins = {
      plugin-connect-matomo = pkgs.wpbox.plugin-connect-matomo;
      plugin-jetpack = pkgs.wpbox.plugin-jetpack;
      plugin-better-search-replace = pkgs.wpbox.plugin-better-search-replace;
      plugin-broken-link-checker = pkgs.wpbox.plugin-broken-link-checker;
      plugin-child-theme-configurator = pkgs.wpbox.plugin-child-theme-configurator;
      plugin-elementor = pkgs.wpbox.plugin-elementor;
      plugin-elementor-pro = pkgs.wpbox.plugin-elementor-pro;
      plugin-hubbub-lite = pkgs.wpbox.plugin-hubbub-lite;
      plugin-download-manager-pro = pkgs.wpbox.plugin-download-manager-pro;
      plugin-index-wp-mysql = pkgs.wpbox.plugin-index-wp-mysql;
      plugin-kadence-pro = pkgs.wpbox.plugin-kadence-pro;
      plugin-lightstart = pkgs.wpbox.plugin-lightstart;
      plugin-permalink = pkgs.wpbox.plugin-permalink;
      plugin-redirection = pkgs.wpbox.plugin-redirection;
      plugin-resmush = pkgs.wpbox.plugin-resmush;
      plugin-admin-lists = pkgs.wpbox.plugin-admin-lists;
      plugin-events-calendar = pkgs.wpbox.plugin-events-calendar;
      plugin-events-calendar-pro = pkgs.wpbox.plugin-events-calendar-pro;
      plugin-updraft = pkgs.wpbox.plugin-updraft;
      plugin-wordpress-importer = pkgs.wpbox.plugin-wordpress-importer;
      plugin-recent-posts = pkgs.wpbox.plugin-recent-posts;
      plugin-wp-rocket = pkgs.wpbox.plugin-wp-rocket;
      plugin-yoast-duplicate = pkgs.wbox.plugin-yoast;
    };

    themes = {
      theme-responsive = pkgs.wpbox.theme-responsive;
      theme-hello-elementor = pkgs.wpbox.theme-hello-elementor;
      theme-kadence = pkgs.wpbox.theme-kadence;
    };
  };

}
