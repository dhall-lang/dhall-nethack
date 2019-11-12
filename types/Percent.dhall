let Comparison = ./Comparison.dhall

in  < always
    | up
    | down
    | changed
    | percentage : Comparison
    | number : Comparison
    >
