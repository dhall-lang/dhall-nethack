let types = ./../types.dhall

in    λ(x : types.Role)
    → merge
      { archaeologist =
          λ(_ : {}) → "archaeologist"
      , barbarian =
          λ(_ : {}) → "barbarian"
      , caveman =
          λ(_ : {}) → "caveman"
      , healer =
          λ(_ : {}) → "healer"
      , knight =
          λ(_ : {}) → "knight"
      , monk =
          λ(_ : {}) → "monk"
      , priest =
          λ(_ : {}) → "priest"
      , ranger =
          λ(_ : {}) → "ranger"
      , rogue =
          λ(_ : {}) → "rogue"
      , samurai =
          λ(_ : {}) → "samurai"
      , tourist =
          λ(_ : {}) → "tourist"
      , valkyrie =
          λ(_ : {}) → "valkyrie"
      , wizard =
          λ(_ : {}) → "wizard"
      }
      x
