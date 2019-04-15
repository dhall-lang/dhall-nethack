let Prelude = ./../Prelude.dhall

in let types = ./../types.dhall

in    λ(x : types.Scores)
    → let own =
            Optional/fold
            Bool
            x.own
            (List Text)
            (λ(b : Bool) → [ "${./Bool.dhall b}o" ])
            ([] : List Text)
      
      in let around =
            Optional/fold
            Natural
            x.around
            (List Text)
            (λ(n : Natural) → [ "${Natural/show n}a" ])
            ([] : List Text)
      
      in let top =
            Optional/fold
            Natural
            x.top
            (List Text)
            (λ(n : Natural) → [ "${Natural/show n}t" ])
            ([] : List Text)

      in let scores = own # around # top
      
      in  if Prelude.`List`.null Text scores
          then ""
          else "OPTIONS=scores:${Prelude.`Text`.concatSep " " scores}\n"
