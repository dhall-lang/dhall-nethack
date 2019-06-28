let types = ./../types.dhall

in    λ(x : types.MenuHeadings)
    → merge
      { bold =
          "bold"
      , inverse =
          "inverse"
      , underline =
          "underline"
      }
      x
