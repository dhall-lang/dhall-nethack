let types = ./../types.dhall

in    λ(x : types.Race)
    → merge
      { human =
          λ(_ : {}) → "human"
      , elf =
          λ(_ : {}) → "elf"
      , dwarf =
          λ(_ : {}) → "dwarf"
      , gnome =
          λ(_ : {}) → "gnome"
      , orc =
          λ(_ : {}) → "orc"
      , random =
          λ(_ : {}) → "random"
      }
      x
