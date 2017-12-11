-- From https://wiki.haskell.org/Tutorials/Programming_Haskell/Introduction
-- Unlike procedural languages, variables are "names for expressions"
-- They are not mutable boxes
answer      = 42 -- This means that "answer" is always 43
another     = answer + 1
more        = another + answer
main        = print more

{-  you never need to worry about initialising a Haskell variable, nor do you
need to worry about the current value in a variable: it always has the same
value, and can always be replaced with its definition. -}
print more
