{-  Almost all of the fields are either `Optional` values or `List`s so that
    these fields can be omitted from the generated NetHack configuration file if
    left empty.

    The few fields that are not wrapped in `Optional` or `List` are records
    whose fields are also all `List` or `Optional` values.  For example, the
    `Scores` type is defined as:

    ```
    { own : Optional Bool, around : Optional Natural, top : Optional Natural }
    ```

    If all of those fields are `None` then the `scores` option will omitted
    from the generated NetHack configuration file, so there is no need to wrap
    the `Scores` type in yet another `Optional`.
-}
let Enabled = ./Enabled.dhall

in  { AUTOCOMPLETE : List (Enabled Text)
    , acoustics : Optional Bool
    , align : Optional (Enabled ./Alignment.dhall)
    , autodescribe : Optional Bool
    , autodig : Optional Bool
    , autoopen : Optional Bool
    , autopickup : Optional Bool
    , AUTOPICKUP_EXCEPTION : List ./AUTOPICKUP_EXCEPTION.dhall
    , autoquiver : Optional Bool
    , BIND : List ./BIND.dhall
    , blind : Optional Bool
    , bones : Optional Bool
    , catname : Optional Text
    , checkpoint : Optional Bool
    , checkspace : Optional Bool
    , clicklook : Optional Bool
    , cmdassist : Optional Bool
    , confirm : Optional Bool
    , dark_room : Optional Bool
    , disclose : Optional ./Disclose.dhall
    , dogname : Optional Text
    , extmenu : Optional Bool
    , fixinv : Optional Bool
    , force_invmenu : Optional Bool
    , fruit : Optional Text
    , gender : Optional ./Gender.dhall
    , goldX : Optional Bool
    , help : Optional Bool
    , hilite_pet : Optional Bool
    , hilite_pile : Optional Bool
    , hilite_status : ./HiliteStatus.dhall
    , hitpointbar : Optional Bool
    , horsename : Optional Text
    , ignintr : Optional Bool
    , implicit_uncursed : Optional Bool
    , legacy : Optional Bool
    , lit_corridor : Optional Bool
    , lootabc : Optional Bool
    , mail : Optional Bool
    , mention_walls : Optional Bool
    , menucolors : List ./MenuColor.dhall
    , menustyle : Optional ./MenuStyle.dhall
    , menu_deselect_all : Optional Text
    , menu_deselect_page : Optional Text
    , menu_first_page : Optional Text
    , menu_headings : Optional ./MenuHeadings.dhall
    , menu_invert_all : Optional Text
    , menu_invert_page : Optional Text
    , menu_last_page : Optional Text
    , menu_next_page : Optional Text
    , menu_objsyms : Optional Bool
    , menu_previous_page : Optional Text
    , menu_search : Optional Text
    , menu_select_all : Optional Text
    , menu_select_page : Optional Text
    , menu_tab_sep : Optional Bool
    , msghistory : Optional Natural
    , msg_window : Optional ./MsgWindow.dhall
    , MSGTYPE : List ./MsgType.dhall
    , name : Optional Text
    , news : Optional Bool
    , nudist : Optional Bool
    , null : Optional Bool
    , number_pad : Optional ./NumberPad.dhall
    , packorder : Optional Text
    , paranoid_confirmation : ./ParanoidConfirmation.dhall
    , perm_invent : Optional Bool
    , pettype : Optional ./PetType.dhall
    , pickup_burden : Optional ./PickupBurden.dhall
    , pickup_thrown : Optional Bool
    , pickup_types : Optional Text
    , pile_limit : Optional ./PileLimit.dhall
    , playmode : Optional ./PlayMode.dhall
    , pushweapon : Optional Bool
    , race : Optional (Enabled ./Race.dhall)
    , rest_on_space : Optional Bool
    , role : Optional (Enabled ./Role.dhall)
    , roguesymset : Optional ./SymSet.dhall
    , rlecomp : Optional Bool
    , runmode : Optional ./RunMode.dhall
    , safe_pet : Optional Bool
    , sanity_check : Optional Bool
    , scores : ./Scores.dhall
    , showexp : Optional Bool
    , showrace : Optional Bool
    , showscore : Optional Bool
    , silent : Optional Bool
    , sortloot : Optional ./SortLoot.dhall
    , sortpack : Optional Bool
    , SOUNDDIR : Optional Text
    , SOUND : List ./SOUND.dhall
    , sparkle : Optional Bool
    , standout : Optional Bool
    , status_updates : Optional Bool
    , statushilites : Optional Natural
    , suppress_alert : Optional Text
    , symset : Optional ./SymSet.dhall
    , time : Optional Bool
    , timed_delay : Optional Bool
    , tombstone : Optional Bool
    , toptenwin : Optional Bool
    , travel : Optional Bool
    , verbose : Optional Bool
    , whatis_coord : Optional ./WhatisCoord.dhall
    , whatis_filter : Optional ./WhatisFilter.dhall
    , whatis_menu : Optional Bool
    , whatis_moveskip : Optional Bool
    , windowtype : Optional Text
    , wizkit : Optional Text
    , zerocomp : Optional Bool
    }
