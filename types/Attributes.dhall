{-  We don't use a `List` to represent the attributes since that would permit
    setting the same attribute multiple times.  Instead we use a record where
    each attribute can be specified at most one time.
-}

{ bold : Optional Bool
, inverse : Optional Bool
, underline : Optional Bool
, blink : Optional Bool
, dim : Optional Bool
}
