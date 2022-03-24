{
  description = "Mihai Fufezan Resume";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system:
      let
        p = import nixpkgs { inherit system; };
        tex-env = p.texlive.combine {
          inherit (p.texlive) scheme-medium lipsum fmtcount datetime;
        };
      in
      {
        devShells.default = p.mkShell rec {
          packages = [ tex-env ];
          name = "LaTeX";
        };
        packages.default = p.stdenv.mkDerivation {
          name = "fufexan_resume";
          src = self;

          buildInputs = [ tex-env ];

          buildPhase = "latexmk -pdf";
          installPhase = "mkdir -p $out/; mv *.pdf $out/";
        };
      });
}
