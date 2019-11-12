let types = ../types.dhall

in    λ(x : types.SymSet)
    → merge
        { NHAccess = "NHAccess"
        , MACgraphics = "MACgraphics"
        , IBMGraphics_2 = "IBMGraphics_2"
        , IBMGraphics_1 = "IBMGraphics_1"
        , IBMgraphics = "IBMgraphics"
        , DECgraphics = "DECgraphics"
        , RogueWindows = "RogueWindows"
        , RogueEpyx = "RogueEpyx"
        , RogueIBM = "RogueIBM"
        }
        x
