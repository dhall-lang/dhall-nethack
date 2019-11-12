let types = ./../types.dhall

in    λ(x : types.Gender)
    → merge { male = "male", female = "female", random = "random" } x
