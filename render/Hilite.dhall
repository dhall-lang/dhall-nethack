let types = ../types.dhall
let Prelude = ../Prelude.dhall

in    λ(a : Type)
    → λ(renderTrigger : a → Text)
    → λ(hilite : types.Hilite a)
    → let trigger =
            Prelude.Optional.fold
              a
              hilite.trigger
              Text
              (λ(trigger : a) → "/${renderTrigger trigger}")
              ""

      let attributes =
            Prelude.Optional.fold
              types.Attributes.Type
              hilite.attributes
              Text
              (λ(a : types.Attributes.Type) → "&${./Attributes.dhall a}")
              ""

      let color = "/${./Color.dhall hilite.color}"

      in  "${trigger}${color}${attributes}"
