let types = ./../types.dhall

in    λ(x : types.PileLimit)
    → merge { unlimited = λ(_ : {}) → "0", limit = Natural/show } x
