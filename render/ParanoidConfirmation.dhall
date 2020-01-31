let Prelude = ../Prelude.dhall

let types = ../types.dhall

let renderConfirmation =
        λ(name : Text)
      → λ(o : Optional Bool)
      → Optional/fold
          Bool
          o
          (List Text)
          (λ(b : Bool) → if b then [ name ] else [] : List Text)
          ([] : List Text)

in    λ(x : types.ParanoidConfirmation.Type)
    → let confirmations =
              renderConfirmation "Confirm" x.Confirm
            # renderConfirmation "quit" x.quit
            # renderConfirmation "die" x.die
            # renderConfirmation "bones" x.bones
            # renderConfirmation "attack" x.attack
            # renderConfirmation "pray" x.pray
            # renderConfirmation "wand-break" x.wand-break
            # renderConfirmation "Were-change" x.Were-change
            # renderConfirmation "Remove" x.Remove
            # renderConfirmation "all" x.all

      in        if Prelude.List.null Text confirmations

          then  ""

          else  ''
                OPTIONS=paranoid_confirmation:${Prelude.Text.concatSep
                                                  " "
                                                  confirmations}
                ''
