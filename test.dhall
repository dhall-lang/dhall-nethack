let types = ./types.dhall

in let defaults = ./defaults.dhall

in    defaults.Config
    ⫽ { hilite_status =
            defaults.HiliteStatus
          ⫽ { title =
                [ { trigger =
                      Some (types.Numeric.number (types.Comparison.EqualTo 5))
                  , color =
                      types.Color.blue {=}
                  , attributes =
                      None types.Attributes
                  }
                ]
            }
      }
