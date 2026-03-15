#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section
#show link: underline

#cv-section("Experiență")

#cv-entry(
  title: [Software developer],
  society: [ASEE],
  logo: image("../assets/logos/asee.svg"),
  date: [2024 - prezent],
  location: [La distanță],
  description: list(
    [A lucrat cu servicii Azure și Tungsten Automation],
    [A contribuit la documentație tehnică internă],
    [A creat și menținut proof-of-concepts pentru potențiale aplicații și servicii],
    [A creat prototipuri de soluții Agentic AI],
  ),
)

#cv-entry(
  title: [Contract],
  society: [NixOS Foundation],
  logo: image("../assets/logos/nixos.svg"),
  date: [2021, 2022],
  location: [La distanță],
  description: list(
    [A luat parte într-o echipă de participanți pentru a face packaging în
      #link("https://nixos.org")[Nix] aplicațiilor NGI (Next Generation Internet)
      pentru programul #link("https://summer.nixos.org")[Summer of Nix], dar și pentru
      a îmbunătăți documentația generală a Nix/NixOS],
    [A îmbunătățit documentația în anumite părți ale #link("https://nixos.wiki")[NixOS Wiki]],
    [A creat flake-uri disponibile în mod public în
      #link("https://github.com/ngi-nix")[organizația NGI-Nix]],
  ),
)

#cv-entry(
  title: [Mentorat],
  society: [Digital Nation],
  logo: image("../assets/logos/dn.jpg"),
  date: [2019 - 2020],
  location: [La distanță],
  description: list(
    [A participat ca beneficiar în programul
      #link("https://generatiatech.ro")[Generația Tech]],
    [A învățat dezvoltare PHP utilizând teme și plugin-uri WordPress, cu ajutorul unor
      mentori pricepuți],
    [A învățat dezvoltare back-end și front-end în JavaScript, gestionare și
      integrare Firebase],
    [A fost ambasador pentru grupul local al județului Alba. A participat în
      gestionare, administrare, logistică și activități de grup],
  ),
)
