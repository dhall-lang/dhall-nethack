let types = ./../types.dhall

in    λ(x : types.SortLoot)
    → merge
      { full =
          λ(_ : {}) → "full"
      , loot =
          λ(_ : {}) → "loot"
      , none =
          λ(_ : {}) → "none"
      }
      x
