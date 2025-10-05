{pkgs}:


let
  gke = pkgs.google-cloud-sdk.withExtraComponents( with pkgs.google-cloud-sdk.components; [
    gke-gcloud-auth-plugin
  ]);
in

pkgs.mkShell{
  packages = with pkgs; [
    pkgs.google-cloud-sdk
    gke
    pkgs.terraform-docs
  ];
}
