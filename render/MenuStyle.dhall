let types = ./../types.dhall

in    λ(x : types.MenuStyle)
    → merge
      { traditional =
          "traditional"
      , combination =
          "combination"
      , partial =
          "partial"
      , full =
          "full"
      }
      x
