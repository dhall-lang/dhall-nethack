let Prelude = ../Prelude.dhall

let types = ../types.dhall

let renderAttribute =
        λ(name : Text)
      → λ(x : Optional Bool)
      → Prelude.Optional.fold
          Bool
          x
          (List Text)
          (λ(enabled : Bool) → if enabled then [ name ] else [] : List Text)
          ([] : List Text)

in    λ(x : types.Attributes.Type)
    → Prelude.Text.concatSep
        "&"
        (   renderAttribute "bold" x.bold
          # renderAttribute "inverse" x.inverse
          # renderAttribute "underline" x.underline
          # renderAttribute "blink" x.blink
          # renderAttribute "dim" x.dim
        )
