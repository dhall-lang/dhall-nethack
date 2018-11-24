let types = ./../types.dhall

in    λ(x : types.Alignment)
    → merge
      { lawful =
          λ(_ : {}) → "lawful"
      , neutral =
          λ(_ : {}) → "neutral"
      , chaotic =
          λ(_ : {}) → "chaotic"
      , random =
          λ(_ : {}) → "random"
      }
      x
