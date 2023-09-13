#import "src/template.typ": *
#show: layout

#cvHeader(hasPhoto: true, align: left)
  #autoImport("education")
  #autoImport("skills")
  #autoImport("experience")
  #autoImport("projects")
  #autoImport("certificates")
#cvFooter()