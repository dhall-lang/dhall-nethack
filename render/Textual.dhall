let types = ../types.dhall

in    λ(x : types.Textual)
    → merge
        { always = "always"
        , up = "up"
        , down = "down"
        , changed = "changed"
        , string = λ(text : Text) → text
        }
        x
