let types = ../types.dhall

in    λ(x : types.Race)
    → merge
        { human = "human"
        , elf = "elf"
        , dwarf = "dwarf"
        , gnome = "gnome"
        , orc = "orc"
        , random = "random"
        }
        x
