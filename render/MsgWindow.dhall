let types = ./../types.dhall

in    λ(x : types.MsgWindow)
    → merge
      { single =
          λ(_ : {}) → "single"
      , combination =
          λ(_ : {}) → "combination"
      , full =
          λ(_ : {}) → "full"
      , reversed =
          λ(_ : {}) → "reversed"
      }
      x
