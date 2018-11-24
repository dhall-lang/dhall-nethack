let types = ./../types.dhall

in    λ(x : types.MenuHeadings)
    → merge
      { bold =
          λ(_ : {}) → "bold"
      , inverse =
          λ(_ : {}) → "inverse"
      , underline =
          λ(_ : {}) → "underline"
      }
      x
