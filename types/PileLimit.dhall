{-  We don't encourage the use of 0 as a sentinel value to specify unlimited.
    Instead, we provide better-named `unlimited` alternative so that the user's
    intent is more clear.

    Note that the user can still specify a `limit` of `0` which NetHack will
    still treat as unlimited.  It's not worth forbidding that (at least, not
    within Dhall's simple type system).
-}
< unlimited : {} | limit : Natural >
