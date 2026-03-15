{
  description = "Mihai Fufezan Resume";

  outputs =
    {
      self,
      nixpkgs,
      ...
    }@inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;

      perSystem =
        {
          pkgs,
          config,
          system,
          ...
        }:
        let
          typixLib = inputs.typix.lib.${system};

          commonArgs = {
            typstSource = "cv.typ";

            fontPaths = [
              pkgs.inter
              pkgs.font-awesome
            ];
          };

          unstable_typstPackages = import ./packages.nix;

          thesis-drv =
            {
              language ? "en",
            }:
            typixLib.buildTypstProject (
              commonArgs
              // {
                inherit src unstable_typstPackages;
                typstOpts.input = [ "language=${language}" ];
              }
            );

          src = self;
        in
        {
          devShells.default = typixLib.devShell {
            inherit (commonArgs) fontPaths;
            packages = with pkgs; [
              tinymist
              typst
              typstyle
            ];
            name = "CV";
          };

          packages = {
            english = thesis-drv { language = "en"; };
            romanian = thesis-drv { language = "ro"; };
            default = config.packages.english;
          };
        };
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    systems.url = "github:nix-systems/default-linux";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
