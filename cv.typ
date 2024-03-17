#import "src/template.typ": *
#show: layout

#cvHeader(hasPhoto: false, align: left)
  #autoImport("education")
  #autoImport("skills")
  #autoImport("experience")
  #autoImport("projects")
  #autoImport("certificates")
#cvFooter()
