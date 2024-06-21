#
# Function to generate the NixOS configurations for the Flake output.
#
{
  # `lib.nixosSystem` in the selected Nixpkgs.
  nixosSystem, pkgs, ...
}:

{
    nixosConfigurations = {
        ec2-aarch64-linux = nixosSystem {
            system = "aarch64-linux";
            modules = [ ./ec2-aarch64/configuration.nix ];
            inherit pkgs;
        };

        devm = nixosSystem {
            system = "aarch64-linux";
            modules = [ ./devm-aarch64/configuration.nix ];
            inherit pkgs;
        };
    };
}