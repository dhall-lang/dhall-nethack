let types = ./../types.dhall

in    λ(x : types.Gender)
    → merge
      { male =
          λ(_ : {}) → "male"
      , female =
          λ(_ : {}) → "female"
      , random =
          λ(_ : {}) → "random"
      }
      x
