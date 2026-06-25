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
    pkgs.pulumi-bin
    pkgs.nodejs_24
    pkgs.pulumi-esc
  ];

  shellHook = ''
    export projectname="pulumi-azure"
    export PS1="\n($projectname) $PS1"
  '';
}
