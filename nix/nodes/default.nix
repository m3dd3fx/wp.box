#
# Function to generate the NixOS configurations for the Flake output.
#
{
  # `lib.nixosSystem` in the selected Nixpkgs.
  nixosSystem,
  # The Flake itself.
  wpbox,
  ...
}:

{
    nixosConfigurations = {
        ec2-aarch64-linux = nixosSystem {
            system = "aarch64-linux";
            modules = [
                ./ec2-aarch64/configuration.nix
                ({ config, pkgs, ... }: { nixpkgs.overlays = [ wpbox.overlay ]; })
            ];
        };

        devm = nixosSystem {
            system = "aarch64-linux";
            modules = [
                ./devm-aarch64/configuration.nix
                ({ config, pkgs, ... }: { nixpkgs.overlays = [ wpbox.overlay ]; })
            ];
        };
    };
}