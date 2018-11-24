let types = ./../types.dhall

in    λ(x : types.Textual)
    → merge
      { always =
          λ(_ : {}) → "always"
      , up =
          λ(_ : {}) → "up"
      , down =
          λ(_ : {}) → "down"
      , changed =
          λ(_ : {}) → "changed"
      , string =
          λ(text : Text) → text
      }
      x
