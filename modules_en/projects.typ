#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Projects & Associations")

#cv-entry(
  title: [#link("https://github.com/fufexan/dotfiles")[dotfiles]],
  society: [],
  date: [2021 - present],
  location: [],
  description: list(
    [Declarative management of desktop machines running NixOS using Git and Flakes],
    [Every machine is accessible everywhere through Tailscale],
    [Useful configurations accumulated over the years],
  ),
)

#cv-entry(
  title: [#link("https://github.com/fufexan/infra")[Infrastructure]],
  society: [],
  date: [2022 - present],
  location: [],
  description: list(
    [Server management provisioned through Terraform, running NixOS, connected over
      Tailscale],
  ),
)

#cv-entry(
  title: [#link("https://github.com/fufexan/nix-gaming")[nix-gaming]],
  society: [],
  date: [2021 - present],
  location: [],
  description: list(
    [Repo hosting an ever-growing collection of games and related software
      packaged for Nix],
  ),
)

#cv-entry(
  title: [Contributions],
  society: [],
  date: [],
  location: [],
  description: list(
    [Maintainer of #link("https://github.com/hyprwm")[Hyprland and HyprWM]],
    [Maintainer for #link("https://github.com/NixOS/nixpkgs")[Nixpkgs]],
    [Contributor to #link("https://github.com/nix-community")[Nix Community projects]],
  ),
)
