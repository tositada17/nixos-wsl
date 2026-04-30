{pkgs}:

let
  azure-cli-extentions = pkgs.azure-cli.withExtensions (with pkgs.azure-cli-extensions; [
    account
    azure-devops
    ssh
  ]);
in

pkgs.mkShell{
  packages = [
    azure-cli-extentions
    pkgs.pulumi
    pkgs.go
    pkgs.pulumiPackages.pulumi-go
    pkgs.pulumiPackages.pulumi-azure-native
  ];

  shellHook = ''
    export projectname="pulumi-azure"
    export PS1="\n($projectname) $PS1"
  '';
}
