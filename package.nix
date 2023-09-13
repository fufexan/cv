{
  lib,
  stdenv,
  typst,
  font-awesome,
  roboto,
  source-sans-pro,
  version ? "",
  src ? null,
  lang ? "",
}: let
  l = lib.optionalString (lang != "") "_${lang}";
in
  stdenv.mkDerivation {
    pname = "fufexan_cv${l}";
    inherit src version;

    nativeBuildInputs = [typst];

    configurePhase = ''
      runHook preConfigure

      substituteInPlace metadata.typ \
        --replace 'varLanguage = ""' 'varLanguage = "${lang}"'

      runHook postConfigure
    '';

    postConfigure = ''
      mkdir src/fonts
      ln -s ${font-awesome}/share/fonts/opentype/* src/fonts/
      ln -s ${roboto}/share/fonts/truetype/* src/fonts/
      ln -s ${source-sans-pro}/share/fonts/truetype/* src/fonts/
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
      mv $out/cv.pdf $out/CV${l}_MihaiFufezan.pdf

      runHook postInstall
    '';
  }
