let types = ./../types.dhall

in    λ(x : types.Enabled Text)
    → "AUTOCOMPLETE=${./Bool.dhall x.enable}${x.value}"
