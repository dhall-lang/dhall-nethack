let Prelude = ../Prelude.dhall

let types = ../types.dhall

in    λ(x : types.HiliteStatus.Type)
    → let renderHilites =
              λ(a : Type)
            → λ(renderTrigger : a → Text)
            → λ(field : Text)
            → Prelude.Text.concatMap
                (types.Hilite a)
                (   λ(h : types.Hilite a)
                  → ./Options.dhall
                      "hilite_status:${field}${./Hilite.dhall
                                                 a
                                                 renderTrigger
                                                 h}"
                )
      
      let renderTextualHilites = renderHilites types.Textual ./Textual.dhall
      
      let renderNumericHilites = renderHilites types.Numeric ./Numeric.dhall
      
      let renderPercentHilites = renderHilites types.Percent ./Percent.dhall
      
      let renderConditionHilites =
            renderHilites types.Condition ./Condition.dhall
      
      in      renderTextualHilites "title" x.title
          ++  renderNumericHilites "strength" x.strength
          ++  renderNumericHilites "dexterity" x.dexterity
          ++  renderNumericHilites "constitution" x.constitution
          ++  renderNumericHilites "intelligence" x.intelligence
          ++  renderNumericHilites "wisdom" x.wisdom
          ++  renderNumericHilites "charisma" x.charisma
          ++  renderNumericHilites "characteristics" x.characteristics
          ++  renderTextualHilites "alignment" x.alignment
          ++  renderNumericHilites "score" x.score
          ++  renderTextualHilites "carrying-capacity" x.carrying-capacity
          ++  renderNumericHilites "gold" x.gold
          ++  renderPercentHilites "power" x.power
          ++  renderNumericHilites "power-max" x.power-max
          ++  renderNumericHilites "experience-level" x.experience-level
          ++  renderNumericHilites "armor-class" x.armor-class
          ++  renderNumericHilites "HD" x.HD
          ++  renderNumericHilites "time" x.time
          ++  renderTextualHilites "hunger" x.hunger
          ++  renderPercentHilites "hitpoints" x.hitpoints
          ++  renderNumericHilites "hitpoints-max" x.hitpoints-max
          ++  renderNumericHilites "dungeon-level" x.dungeon-level
          ++  renderNumericHilites "experience" x.experience
          ++  renderConditionHilites "condition" x.condition
