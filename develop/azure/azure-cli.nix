{pkgs}:

let
  azure-cli-extentions = pkgs.azure-cli.withExtensions (with pkgs.azure-cli-extensions; [
    account
    azure-devops
  ]);
in

pkgs.mkShell{
  packages = [
    azure-cli-extentions
  ];

  shellHook = ''
    export projectname="azure"
    export PS1="\n($projectname) $PS1"
  '';
}
