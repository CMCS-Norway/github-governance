locals {
  admins = toset([
    "AndersLevin-GroupIT", # Anders - Fra group
    "molldk",              # Klaus  - Fra group
    "Tjacsen",             # Tore 
    "antnsn"              = "devops"; # Marius
    "MrNewgarden"         = "devops"; # Kim  
    "Flowlance",           # Daniel  
    "FredrikMelby",        # Fredrik 
    "GlennIsb",            # Glenn 
    "johnrosbe",           # John Roy 
    "maos999"              # Marius 
  ])


  users = toset([
    "CMCS-PerH",  # Per Helge
    "Danielbj01", # Daniel 
    "emilihoo",   # Emil 
    "fabskab",    # Fabrizio
    "Hawolex",    # Steffen 
    "irean",      # Sandra 
    "jenaslak",   # Jens 
    "KA-T1",      # Karl 
    "kojarB",     # Kojar  
    "trymhaak",   # Trym 
    "vagnes",     # Maxine
    "xQseb"       # Sebastian
  ])

  platform = toset([
    "antnsn",       # Marius
    "maos999",      # Marius 
    "johnrosbe",    # John Roy 
    "MrNewgarden",  # Kim  
    "Flowlance",    # Daniel  
    "FredrikMelby", # Fredrik 
    "xQseb",        # Sebastian
    "fabskab",      # Fabrizio
    "KA-T1",        # Karl
  ])
}
