let types = ../types.dhall

in  λ(x : types.BIND) → "BIND=${x.keybinding}:${x.command}"
