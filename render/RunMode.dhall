let types = ./../types.dhall

in    λ(x : types.RunMode)
    → merge
      { teleport =
          "teleport"
      , run =
          "run"
      , walk =
          "walk"
      , crawl =
          "crawl"
      }
      x
