let types = ./../types.dhall

in let defaults = ./../defaults.dhall

in    defaults.Config
    ⫽ { name =
          Some "Kaeru"
      , role =
          Some { enable = True, value = types.Role.wizard }
      , align =
          Some { enable = True, value = types.Alignment.chaotic }
      , race =
          Some { enable = True, value = types.Race.elf }
      , gender =
          Some types.Gender.female
      , pettype =
          Some types.PetType.cat
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
