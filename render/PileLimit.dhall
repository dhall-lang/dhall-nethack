let types = ../types.dhall

in  λ(x : types.PileLimit) → merge { unlimited = "0", limit = Natural/show } x
