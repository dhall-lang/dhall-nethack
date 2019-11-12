let types = ../types.dhall

in    λ(x : types.PlayMode)
    → merge { normal = "normal", explore = "explore", debug = "debug" } x
