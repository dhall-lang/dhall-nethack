let Disclosure = ./Disclosure.dhall

in  { Type =
        { inventory : Optional Disclosure
        , attributes : Optional Disclosure
        , monsters_killed : Optional Disclosure
        , monsters_genocided : Optional Disclosure
        , conduct : Optional Disclosure
        , dungeon_overview : Optional Disclosure
        }
    , default =
        { inventory = None Disclosure
        , attributes = None Disclosure
        , monsters_killed = None Disclosure
        , monsters_genocided = None Disclosure
        , conduct = None Disclosure
        , dungeon_overview = None Disclosure
        }
    }
