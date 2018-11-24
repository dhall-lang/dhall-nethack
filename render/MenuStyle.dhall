let types = ./../types.dhall

in    λ(x : types.MenuStyle)
    → merge
      { traditional =
          λ(_ : {}) → "traditional"
      , combination =
          λ(_ : {}) → "combination"
      , partial =
          λ(_ : {}) → "partial"
      , full =
          λ(_ : {}) → "full"
      }
      x
