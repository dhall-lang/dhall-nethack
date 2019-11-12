let types = ../types.dhall

in    λ(x : types.SOUND)
    → "SOUND=MESG \"${x.regex}\" \"${x.filename}\" ${Natural/show x.volume}"
