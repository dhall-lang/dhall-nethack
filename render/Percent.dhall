let types = ./../types.dhall

let renderComparison = ./Comparison.dhall

in    λ(x : types.Percent)
    → merge
        { always = "always"
        , up = "up"
        , down = "down"
        , changed = "changed"
        , percentage =
            λ(comparison : types.Comparison) → "${renderComparison comparison}%"
        , number = renderComparison
        }
        x
