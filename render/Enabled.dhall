let types = ../types.dhall

in    λ(a : Type)
    → λ(f : a → Text)
    → λ(x : types.Enabled a)
    → "${./Bool.dhall x.enable}${f x.value}"
