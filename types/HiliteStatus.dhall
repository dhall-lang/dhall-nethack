{-  Each status has a different type of trigger (i.e. `Textual`, `Numeric`,
    etc.), which ensures that the user can't specify the wrong type of trigger
    for each option.

    For example, if the user tries to specify a numeric trigger for the title
    field, like this:

    ```
    let types = ./types.dhall

    in  types.Config::{
        , hilite_status =
            types.HiliteStatus::{
            , title =
                [ { trigger =
                      Some (types.Numeric.number (types.Comparison.EqualTo 5))
                  , color =
                      types.Color.blue
                  , attributes =
                      None types.Attributes.Type
                  }
                ]
            }
        }
    ```

    ... then they will get a type error like this:

    ```
    Error: Expression doesn't match annotation

    { title : …
              { trigger : …
                          < - string : …
                          | + number : …
                          | …
                          >
              , …
              }
    , …
    }
-}

let Hilite = ./Hilite.dhall

let Textual = ./Textual.dhall

let Numeric = ./Numeric.dhall

let Percent = ./Percent.dhall

let Condition = ./Condition.dhall

in  { Type =
        { title : List (Hilite Textual)
        , strength : List (Hilite Numeric)
        , dexterity : List (Hilite Numeric)
        , constitution : List (Hilite Numeric)
        , intelligence : List (Hilite Numeric)
        , wisdom : List (Hilite Numeric)
        , charisma : List (Hilite Numeric)
        , characteristics : List (Hilite Numeric)
        , alignment : List (Hilite Textual)
        , score : List (Hilite Numeric)
        , carrying-capacity : List (Hilite Textual)
        , gold : List (Hilite Numeric)
        , power : List (Hilite Percent)
        , power-max : List (Hilite Numeric)
        , experience-level : List (Hilite Numeric)
        , armor-class : List (Hilite Numeric)
        , HD : List (Hilite Numeric)
        , time : List (Hilite Numeric)
        , hunger : List (Hilite Textual)
        , hitpoints : List (Hilite Percent)
        , hitpoints-max : List (Hilite Numeric)
        , dungeon-level : List (Hilite Numeric)
        , experience : List (Hilite Numeric)
        , condition : List (Hilite Condition)
        }
    , default =
        { title = [] : List (Hilite Textual)
        , strength = [] : List (Hilite Numeric)
        , dexterity = [] : List (Hilite Numeric)
        , constitution = [] : List (Hilite Numeric)
        , intelligence = [] : List (Hilite Numeric)
        , wisdom = [] : List (Hilite Numeric)
        , charisma = [] : List (Hilite Numeric)
        , characteristics = [] : List (Hilite Numeric)
        , alignment = [] : List (Hilite Textual)
        , score = [] : List (Hilite Numeric)
        , carrying-capacity = [] : List (Hilite Textual)
        , gold = [] : List (Hilite Numeric)
        , power = [] : List (Hilite Percent)
        , power-max = [] : List (Hilite Numeric)
        , experience-level = [] : List (Hilite Numeric)
        , armor-class = [] : List (Hilite Numeric)
        , HD = [] : List (Hilite Numeric)
        , time = [] : List (Hilite Numeric)
        , hunger = [] : List (Hilite Textual)
        , hitpoints = [] : List (Hilite Percent)
        , hitpoints-max = [] : List (Hilite Numeric)
        , dungeon-level = [] : List (Hilite Numeric)
        , experience = [] : List (Hilite Numeric)
        , condition = [] : List (Hilite Condition)
        }
    }
