let types = ./../types.dhall

in    λ(x : types.WhatisFilter)
    → merge
      { no_filtering =
          λ(_ : {}) → "n"
      , view_only =
          λ(_ : {}) → "v"
      , same_area =
          λ(_ : {}) → "a"
      }
      x
