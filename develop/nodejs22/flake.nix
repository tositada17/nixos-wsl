
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = inputs@{ self, nixpkgs, ... }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    devShells.x86_64-linux.default = pkgs.mkShellNoCC {
      packages = with pkgs;[
        nodejs_22
        pnpm
        sqlite
      ];

      shellHook = ''
        export project='nodejs22'
        export PS1=($project)$PS1

        npm config set prefix '~/.npm-global'
        export PATH=~/.npm-global/bin:$PATH
      '';
    };

  };
}
