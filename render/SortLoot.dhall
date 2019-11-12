let types = ./../types.dhall

in    λ(x : types.SortLoot)
    → merge { full = "full", loot = "loot", none = "none" } x
