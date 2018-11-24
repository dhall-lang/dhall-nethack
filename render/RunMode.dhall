let types = ./../types.dhall

in    λ(x : types.RunMode)
    → merge
      { teleport =
          λ(_ : {}) → "teleport"
      , run =
          λ(_ : {}) → "run"
      , walk =
          λ(_ : {}) → "walk"
      , crawl =
          λ(_ : {}) → "crawl"
      }
      x
