# `dhall-nethack`

This repository illustrates best practices for the
[Dhall configuration language][dhall-lang] using the
[NetHack configuration format][nethack] as an example use case.  You can use
this repository :

* as a template for organizing your own large Dhall projects
* as a case study for adapting Dhall to large and complex configuration formats

Note: this repository covers the non-platform-specific NetHack options, omits
redundant options (such as `female`, which is superseded by `gender`), and
also omits underspecified options (such as `herecmd_menu`).

## Quick start

```haskell
-- ./example.dhall

let types = ./types.dhall

let toNetHack = ./toNetHack.dhall

let config =
        types.Config::{
        , name = Some "Kaeru"
        , role = Some { enable = True, value = types.Role.wizard }
        , align = Some { enable = True, value = types.Alignment.chaotic }
        , race = Some { enable = True, value = types.Race.elf }
        , gender = Some types.Gender.female
        , pettype = Some types.PetType.cat
        , catname = Some "Imoen"
        , fruit = Some "apple pie"
        , autopickup = Some False
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
$ dhall text --file './example.dhall'
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

## Exploring the project

You can begin to explore the project by browsing these files and their
dependencies:

* [`./types.dhall`](./types.dhall)
    * [`./types/Config.dhall`](./types/Config.dhall)
* [`./render.dhall`](./render.dhall)
    * [`./render/Config.dhall`](./render/Config.dhall)
* [`./Prelude.dhall`](./Prelude.dhall)
* [`./examples/validated.dhall`](./examples/validated.dhall)

You can also use `dhall repl` to explore this project.  Try these commands to
get started:

```haskell
$ dhall repl
⊢ :let types = ./types.dhall  -- Import all types as a giant record
⊢ types.Config                -- Display the `Config` type
⊢ types.Scores                -- Display the `Scores` type

⊢ :let render = ./render.dhall              -- Import all rendering functions
⊢ render.Config types.Config.default        -- Render the default configuration
⊢ render.Config ./examples/small.dhall      -- Render a small configuration
⊢ render.Config ./examples/validated.dhall  -- Render a large configuration
⊢ render.Config (types.Config::{ scores = types.Scores::{ top = Some 3 } })
⊢ render.Scores (types.Scores::{ top = Some 3 })

⊢ :type render.Scores  -- What is the type of the `render.Scores` function?
⊢ render.Scores        -- What is the implementation of `render.Scores`?
⊢ :type render.Config  -- What is the type of the `render.Config` function?
⊢ render.Config        -- What is the implementation of `render.Config`?
```

[dhall-lang]: https://github.com/dhall-lang/dhall-lang/
[nethack]: https://nethackwiki.com/wiki/Options
