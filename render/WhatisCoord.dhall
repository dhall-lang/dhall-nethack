let types = ./../types.dhall

in    λ(x : types.WhatisCoord)
    → merge
      { compass =
          λ(_ : {}) → "c"
      , full =
          λ(_ : {}) → "f"
      , map =
          λ(_ : {}) → "m"
      , screen =
          λ(_ : {}) → "s"
      , none =
          λ(_ : {}) → "n"
      }
      x
