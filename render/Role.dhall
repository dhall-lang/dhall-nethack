let types = ./../types.dhall

in    λ(x : types.Role)
    → merge
        { archaeologist = "archaeologist"
        , barbarian = "barbarian"
        , caveman = "caveman"
        , healer = "healer"
        , knight = "knight"
        , monk = "monk"
        , priest = "priest"
        , ranger = "ranger"
        , rogue = "rogue"
        , samurai = "samurai"
        , tourist = "tourist"
        , valkyrie = "valkyrie"
        , wizard = "wizard"
        }
        x
