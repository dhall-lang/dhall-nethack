let Prelude = ../Prelude.dhall

let types = ../types.dhall

in    λ(x : types.Scores.Type)
    → let own =
            Prelude.Optional.fold
              Bool
              x.own
              (List Text)
              (λ(b : Bool) → [ "${./Bool.dhall b}o" ])
              ([] : List Text)

      let around =
            Prelude.Optional.fold
              Natural
              x.around
              (List Text)
              (λ(n : Natural) → [ "${Natural/show n}a" ])
              ([] : List Text)

      let top =
            Prelude.Optional.fold
              Natural
              x.top
              (List Text)
              (λ(n : Natural) → [ "${Natural/show n}t" ])
              ([] : List Text)

      let scores = own # around # top

      in        if Prelude.List.null Text scores

          then  ""

          else  ''
                OPTIONS=scores:${Prelude.Text.concatSep " " scores}
                ''
