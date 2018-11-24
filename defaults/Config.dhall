{-  This is the default configuration which generates an empty
    `~/.nethackrc` file

    ```
    $ dhall <<< './toNetHack.dhall ./defaults/Config.dhall'
    ""
    ```
-}

let types = ./../types.dhall

in    { AUTOCOMPLETE =
          [] : List (types.Enabled Text)
      , acoustics =
          None Bool
      , align =
          None (types.Enabled types.Alignment)
      , autodescribe =
          None Bool
      , autodig =
          None Bool
      , autoopen =
          None Bool
      , autopickup =
          None Bool
      , AUTOPICKUP_EXCEPTION =
          [] : List types.AUTOPICKUP_EXCEPTION
      , autoquiver =
          None Bool
      , BIND =
          [] : List types.BIND
      , blind =
          None Bool
      , bones =
          None Bool
      , catname =
          None Text
      , checkpoint =
          None Bool
      , checkspace =
          None Bool
      , clicklook =
          None Bool
      , cmdassist =
          None Bool
      , confirm =
          None Bool
      , dark_room =
          None Bool
      , disclose =
          None types.Disclose
      , dogname =
          None Text
      , extmenu =
          None Bool
      , fixinv =
          None Bool
      , force_invmenu =
          None Bool
      , fruit =
          None Text
      , gender =
          None types.Gender
      , goldX =
          None Bool
      , help =
          None Bool
      , hilite_pet =
          None Bool
      , hilite_pile =
          None Bool
      , hilite_status =
          ./HiliteStatus.dhall
      , hitpointbar =
          None Bool
      , horsename =
          None Text
      , ignintr =
          None Bool
      , implicit_uncursed =
          None Bool
      , legacy =
          None Bool
      , lit_corridor =
          None Bool
      , lootabc =
          None Bool
      , mail =
          None Bool
      , mention_walls =
          None Bool
      , menucolors =
          [] : List types.MenuColor
      , menustyle =
          None types.MenuStyle
      , menu_deselect_all =
          None Text
      , menu_deselect_page =
          None Text
      , menu_first_page =
          None Text
      , menu_headings =
          None types.MenuHeadings
      , menu_invert_all =
          None Text
      , menu_invert_page =
          None Text
      , menu_last_page =
          None Text
      , menu_next_page =
          None Text
      , menu_objsyms =
          None Bool
      , menu_previous_page =
          None Text
      , menu_search =
          None Text
      , menu_select_all =
          None Text
      , menu_select_page =
          None Text
      , menu_tab_sep =
          None Bool
      , msghistory =
          None Natural
      , msg_window =
          None types.MsgWindow
      , MSGTYPE =
          [] : List types.MsgType
      , name =
          None Text
      , news =
          None Bool
      , nudist =
          None Bool
      , null =
          None Bool
      , number_pad =
          None types.NumberPad
      , packorder =
          None Text
      , paranoid_confirmation =
          ./ParanoidConfirmation.dhall
      , perm_invent =
          None Bool
      , pettype =
          None types.PetType
      , pickup_burden =
          None types.PickupBurden
      , pickup_thrown =
          None Bool
      , pickup_types =
          None Text
      , pile_limit =
          None types.PileLimit
      , playmode =
          None types.PlayMode
      , pushweapon =
          None Bool
      , race =
          None (types.Enabled types.Race)
      , rest_on_space =
          None Bool
      , role =
          None (types.Enabled types.Role)
      , roguesymset =
          None types.SymSet
      , rlecomp =
          None Bool
      , runmode =
          None types.RunMode
      , safe_pet =
          None Bool
      , sanity_check =
          None Bool
      , scores =
          ./Scores.dhall
      , showexp =
          None Bool
      , showrace =
          None Bool
      , showscore =
          None Bool
      , silent =
          None Bool
      , sortloot =
          None types.SortLoot
      , sortpack =
          None Bool
      , SOUNDDIR =
          None Text
      , SOUND =
          [] : List types.SOUND
      , sparkle =
          None Bool
      , standout =
          None Bool
      , status_updates =
          None Bool
      , statushilites =
          None Natural
      , suppress_alert =
          None Text
      , symset =
          None types.SymSet
      , time =
          None Bool
      , timed_delay =
          None Bool
      , tombstone =
          None Bool
      , toptenwin =
          None Bool
      , travel =
          None Bool
      , verbose =
          None Bool
      , whatis_coord =
          None types.WhatisCoord
      , whatis_filter =
          None types.WhatisFilter
      , whatis_menu =
          None Bool
      , whatis_moveskip =
          None Bool
      , windowtype =
          None Text
      , wizkit =
          None Text
      , zerocomp =
          None Bool
      }
    : types.Config
