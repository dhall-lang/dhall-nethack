let types = ../types.dhall
let Prelude = ../Prelude.dhall

in    λ(x : types.MenuColor)
    → let attributes = ./Attributes.dhall x.attributes

      let suffix =
            Prelude.Optional.fold
              types.Color
              x.color
              Text
              (λ(c : types.Color) → "${./Color.dhall c}&${attributes}")
              attributes

      in  "MENUCOLOR=\"${x.regex}\"=${suffix}"
