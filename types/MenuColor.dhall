let Color = ./Color.dhall

let Attributes = ./Attributes.dhall

in  { regex : Text, color : Optional Color, attributes : Attributes.Type }
