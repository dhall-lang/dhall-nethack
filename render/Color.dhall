let types = ./../types.dhall

in    λ(x : types.Color)
    → merge
      { black =
          λ(_ : {}) → "black"
      , red =
          λ(_ : {}) → "red"
      , green =
          λ(_ : {}) → "green"
      , brown =
          λ(_ : {}) → "brown"
      , blue =
          λ(_ : {}) → "blue"
      , magenta =
          λ(_ : {}) → "magenta"
      , cyan =
          λ(_ : {}) → "cyan"
      , gray =
          λ(_ : {}) → "gray"
      , orange =
          λ(_ : {}) → "orange"
      , lightgreen =
          λ(_ : {}) → "lightgreen"
      , yellow =
          λ(_ : {}) → "yellow"
      , lightblue =
          λ(_ : {}) → "lightblue"
      , lightmagenta =
          λ(_ : {}) → "lightmagenta"
      , lightcyan =
          λ(_ : {}) → "lightcyan"
      , white =
          λ(_ : {}) → "white"
      }
      x
