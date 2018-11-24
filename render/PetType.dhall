let types = ./../types.dhall

in    λ(x : types.PetType)
    → merge
      { cat =
          λ(_ : {}) → "cat"
      , dog =
          λ(_ : {}) → "dog"
      , none =
          λ(_ : {}) → "none"
      }
      x
