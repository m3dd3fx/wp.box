{ config, modulesPath, pkgs, ... }: {
    imports = [ "${modulesPath}/virtualisation/amazon-image.nix" ];
    ec2.efi = true;

    environment.systemPackages = [
    	pkgs.eza
	    pkgs.bat
	    pkgs.dogdns
    ];    

    time.timeZone = "Europe/Amsterdam";
    system.stateVersion = "23.11";

    networking.firewall = {
        enable = true;
        allowedTCPPorts = [ 22 80 443 ];
    };

    services.openssh.enable = true;
    services.wordpress.webserver = "nginx";
    
    services.wordpress.sites."localhost" = {
        settings = {
	        WP_MEMORY_LIMIT = "512M";
            WP_MAX_MEMORY_LIMIT = "1024M";
	        WP_DEBUG = true;
            WP_DEBUG_LOG = true;
        };
    };

}