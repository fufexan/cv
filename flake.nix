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
        tex-env = pkgs.texlive.combine {
          inherit (pkgs.texlive) scheme-medium lipsum fmtcount datetime;
        };

        mkDate = longDate:
          with builtins; (concatStringsSep "-" [
            (substring 0 4 longDate)
            (substring 4 2 longDate)
            (substring 6 2 longDate)
          ]);
      in {
        devShells.default = pkgs.mkShell {
          packages = [tex-env];
          name = "LaTeX";
        };

        packages.default = pkgs.stdenv.mkDerivation {
          pname = "fufexan_resume";
          version = mkDate (self.lastModifiedDate or "19700101");
          src = self;

          buildInputs = [tex-env];

          buildPhase = "latexmk -pdf";
          installPhase = "mkdir -p $out/; mv *.pdf $out/";
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
