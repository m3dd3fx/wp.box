{ pkgs }:

{ 
    packages."aarch64-linux"."wordpress-theme-responsive" = import ./wordpress-theme-responsive { 
        
        inherit pkgs;
        
    };
}