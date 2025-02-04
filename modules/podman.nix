{pkgs, ...}: {
  services.podman.enable = true;

  home.packages = with pkgs; [
    podman-compose
  ];
}
