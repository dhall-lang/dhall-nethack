let types = ../types.dhall

in    λ(x : types.MsgType)
    → let value =
            merge
              { hide = λ(t : Text) → "hide \"${t}\""
              , stop = λ(t : Text) → "stop \"${t}\""
              , norep = λ(t : Text) → "norep \"${t}\""
              , show = λ(t : Text) → "show \"${t}\""
              }
              x
      
      in  "MSGTYPE=${value}"
