{pkgs}:


let
  gcloud-components = pkgs.google-cloud-sdk.withExtraComponents( with pkgs.google-cloud-sdk.components; [
    gke-gcloud-auth-plugin
    config-connector
  ]);
in

pkgs.mkShell{
  packages = [
    pkgs.google-cloud-sdk
    gcloud-components
    pkgs.terraform-docs
  ];

  shellHook = ''
    export tfversion="1.13.3"
    export projectname="gcloud"

    export PS1="\n($projectname) $PS1"
    tenv tf install $tfversion
    tenv tf use $tfversion
  '';
}
