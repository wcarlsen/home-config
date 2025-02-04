{
  config,
  pkgs,
  ...
}: {
  programs.ghostty = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.ghostty;
    settings = {
      theme = "catppuccin-mocha";
      font-family = "Maple Mono";
      font-size = 13;
    };
  };
}
