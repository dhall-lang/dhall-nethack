{-  This provides a convenient import to obtain all available types

    Users will typically use this import to access constructors for various
    union types, like this:

    ```
    let types = ./types.dhall

    in  types.Config::{ role = Some { enable = True, value = types.Role.wizard } }
    ```

    This import is also used internally within the package as a convenient
    import for all available types.
-}

{ Alignment = ./types/Alignment.dhall
, Attributes = ./types/Attributes.dhall
, AUTOPICKUP_EXCEPTION = ./types/AUTOPICKUP_EXCEPTION.dhall
, BIND = ./types/BIND.dhall
, Color = ./types/Color.dhall
, Comparison = ./types/Comparison.dhall
, Condition = ./types/Condition.dhall
, Config = ./types/Config.dhall
, Disclose = ./types/Disclose.dhall
, Disclosure = ./types/Disclosure.dhall
, Enabled = ./types/Enabled.dhall
, Gender = ./types/Gender.dhall
, Hilite = ./types/Hilite.dhall
, HiliteStatus = ./types/HiliteStatus.dhall
, MenuColor = ./types/MenuColor.dhall
, MenuHeadings = ./types/MenuHeadings.dhall
, MenuStyle = ./types/MenuStyle.dhall
, MsgType = ./types/MsgType.dhall
, MsgWindow = ./types/MsgWindow.dhall
, NumberPad = ./types/NumberPad.dhall
, Numeric = ./types/Numeric.dhall
, ParanoidConfirmation = ./types/ParanoidConfirmation.dhall
, Percent = ./types/Percent.dhall
, PetType = ./types/PetType.dhall
, PickupBurden = ./types/PickupBurden.dhall
, PileLimit = ./types/PileLimit.dhall
, PlayMode = ./types/PlayMode.dhall
, Race = ./types/Race.dhall
, Role = ./types/Role.dhall
, RunMode = ./types/RunMode.dhall
, Scores = ./types/Scores.dhall
, SortLoot = ./types/SortLoot.dhall
, SOUND = ./types/SOUND.dhall
, SymSet = ./types/SymSet.dhall
, Textual = ./types/Textual.dhall
, WhatisCoord = ./types/WhatisCoord.dhall
, WhatisFilter = ./types/WhatisFilter.dhall
}
