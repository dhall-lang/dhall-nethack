let types = ./../types.dhall

in    λ(x : types.PickupBurden)
    → merge
      { unencumbered =
          "U"
      , burdened =
          "B"
      , stressed =
          "S"
      , strained =
          "N"
      , overtaxed =
          "O"
      , overloaded =
          "L"
      }
      x
