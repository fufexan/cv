# Mihai Fufezan CV

Resume written in [Typst](https://typst.app) using [Brilliant-CV](https://github.com/yunanwg/brilliant-CV), built using Nix.

## Building

### Typst

Clone this repo, and then run

- `typst compile cv.typ` - English version
- `typst compile cv.typ --input language=ro` - Romanian version

Now open `cv.pdf` using your preferred PDF viewer.

### Nix

- `nix build github:fufexan/cv` - English version
- `nix build github:fufexan/cv#romanian` - Romanian version

Now open `result` using your preferred PDF viewer.

## Prebuilt

You can find PDF copies the CV [here](https://drive.google.com/drive/folders/19vrZkiZclVhZ8ezEeNjeJ5nlv_Pwgzxo?usp=drive_link).
