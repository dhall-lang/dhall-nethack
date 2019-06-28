let types = ./../types.dhall

in    λ(x : types.Condition)
    → merge
      { always =
          "always"
      , stone =
          "stone"
      , slime =
          "slime"
      , strngl =
          "strngl"
      , foodpois =
          "foodpois"
      , termill =
          "termill"
      , blind =
          "blind"
      , deaf =
          "deaf"
      , stun =
          "stun"
      , conf =
          "conf"
      , hallu =
          "hallu"
      , lev =
          "lev"
      , fly =
          "fly"
      , ride =
          "ride"
      , major_troubles =
          "major_troubles"
      , minor_troubles =
          "minor_troubles"
      , movement =
          "movement"
      , all =
          "all"
      }
      x
