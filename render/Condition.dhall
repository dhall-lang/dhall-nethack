let types = ./../types.dhall

in    λ(x : types.Condition)
    → merge
      { always =
          λ(_ : {}) → "always"
      , stone =
          λ(_ : {}) → "stone"
      , slime =
          λ(_ : {}) → "slime"
      , strngl =
          λ(_ : {}) → "strngl"
      , foodpois =
          λ(_ : {}) → "foodpois"
      , termill =
          λ(_ : {}) → "termill"
      , blind =
          λ(_ : {}) → "blind"
      , deaf =
          λ(_ : {}) → "deaf"
      , stun =
          λ(_ : {}) → "stun"
      , conf =
          λ(_ : {}) → "conf"
      , hallu =
          λ(_ : {}) → "hallu"
      , lev =
          λ(_ : {}) → "lev"
      , fly =
          λ(_ : {}) → "fly"
      , ride =
          λ(_ : {}) → "ride"
      , major_troubles =
          λ(_ : {}) → "major_troubles"
      , minor_troubles =
          λ(_ : {}) → "minor_troubles"
      , movement =
          λ(_ : {}) → "movement"
      , all =
          λ(_ : {}) → "all"
      }
      x
