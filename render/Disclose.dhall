let Prelude = ./../Prelude.dhall

let types = ./../types.dhall

let renderDisclosure = ./Disclosure.dhall

let renderOptionalDisclosure =
        λ(suffix : Text)
      → λ(x : Optional types.Disclosure)
      → Optional/fold
        types.Disclosure
        x
        (List Text)
        (λ(d : types.Disclosure) → [ "${renderDisclosure d}${suffix}" ])
        ([] : List Text)

in    λ(x : types.Disclose)
    → Prelude.`Text`.concatSep
      " "
      (   renderOptionalDisclosure "i" x.inventory
        # renderOptionalDisclosure "a" x.attributes
        # renderOptionalDisclosure "v" x.monsters_killed
        # renderOptionalDisclosure "g" x.monsters_genocided
        # renderOptionalDisclosure "c" x.conduct
        # renderOptionalDisclosure "o" x.dungeon_overview
      )
