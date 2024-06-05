#
# Function to generate the NixOS configurations for the Flake output.
#
{
  # `lib.nixosSystem` in the selected Nixpkgs.
  nixosSystem, ...
}:

{
    nixosConfigurations = {
        ec2 = nixosSystem {
            system = "aarch64-linux";
            modules = [ ./ec2-aarch64/configuration.nix ];
        };

        devm = nixosSystem {
            system = "aarch64-linux";
            modules = [ ./devm-aarch64/configuration.nix ];
        };
    };
}