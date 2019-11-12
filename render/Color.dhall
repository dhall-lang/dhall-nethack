let types = ./../types.dhall

in    λ(x : types.Color)
    → merge
        { black = "black"
        , red = "red"
        , green = "green"
        , brown = "brown"
        , blue = "blue"
        , magenta = "magenta"
        , cyan = "cyan"
        , gray = "gray"
        , orange = "orange"
        , lightgreen = "lightgreen"
        , yellow = "yellow"
        , lightblue = "lightblue"
        , lightmagenta = "lightmagenta"
        , lightcyan = "lightcyan"
        , white = "white"
        }
        x
