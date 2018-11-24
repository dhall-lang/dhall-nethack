let types = ./../types.dhall

in    λ(x : types.PickupBurden)
    → merge
      { unencumbered =
          λ(_ : {}) → "U"
      , burdened =
          λ(_ : {}) → "B"
      , stressed =
          λ(_ : {}) → "S"
      , strained =
          λ(_ : {}) → "N"
      , overtaxed =
          λ(_ : {}) → "O"
      , overloaded =
          λ(_ : {}) → "L"
      }
      x
