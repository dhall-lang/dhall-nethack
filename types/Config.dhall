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
let Alignment = ./Alignment.dhall

let AUTOPICKUP_EXCEPTION = ./AUTOPICKUP_EXCEPTION.dhall

let BIND = ./BIND.dhall

let Disclose = ./Disclose.dhall

let Enabled = ./Enabled.dhall

let Gender = ./Gender.dhall

let HiliteStatus = ./HiliteStatus.dhall

let MenuColor = ./MenuColor.dhall

let MenuStyle = ./MenuStyle.dhall

let MenuHeadings = ./MenuHeadings.dhall

let MsgWindow = ./MsgWindow.dhall

let MsgType = ./MsgType.dhall

let NumberPad = ./NumberPad.dhall

let ParanoidConfirmation = ./ParanoidConfirmation.dhall

let PetType = ./PetType.dhall

let PickupBurden = ./PickupBurden.dhall

let PileLimit = ./PileLimit.dhall

let PlayMode = ./PlayMode.dhall

let Race = ./Race.dhall

let Role = ./Role.dhall

let RunMode = ./RunMode.dhall

let Scores = ./Scores.dhall

let SortLoot = ./SortLoot.dhall

let SOUND = ./SOUND.dhall

let SymSet = ./SymSet.dhall

let WhatisCoord = ./WhatisCoord.dhall

let WhatisFilter = ./WhatisFilter.dhall

in  { Type =
        { AUTOCOMPLETE : List (Enabled Text)
        , acoustics : Optional Bool
        , align : Optional (Enabled Alignment)
        , autodescribe : Optional Bool
        , autodig : Optional Bool
        , autoopen : Optional Bool
        , autopickup : Optional Bool
        , AUTOPICKUP_EXCEPTION : List AUTOPICKUP_EXCEPTION
        , autoquiver : Optional Bool
        , BIND : List BIND
        , blind : Optional Bool
        , bones : Optional Bool
        , catname : Optional Text
        , checkpoint : Optional Bool
        , checkspace : Optional Bool
        , clicklook : Optional Bool
        , cmdassist : Optional Bool
        , confirm : Optional Bool
        , dark_room : Optional Bool
        , disclose : Optional Disclose.Type
        , dogname : Optional Text
        , extmenu : Optional Bool
        , fixinv : Optional Bool
        , force_invmenu : Optional Bool
        , fruit : Optional Text
        , gender : Optional Gender
        , goldX : Optional Bool
        , help : Optional Bool
        , hilite_pet : Optional Bool
        , hilite_pile : Optional Bool
        , hilite_status : HiliteStatus.Type
        , hitpointbar : Optional Bool
        , horsename : Optional Text
        , ignintr : Optional Bool
        , implicit_uncursed : Optional Bool
        , legacy : Optional Bool
        , lit_corridor : Optional Bool
        , lootabc : Optional Bool
        , mail : Optional Bool
        , mention_walls : Optional Bool
        , menucolors : List MenuColor
        , menustyle : Optional MenuStyle
        , menu_deselect_all : Optional Text
        , menu_deselect_page : Optional Text
        , menu_first_page : Optional Text
        , menu_headings : Optional MenuHeadings
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
        , msg_window : Optional MsgWindow
        , MSGTYPE : List MsgType
        , name : Optional Text
        , news : Optional Bool
        , nudist : Optional Bool
        , null : Optional Bool
        , number_pad : Optional NumberPad
        , packorder : Optional Text
        , paranoid_confirmation : ParanoidConfirmation.Type
        , perm_invent : Optional Bool
        , pettype : Optional PetType
        , pickup_burden : Optional PickupBurden
        , pickup_thrown : Optional Bool
        , pickup_types : Optional Text
        , pile_limit : Optional PileLimit
        , playmode : Optional PlayMode
        , pushweapon : Optional Bool
        , race : Optional (Enabled Race)
        , rest_on_space : Optional Bool
        , role : Optional (Enabled Role)
        , roguesymset : Optional SymSet
        , rlecomp : Optional Bool
        , runmode : Optional RunMode
        , safe_pet : Optional Bool
        , sanity_check : Optional Bool
        , scores : Scores.Type
        , showexp : Optional Bool
        , showrace : Optional Bool
        , showscore : Optional Bool
        , silent : Optional Bool
        , sortloot : Optional SortLoot
        , sortpack : Optional Bool
        , SOUNDDIR : Optional Text
        , SOUND : List SOUND
        , sparkle : Optional Bool
        , standout : Optional Bool
        , status_updates : Optional Bool
        , statushilites : Optional Natural
        , suppress_alert : Optional Text
        , symset : Optional SymSet
        , time : Optional Bool
        , timed_delay : Optional Bool
        , tombstone : Optional Bool
        , toptenwin : Optional Bool
        , travel : Optional Bool
        , verbose : Optional Bool
        , whatis_coord : Optional WhatisCoord
        , whatis_filter : Optional WhatisFilter
        , whatis_menu : Optional Bool
        , whatis_moveskip : Optional Bool
        , windowtype : Optional Text
        , wizkit : Optional Text
        , zerocomp : Optional Bool
        }
    , default =
        { AUTOCOMPLETE = [] : List (Enabled Text)
        , acoustics = None Bool
        , align = None (Enabled Alignment)
        , autodescribe = None Bool
        , autodig = None Bool
        , autoopen = None Bool
        , autopickup = None Bool
        , AUTOPICKUP_EXCEPTION = [] : List AUTOPICKUP_EXCEPTION
        , autoquiver = None Bool
        , BIND = [] : List BIND
        , blind = None Bool
        , bones = None Bool
        , catname = None Text
        , checkpoint = None Bool
        , checkspace = None Bool
        , clicklook = None Bool
        , cmdassist = None Bool
        , confirm = None Bool
        , dark_room = None Bool
        , disclose = None Disclose.Type
        , dogname = None Text
        , extmenu = None Bool
        , fixinv = None Bool
        , force_invmenu = None Bool
        , fruit = None Text
        , gender = None Gender
        , goldX = None Bool
        , help = None Bool
        , hilite_pet = None Bool
        , hilite_pile = None Bool
        , hilite_status = HiliteStatus.default
        , hitpointbar = None Bool
        , horsename = None Text
        , ignintr = None Bool
        , implicit_uncursed = None Bool
        , legacy = None Bool
        , lit_corridor = None Bool
        , lootabc = None Bool
        , mail = None Bool
        , mention_walls = None Bool
        , menucolors = [] : List MenuColor
        , menustyle = None MenuStyle
        , menu_deselect_all = None Text
        , menu_deselect_page = None Text
        , menu_first_page = None Text
        , menu_headings = None MenuHeadings
        , menu_invert_all = None Text
        , menu_invert_page = None Text
        , menu_last_page = None Text
        , menu_next_page = None Text
        , menu_objsyms = None Bool
        , menu_previous_page = None Text
        , menu_search = None Text
        , menu_select_all = None Text
        , menu_select_page = None Text
        , menu_tab_sep = None Bool
        , msghistory = None Natural
        , msg_window = None MsgWindow
        , MSGTYPE = [] : List MsgType
        , name = None Text
        , news = None Bool
        , nudist = None Bool
        , null = None Bool
        , number_pad = None NumberPad
        , packorder = None Text
        , paranoid_confirmation = ParanoidConfirmation.default
        , perm_invent = None Bool
        , pettype = None PetType
        , pickup_burden = None PickupBurden
        , pickup_thrown = None Bool
        , pickup_types = None Text
        , pile_limit = None PileLimit
        , playmode = None PlayMode
        , pushweapon = None Bool
        , race = None (Enabled Race)
        , rest_on_space = None Bool
        , role = None (Enabled Role)
        , roguesymset = None SymSet
        , rlecomp = None Bool
        , runmode = None RunMode
        , safe_pet = None Bool
        , sanity_check = None Bool
        , scores = Scores.default
        , showexp = None Bool
        , showrace = None Bool
        , showscore = None Bool
        , silent = None Bool
        , sortloot = None SortLoot
        , sortpack = None Bool
        , SOUNDDIR = None Text
        , SOUND = [] : List SOUND
        , sparkle = None Bool
        , standout = None Bool
        , status_updates = None Bool
        , statushilites = None Natural
        , suppress_alert = None Text
        , symset = None SymSet
        , time = None Bool
        , timed_delay = None Bool
        , tombstone = None Bool
        , toptenwin = None Bool
        , travel = None Bool
        , verbose = None Bool
        , whatis_coord = None WhatisCoord
        , whatis_filter = None WhatisFilter
        , whatis_menu = None Bool
        , whatis_moveskip = None Bool
        , windowtype = None Text
        , wizkit = None Text
        , zerocomp = None Bool
        }
    }
