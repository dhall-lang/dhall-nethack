{-  The Dhall configuration language does not provide built-in support for
    default function arguments.  However, you can provide default records that
    users can overide using the `//`/`⫽` operator, which is what this module
    does.

    For more details, see:

    https://github.com/dhall-lang/dhall-lang/wiki/Frequently-Asked-Questions-%28FAQ%29#can-i-create-a-function-with-default-values-for-function-arguments

    This module consolidates all of the defaults into a record so that users can
    import all defaults in a single import and access the desired default as a
    field of that record.  For example:


    ```
    let defaults = ./defaults.dhall

    in    defaults.Config
        ⫽ { disclose =
              Some
              (   defaults.Disclose
                ⫽ { inventory = Some { default = True, prompt = False } }
              )
          }
    ```

    Note that only a few types have defaults listed here.  This is because
    most of the NetHack options are modeled as `Optional` values, where a `None`
    means to omit that option from the generated NetHack configuration file and
    to use whatever NetHack defaults to.  For those options `None` is already a
    suitable default value.

    We permit omitted options for several reasons:

    * We want to preserve the user's intention to use the default value
    * The NetHack documentation doesn't specify default values for all options
    * The defaults could change between NetHack versions
    * Enumerating every option breaks more often between NetHack versions/builds

    The following types that we do provide default values for are large records
    where we often want to easily specify a few fields rather than specifying
    all of the fields or omitting the record entirely.
-}

{ Attributes =
    ./defaults/Attributes.dhall
, Config =
    ./defaults/Config.dhall
, Disclose =
    ./defaults/Disclose.dhall
, HiliteStatus =
    ./defaults/HiliteStatus.dhall
, ParanoidConfirmation =
    ./defaults/ParanoidConfirmation.dhall
, Scores =
    ./defaults/Scores.dhall
}
