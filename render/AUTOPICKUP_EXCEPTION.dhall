let types = ../types.dhall

in    λ(x : types.AUTOPICKUP_EXCEPTION)
    → let prefix = if x.pickup then "<" else ">"

      in  "AUTOPICKUP_EXCEPTION=\"${prefix}${x.name}\""
