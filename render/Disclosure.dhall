let types = ../types.dhall

in    λ(x : types.Disclosure)
    →       if x.prompt

      then  if x.default then "y" else "n"

      else  if x.default

      then  "+"

      else  "-"
