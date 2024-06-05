{ pkgs }:

{ 
    packages.aarch64-linux.theme-hello-elementor = import ./wp-themes/hello-elementor { 
        
        inherit pkgs;
    };

    packages.aarch64-linux.theme-responsive = import ./wp-themes/responsive { 
        
        inherit pkgs;
    };

   packages.aarch64-linux.plugin-jetpack = import ./plugins/Jetpack { 
        
        inherit pkgs;
        
    };

    packages.aarch64-linux.plugin-connect-matomo = import ./plugins/matomo { 
        
        inherit pkgs;
        
    };

}