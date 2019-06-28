let types = ./../types.dhall

in    λ(x : types.NumberPad)
    → merge
      { Letters =
          "0"
      , Numbers_5_is_G =
          "1"
      , Numbers_5_is_g =
          "2"
      , PhoneKeys =
          "3"
      , PhoneKeys_MSDOS =
          "4"
      , Letters_z_is_NW =
          "-1"
      }
      x
