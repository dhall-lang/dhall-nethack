let types = ./../types.dhall

in    λ(x : types.NumberPad)
    → merge
      { Letters =
          λ(_ : {}) → "0"
      , Numbers_5_is_G =
          λ(_ : {}) → "1"
      , Numbers_5_is_g =
          λ(_ : {}) → "2"
      , PhoneKeys =
          λ(_ : {}) → "3"
      , PhoneKeys_MSDOS =
          λ(_ : {}) → "4"
      , Letters_z_is_NW =
          λ(_ : {}) → "-1"
      }
      x
