let types = ../types.dhall

let renderComparison = ./Comparison.dhall

in    λ(x : types.Numeric)
    → merge
        { always = "always"
        , up = "up"
        , down = "down"
        , changed = "changed"
        , number = renderComparison
        }
        x
