{
  description = "Mihai Fufezan Resume";

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-linux" "aarch64-darwin" "x86_64-linux" "x86_64-darwin"];

      perSystem = {pkgs, ...}: let
        mkDate = longDate:
          with builtins; (concatStringsSep "-" [
            (substring 0 4 longDate)
            (substring 4 2 longDate)
            (substring 6 2 longDate)
          ]);
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            typst
            typst-fmt
            typst-lsp
          ];
          name = "Resume";
        };

        packages.default = pkgs.stdenv.mkDerivation {
          pname = "fufexan_resume";
          version = mkDate (self.lastModifiedDate or "19700101");
          src = self;

          nativeBuildInputs = [pkgs.typst];

          postConfigure = ''
            mkdir src/fonts
            ln -s ${pkgs.font-awesome}/share/fonts/opentype/* src/fonts/
            ln -s ${pkgs.roboto}/share/fonts/truetype/* src/fonts/
            ln -s ${pkgs.source-sans-pro}/share/fonts/truetype/* src/fonts/
          '';

          TYPST_FONT_PATHS = "src/fonts";

          buildPhase = ''
            runHook preBuild

            typst compile cv.typ

            runHook postBuild
          '';

          installPhase = ''
            runHook preInstall

            mkdir -p $out
            mv *.pdf $out
            mv $out/cv.pdf $out/CV_MihaiFufezan.pdf

            runHook postInstall
          '';
        };
      };
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };
}
