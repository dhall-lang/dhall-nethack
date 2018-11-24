-- This file extends `./validated.dhall` with all options that are documented in
-- https://nethackwiki.com/wiki/Options but not yet successfully validated
-- against a NetHack installation

  ./validated.dhall
⫽ { rlecomp =
      Some False
  , SOUND =
      [ { regex = "This door is locked", filename = "lock.wav", volume = 100 } ]
  , SOUNDDIR =
      Some "C:\\foo"
  , zerocomp =
      Some False
  }
