# `dhall-to-nethack`

This repository illustrates best practices for the
[Dhall configuration language][dhall-lang] using the
[NetHack configuration format][nethack] as an example use case.  You can use
this repository :

* as a template for organizing your own large Dhall projects
* as a case study for adapting Dhall to large and complex configuration formats

The following files have comments documenting some of the decisions behind how
the project is organized and how this package models the Dhall-to-NetHack
translation:

* [`./types.dhall`](./types.dhall)
    * [`./types/Config.dhall`](./types/Config.dhall)
    * [`./types/Attributes.dhall`](./types/Attributes.dhall)
    * [`./types/Comparison.dhall`](./types/Comparison.dhall)
    * [`./types/Hilite.dhall`](./types/Hilite.dhall)
    * [`./types/HiliteStatus.dhall`](./types/HiliteStatus.dhall)
    * [`./types/NumberPad.dhall`](./types/NumberPad.dhall)
    * [`./types/PileLimit.dhall`](./types/PileLimit.dhall)
* [`./defaults.dhall`](./defaults.dhall)
    * [`./defaults/Config.dhall`](./defaults/Config.dhall)
* [`./render/Config.dhall`](./render/Config.dhall)
* [`./Prelude.dhall`](./Prelude.dhall)

Note: this repository covers the non-platform-specific NetHack options, omits
redundant options (such as `female`, which is superseded by `gender`), and
also omits underspecified options (such as `herecmd_menu`).

## Quick start

```haskell
-- ./example.dhall

let types = ./types.dhall

let defaults = ./defaults.dhall

let toNetHack = ./toNetHack.dhall

let config =
        defaults.Config
      ⫽ { name =
            Some "Kaeru"
        , role =
            Some { enable = True, value = types.Role.wizard {=} }
        , align =
            Some { enable = True, value = types.Alignment.chaotic {=} }
        , race =
            Some { enable = True, value = types.Race.elf {=} }
        , gender =
            Some (types.Gender.female {=})
        , pettype =
            Some (types.PetType.cat {=})
        , catname =
            Some "Imoen"
        , fruit =
            Some "apple pie"
        , autopickup =
            Some False
        , disclose =
            let secret = Some { default = False, prompt = False }
            
            in  Some
                { attributes =
                    secret
                , conduct =
                    secret
                , dungeon_overview =
                    secret
                , inventory =
                    secret
                , monsters_genocided =
                    secret
                , monsters_killed =
                    secret
                }
        }

in  toNetHack config
```

```bash
$ dhall-to-text <<< './example.dhall'
OPTIONS=align:chaotic
OPTIONS=!autopickup
OPTIONS=catname:Imoen
OPTIONS=disclose:-i -a -v -g -c -o
OPTIONS=fruit:apple pie
OPTIONS=gender:female
OPTIONS=name:Kaeru
OPTIONS=pettype:cat
OPTIONS=race:elf
OPTIONS=role:wizard
```

[dhall-lang]: https://github.com/dhall-lang/dhall-lang/
[nethack]: https://nethackwiki.com/wiki/Options
