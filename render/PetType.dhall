let types = ./../types.dhall

in    λ(x : types.PetType)
    → merge
      { cat =
          "cat"
      , dog =
          "dog"
      , none =
          "none"
      }
      x
