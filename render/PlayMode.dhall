let types = ./../types.dhall

in    λ(x : types.PlayMode)
    → merge
      { normal =
          λ(_ : {}) → "normal"
      , explore =
          λ(_ : {}) → "explore"
      , debug =
          λ(_ : {}) → "debug"
      }
      x
