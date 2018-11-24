let types = ./../types.dhall

in    { Confirm =
          None Bool
      , quit =
          None Bool
      , die =
          None Bool
      , bones =
          None Bool
      , attack =
          None Bool
      , pray =
          None Bool
      , wand-break =
          None Bool
      , Were-change =
          None Bool
      , Remove =
          None Bool
      , all =
          None Bool
      }
    : types.ParanoidConfirmation
