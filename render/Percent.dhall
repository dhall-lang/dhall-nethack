let types = ./../types.dhall

let renderComparison = ./Comparison.dhall

in    λ(x : types.Percent)
    → merge
      { always =
          λ(_ : {}) → "always"
      , up =
          λ(_ : {}) → "up"
      , down =
          λ(_ : {}) → "down"
      , changed =
          λ(_ : {}) → "changed"
      , percentage =
          λ(comparison : types.Comparison) → "${renderComparison comparison}%"
      , number =
          renderComparison
      }
      x
