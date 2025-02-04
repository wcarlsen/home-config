{
  config,
  pkgs,
  ...
}: {
  programs.kitty = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.kitty;
    themeFile = "Catppuccin-Mocha";
    settings = {
      enable_audio_bell = false;
    };
    font = {
      package = null;
      name = "Maple Mono";
      size = 13;
    };
  };
}
