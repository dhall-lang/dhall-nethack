{- We don't use a number to encode the `number_pad` option since not all
   numbers are valid selections for this option.  Instead we use a union to
   explicitly enumerate the valid settings with slightly-friendlier names.
-}
< Letters
| Numbers_5_is_G
| Numbers_5_is_g
| PhoneKeys
| PhoneKeys_MSDOS
| Letters_z_is_NW
>
