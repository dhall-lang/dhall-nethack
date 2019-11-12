let types = ../types.dhall

in    λ(x : types.WhatisFilter)
    → merge { no_filtering = "n", view_only = "v", same_area = "a" } x
