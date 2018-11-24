let types = ./../types.dhall

in    { title =
          [] : List (types.Hilite types.Textual)
      , strength =
          [] : List (types.Hilite types.Numeric)
      , dexterity =
          [] : List (types.Hilite types.Numeric)
      , constitution =
          [] : List (types.Hilite types.Numeric)
      , intelligence =
          [] : List (types.Hilite types.Numeric)
      , wisdom =
          [] : List (types.Hilite types.Numeric)
      , charisma =
          [] : List (types.Hilite types.Numeric)
      , characteristics =
          [] : List (types.Hilite types.Numeric)
      , alignment =
          [] : List (types.Hilite types.Textual)
      , score =
          [] : List (types.Hilite types.Numeric)
      , carrying-capacity =
          [] : List (types.Hilite types.Textual)
      , gold =
          [] : List (types.Hilite types.Numeric)
      , power =
          [] : List (types.Hilite types.Percent)
      , power-max =
          [] : List (types.Hilite types.Numeric)
      , experience-level =
          [] : List (types.Hilite types.Numeric)
      , armor-class =
          [] : List (types.Hilite types.Numeric)
      , HD =
          [] : List (types.Hilite types.Numeric)
      , time =
          [] : List (types.Hilite types.Numeric)
      , hunger =
          [] : List (types.Hilite types.Textual)
      , hitpoints =
          [] : List (types.Hilite types.Percent)
      , hitpoints-max =
          [] : List (types.Hilite types.Numeric)
      , dungeon-level =
          [] : List (types.Hilite types.Numeric)
      , experience =
          [] : List (types.Hilite types.Numeric)
      , condition =
          [] : List (types.Hilite types.Condition)
      }
    : types.HiliteStatus
