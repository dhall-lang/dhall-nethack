{- This is a type-level function used within `./HiliteStatus.dhall` to reduce
   repetition.
-}

let Color = ./Color.dhall

in let Attributes = ./Attributes.dhall

in    λ(trigger : Type)
    → { trigger :
          Optional trigger
      , color :
          Color
      , attributes :
          Optional Attributes
      }
