{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

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
  networking.hostName = "wpbox";
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
    };

    themes = {
      theme-responsive = pkgs.wpbox.theme-responsive;
      theme-hello-elementor = pkgs.wpbox.theme-hello-elementor;
    };
  };

}
