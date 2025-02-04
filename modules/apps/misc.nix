{pkgs, ...}: {
  home.packages = with pkgs; [
    spotify
    slack
    insomnia
    bitwarden
  ];
}
