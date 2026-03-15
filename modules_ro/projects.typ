#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Proiecte și Asocieri")

#cv-entry(
  title: [#link("https://github.com/fufexan/dotfiles")[dotfiles]],
  society: [],
  date: [2021 - Prezent],
  location: [],
  description: list(
    [Gestionarea declarativă a calculatoarelor personale rulând NixOS, utilizând Git și Flakes],
    [Fiecare calculator este accesibil oriunde prin Tailscale],
    [Configurații utile acumulate peste ani],
  ),
)

#cv-entry(
  title: [#link("https://github.com/fufexan/infra")[Infrastructură]],
  society: [],
  date: [2022 - Prezent],
  location: [],
  description: list(
    [Gestionarea serverelor, furnizate prin Terraform, rulând NixOS, conectate prin
      Tailscale],
  ),
)

#cv-entry(
  title: [#link("https://github.com/fufexan/nix-gaming")[nix-gaming]],
  society: [],
  date: [2021 - Prezent],
  location: [],
  description: list(
    [Repo care găzduiește o colecție de jocuri și programe asociate, packaged pentru
      Nix],
  ),
)

#cv-entry(
  title: [Contribuții],
  society: [],
  date: [2021 - Prezent],
  location: [],
  description: list(
    [Întreținător pentru #link("https://github.com/hyprwm")[*Hyprland și HyprWM*]],
    [Întreținător pentru #link("https://github.com/NixOS/nixpkgs")[*Nixpkgs*]],
    [Contribuitor la proiectele #link("https://github.com/nix-community")[*Nix Community*]],
  ),
)
