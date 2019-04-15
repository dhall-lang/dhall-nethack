{-  The Dhall language is sufficiently powerful that you can use the language to
    template other configuration file formats.  This pattern is more common
    when:

    (A) You are targeting a configuration format where you don't have the option
        of modifying the program to read a Dhall configuration file directly

    (B) The configuration format is not a standard configuration format like
        JSON or YAML

        If we were using a standard format then we would use something like
        `dhall-to-json` or `dhall-to-yaml` instead of `dhall-to-text`

    The NetHack configuration format fits both of these criteria.

    When writing complicated logic, be generous with names and create a lot of
    `let` bindings instead of creating giant right-hand-sides for your
    expressions.  Abstraction is cheap in Dhall because all indirection can be
    eliminated via normalization.
-}
let Prelude = ./../Prelude.dhall

in let types = ./../types.dhall

in let renderOptions = ./Options.dhall

in let renderOptional =
        λ(a : Type)
      → λ(f : a → Text)
      → λ(optional : Optional a)
      → Optional/fold a optional Text (λ(x : a) → renderOptions (f x)) ""

in let renderNamedOptional =
        λ(a : Type)
      → λ(f : a → Text)
      → λ(name : Text)
      → renderOptional a (λ(x : a) → "${name}:${f x}")

in let renderOptionalText = renderNamedOptional Text (λ(x : Text) → x)

in let renderOptionalCharacter = renderNamedOptional Text (λ(x : Text) → "'${x}'")

in let renderOptionalBool =
        λ(name : Text)
      → renderOptional Bool (λ(enable : Bool) → "${./Bool.dhall enable}${name}")

in let renderOptionalNatural = renderNamedOptional Natural Natural/show

in let renderList =
        λ(a : Type)
      → λ(f : a → Text)
      → Prelude.`Text`.concatMap a (λ(x : a) → "${f x}\n")

in let renderOptionalEnabled =
        λ(a : Type)
      → λ(f : a → Text)
      → renderNamedOptional (types.Enabled a) (./Enabled.dhall a f)

in let renderOptionalTopLevel =
        λ(name : Text)
      → λ(x : Optional Text)
      → Optional/fold Text x Text (λ(file : Text) → "${name}=${file}\n") ""

in let renderAUTOCOMPLETES = renderList (types.Enabled Text) ./AUTOCOMPLETE.dhall

in let renderAlign =
      renderOptionalEnabled types.Alignment ./Alignment.dhall "align"

in let renderAutopickup =
      renderList types.AUTOPICKUP_EXCEPTION ./AUTOPICKUP_EXCEPTION.dhall

in let renderDisclose =
      renderNamedOptional types.Disclose ./Disclose.dhall "disclose"

in let renderMenuColors =
        λ(x : List types.MenuColor)
      →       if Prelude.`List`.null types.MenuColor x
        
        then  ""
        
        else  ''
              OPTIONS=menucolors
              ${renderList types.MenuColor ./MenuColor.dhall x}''

in let renderMenuHeadings =
      renderNamedOptional
      types.MenuHeadings
      ./MenuHeadings.dhall
      "menu_headings"

in let renderMenuStyle =
      renderNamedOptional types.MenuStyle ./MenuStyle.dhall "menustyle"

in let renderMsgWindow =
      renderNamedOptional types.MsgWindow ./MsgWindow.dhall "msg_window"

in let renderNumberPad =
      renderNamedOptional types.NumberPad ./NumberPad.dhall "number_pad"

in let renderPetType = renderNamedOptional types.PetType ./PetType.dhall "pettype"

in let renderPickupBurden =
      renderNamedOptional
      types.PickupBurden
      ./PickupBurden.dhall
      "pickup_burden"

in let renderPileLimit =
      renderNamedOptional types.PileLimit ./PileLimit.dhall "pile_limit"

in let renderPlayMode =
      renderNamedOptional types.PlayMode ./PlayMode.dhall "playmode"

in let renderRunMode = renderNamedOptional types.RunMode ./RunMode.dhall "runmode"

in let renderSortLoot =
      renderNamedOptional types.SortLoot ./SortLoot.dhall "sortloot"

in let renderSOUND = renderList types.SOUND ./SOUND.dhall

in let renderOptionalSymSet = renderNamedOptional types.SymSet ./SymSet.dhall

in let renderWhatisCoord =
      renderNamedOptional types.WhatisCoord ./WhatisCoord.dhall "whatis_coord"

in let renderWhatisFilter =
      renderNamedOptional
      types.WhatisFilter
      ./WhatisFilter.dhall
      "whatis_filter"

in    λ(config : types.Config)
    →     renderAUTOCOMPLETES config.AUTOCOMPLETE
      ++  renderOptionalBool "acoustics" config.acoustics
      ++  renderAlign config.align
      ++  renderOptionalBool "autodescribe" config.autodescribe
      ++  renderOptionalBool "autodig" config.autodig
      ++  renderOptionalBool "autoopen" config.autoopen
      ++  renderOptionalBool "autopickup" config.autopickup
      ++  renderAutopickup config.AUTOPICKUP_EXCEPTION
      ++  renderOptionalBool "autoquiver" config.autoquiver
      ++  renderList types.BIND ./BIND.dhall config.BIND
      ++  renderOptionalBool "blind" config.blind
      ++  renderOptionalBool "bones" config.bones
      ++  renderOptionalText "catname" config.catname
      ++  renderOptionalBool "checkpoint" config.checkpoint
      ++  renderOptionalBool "checkspace" config.checkspace
      ++  renderOptionalBool "clicklook" config.clicklook
      ++  renderOptionalBool "cmdassist" config.cmdassist
      ++  renderOptionalBool "confirm" config.confirm
      ++  renderOptionalBool "dark_room" config.dark_room
      ++  renderDisclose config.disclose
      ++  renderOptionalText "dogname" config.dogname
      ++  renderOptionalBool "extmenu" config.extmenu
      ++  renderOptionalBool "fixinv" config.fixinv
      ++  renderOptionalBool "force_invmenu" config.force_invmenu
      ++  renderOptionalText "fruit" config.fruit
      ++  renderNamedOptional types.Gender ./Gender.dhall "gender" config.gender
      ++  renderOptionalBool "goldX" config.goldX
      ++  renderOptionalBool "help" config.help
      ++  renderOptionalBool "hilite_pet" config.hilite_pet
      ++  renderOptionalBool "hilite_pile" config.hilite_pile
      ++  ./HiliteStatus.dhall config.hilite_status
      ++  renderOptionalBool "hitpointbar" config.hitpointbar
      ++  renderOptionalText "horsename" config.horsename
      ++  renderOptionalBool "ignintr" config.ignintr
      ++  renderOptionalBool "implicit_uncursed" config.implicit_uncursed
      ++  renderOptionalBool "legacy" config.legacy
      ++  renderOptionalBool "lit_corridor" config.lit_corridor
      ++  renderOptionalBool "lootabc" config.lootabc
      ++  renderOptionalBool "mail" config.mail
      ++  renderOptionalBool "mention_walls" config.mention_walls
      ++  renderMenuColors config.menucolors
      ++  renderMenuStyle config.menustyle
      ++  renderOptionalCharacter "menu_deselect_all" config.menu_deselect_all
      ++  renderOptionalCharacter "menu_deselect_page" config.menu_deselect_page
      ++  renderOptionalCharacter "menu_first_page" config.menu_first_page
      ++  renderMenuHeadings config.menu_headings
      ++  renderOptionalCharacter "menu_invert_all" config.menu_invert_all
      ++  renderOptionalCharacter "menu_invert_page" config.menu_invert_page
      ++  renderOptionalCharacter "menu_last_page" config.menu_last_page
      ++  renderOptionalCharacter "menu_next_page" config.menu_next_page
      ++  renderOptionalBool "menu_objsyms" config.menu_objsyms
      ++  renderOptionalCharacter "menu_previous_page" config.menu_previous_page
      ++  renderOptionalCharacter "menu_search" config.menu_search
      ++  renderOptionalCharacter "menu_select_all" config.menu_select_all
      ++  renderOptionalCharacter "menu_select_page" config.menu_select_page
      ++  renderOptionalBool "menu_tab_sep" config.menu_tab_sep
      ++  renderOptionalNatural "msghistory" config.msghistory
      ++  renderMsgWindow config.msg_window
      ++  renderList types.MsgType ./MsgType.dhall config.MSGTYPE
      ++  renderOptionalText "name" config.name
      ++  renderOptionalBool "news" config.news
      ++  renderOptionalBool "nudist" config.nudist
      ++  renderOptionalBool "null" config.null
      ++  renderNumberPad config.number_pad
      ++  renderOptionalText "packorder" config.packorder
      ++  ./ParanoidConfirmation.dhall config.paranoid_confirmation
      ++  renderOptionalBool "perm_invent" config.perm_invent
      ++  renderPetType config.pettype
      ++  renderPickupBurden config.pickup_burden
      ++  renderOptionalBool "pickup_thrown" config.pickup_thrown
      ++  renderOptionalText "pickup_types" config.pickup_types
      ++  renderPileLimit config.pile_limit
      ++  renderPlayMode config.playmode
      ++  renderOptionalBool "pushweapon" config.pushweapon
      ++  renderOptionalEnabled types.Race ./Race.dhall "race" config.race
      ++  renderOptionalBool "rest_on_space" config.rest_on_space
      ++  renderOptionalEnabled types.Role ./Role.dhall "role" config.role
      ++  renderOptionalSymSet "roguesymset" config.roguesymset
      ++  renderOptionalBool "rlecomp" config.rlecomp
      ++  renderRunMode config.runmode
      ++  renderOptionalBool "safe_pet" config.safe_pet
      ++  renderOptionalBool "sanity_check" config.sanity_check
      ++  ./Scores.dhall config.scores
      ++  renderOptionalBool "showexp" config.showexp
      ++  renderOptionalBool "showrace" config.showrace
      ++  renderOptionalBool "showscore" config.showscore
      ++  renderOptionalBool "silent" config.silent
      ++  renderSortLoot config.sortloot
      ++  renderOptionalBool "sortpack" config.sortpack
      ++  renderSOUND config.SOUND
      ++  renderOptionalTopLevel "SOUNDDIR" config.SOUNDDIR
      ++  renderOptionalBool "sparkle" config.sparkle
      ++  renderOptionalBool "standout" config.standout
      ++  renderOptionalBool "status_updates" config.status_updates
      ++  renderOptionalNatural "statushilites" config.statushilites
      ++  renderOptionalText "suppress_alert" config.suppress_alert
      ++  renderOptionalSymSet "symset" config.symset
      ++  renderOptionalBool "time" config.time
      ++  renderOptionalBool "timed_delay" config.timed_delay
      ++  renderOptionalBool "tombstone" config.tombstone
      ++  renderOptionalBool "toptenwin" config.toptenwin
      ++  renderOptionalBool "travel" config.travel
      ++  renderOptionalBool "verbose" config.verbose
      ++  renderWhatisCoord config.whatis_coord
      ++  renderWhatisFilter config.whatis_filter
      ++  renderOptionalBool "whatis_menu" config.whatis_menu
      ++  renderOptionalBool "whatis_moveskip" config.whatis_moveskip
      ++  renderOptionalText "windowtype" config.windowtype
      ++  renderOptionalTopLevel "WIZKIT" config.wizkit
      ++  renderOptionalBool "zerocomp" config.zerocomp
