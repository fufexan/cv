#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section
#show link: underline

#cv-section("Experience")

#cv-entry(
  title: [Software developer],
  society: [ASEE],
  logo: image("../assets/logos/asee.svg"),
  date: [2024 - present],
  location: [Remote],
  description: list(
    [Worked with Azure and Tungsten Automation services],
    [Contributed to internal technical documentation],
    [Created and maintained PoCs for potential apps and services],
    [Prototyped Agentic AI solutions],
  ),
)

#cv-entry(
  title: [Contracting],
  society: [NixOS Foundation],
  logo: image("../assets/logos/nixos.svg"),
  date: [2021, 2022],
  location: [Remote],
  description: list(
    [Took part in a team of participants to package NGI (Next Generation Internet)
      applications with #link("https://nixos.org")[Nix] for the
      #link("https://summer.nixos.org")[Summer of Nix] program, as well as developing
      dream2nix and improving the overall Nix/NixOS documentation],
    [Improved documentation of several areas of the
      #link("https://nixos.wiki")[NixOS Wiki]],
    [Created publicly-available flakes accessible on the
      #link("https://github.com/ngi-nix")[NGI-Nix organization]],
  ),
)

#cv-entry(
  title: [Apprenticeship],
  society: [Digital Nation],
  logo: image("../assets/logos/dn.jpg"),
  date: [2019 - 2020],
  location: [Remote],
  description: list(
    [Participated as an apprentice in the #link("https://generatiatech.ro")[Generația
        Tech] program],
    [Learned PHP development using WordPress themes & plugins, under the guidance of
      skilled mentors],
    [Learned JavaScript back-end and front-end development, Firebase management and
      integration],
    [Was local ambassador for the Alba county regional group. Participated in team
      management, administration, logistics],
  ),
)
