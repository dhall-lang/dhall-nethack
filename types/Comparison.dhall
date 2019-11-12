{-  This type could also have been encoded as:

    ```
    { comparison :
        < EqualTo | LessThanOrEqualTo | GreaterThanOrEqualTo >
    , amount :
        Natural
    }
    ```

    I chose to embed the `Natural` in each union alternative since it requires
    less typing and reads more naturally.  For example, compare this:

    ```
    { comparison = Operator.LessThanOrEqualTo, value = 5 }
    ```

    ... to this:

    ```
    Comparison.LessThanOrEqualTo 5
    ```
-}

< EqualTo : Natural
| LessThanOrEqualTo : Natural
| GreaterThanOrEqualTo : Natural
>
