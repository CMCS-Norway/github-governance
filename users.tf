locals {
  admins = toset([
    # Fra group, må være der pga lisens
    "AndersLevin-GroupIT",  # Anders Levin
    "molldk",               # Klaus Møllnitz
    # Fra group, må være der pga lisens
    "Tjacsen",              # Tore Jacobsen
    "antnsn",               # Marius Antonsen
    "MrNewgarden",          # Kim Andrè Nyhagen
    "Flowlance",            # Daniel Odwin Sørensen
    "FredrikMelby",         # Fredrik Melby
    "Danielbj01",           # Daniel Johansen
    "GlennIsb",             # Glenn Isberg
    "johnrosbe",            # John Roy Røsberg
    "maos999"              # Marius Aamodt
  ])


  users = toset([
    "CMCS-PerH",            # Per Helge
    "emilihoo",             # Emil 
    "fabskab",              # Fabrizio
    "Hawolex",              # Steffen Skui
    "irean",                # Sandra Saluti
    "jenaslak",             # Jens Aslaksen
    "KA-T1",                # Karl Tvergrov
    "kojarB",               # Kojar Baban 
    "trymhaak",             # Trym Håkansson
    "vagnes",               # Maxine B. Vågnes
    "xQseb"                # Sebastian
  ])
  /*
  outside_collaborators = { # Not used, purely for documentation purposes
    "blankcan" = {
      "name" = "Hired help for MTG, owned by Adrian"
      "access" = {
        "amestofortytwo/minethegap" = {
          "role" = "write"
        }
      }
    }
  }
  */
}
