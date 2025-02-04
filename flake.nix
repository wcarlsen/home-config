{
  description = "Home Manager configuration of wcarlsen";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl.url = "github:nix-community/nixgl";

    k9s-catppuccin = {
      url = "github:catppuccin/k9s";
      flake = false;
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nixgl,
    k9s-catppuccin,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    username = "wcarlsen";
  in {
    homeConfigurations."${username}" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [./home.nix];
      extraSpecialArgs = {inherit nixgl username k9s-catppuccin;};
    };
  };
}
