let types = ./../types.dhall

in    λ(a : Type)
    → λ(renderTrigger : a → Text)
    → λ(hilite : types.Hilite a)
    → let trigger =
            Optional/fold
            a
            hilite.trigger
            Text
            (λ(trigger : a) → "/${renderTrigger trigger}")
            ""
      
      in let attributes =
            Optional/fold
            types.Attributes
            hilite.attributes
            Text
            (λ(a : types.Attributes) → "&${./Attributes.dhall a}")
            ""
      
      in let color = "/${./Color.dhall hilite.color}"
      
      in  "${trigger}${color}${attributes}"
