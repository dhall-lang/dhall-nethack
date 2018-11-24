let types = ./../types.dhall

in    λ(x : types.SymSet)
    → merge
      { NHAccess =
          λ(_ : {}) → "NHAccess"
      , MACgraphics =
          λ(_ : {}) → "MACgraphics"
      , IBMGraphics_2 =
          λ(_ : {}) → "IBMGraphics_2"
      , IBMGraphics_1 =
          λ(_ : {}) → "IBMGraphics_1"
      , IBMgraphics =
          λ(_ : {}) → "IBMgraphics"
      , DECgraphics =
          λ(_ : {}) → "DECgraphics"
      , RogueWindows =
          λ(_ : {}) → "RogueWindows"
      , RogueEpyx =
          λ(_ : {}) → "RogueEpyx"
      , RogueIBM =
          λ(_ : {}) → "RogueIBM"
      }
      x
