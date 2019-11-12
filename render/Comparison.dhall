let types = ./../types.dhall

in    λ(comparison : types.Comparison)
    → merge
        { EqualTo = λ(n : Natural) → Natural/show n
        , LessThanOrEqualTo = λ(n : Natural) → "<${Natural/show n}"
        , GreaterThanOrEqualTo = λ(n : Natural) → ">${Natural/show n}"
        }
        comparison
