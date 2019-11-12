let types = ./../types.dhall

in    λ(x : types.WhatisCoord)
    → merge { compass = "c", full = "f", map = "m", screen = "s", none = "n" } x
