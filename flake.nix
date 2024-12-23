{
  description = "A simple NixOS flake";

  inputs ={
    # NixOS official package source, using the nixos-24.05 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = {self, nixpkgs, ... }@inputs: {
    # Please replace nixosConfiguration.<"nixos"> with your hostname
    nixosConfiguration.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules =[
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix
      ];
    };
  };
}
