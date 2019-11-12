let types = ../types.dhall

in    λ(x : types.MsgWindow)
    → merge
        { single = "single"
        , combination = "combination"
        , full = "full"
        , reversed = "reversed"
        }
        x
