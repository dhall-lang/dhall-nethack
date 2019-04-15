let types = ./../types.dhall

in let renderComparison = ./Comparison.dhall

in    λ(x : types.Numeric)
    → merge
      { always =
          λ(_ : {}) → "always"
      , up =
          λ(_ : {}) → "up"
      , down =
          λ(_ : {}) → "down"
      , changed =
          λ(_ : {}) → "changed"
      , number =
          renderComparison
      }
      x
