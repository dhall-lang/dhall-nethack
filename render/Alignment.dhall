let types = ../types.dhall

in    λ(x : types.Alignment)
    → merge
        { lawful = "lawful"
        , neutral = "neutral"
        , chaotic = "chaotic"
        , random = "random"
        }
        x
