import Std

namespace QalcRule

/-! Successful physical rows have closed names.  Typed error landings retain
their diagnostic string without widening the successful alphabet. -/
inductive Row where
  | b1 | b2 | b3 | b4 | var | arg | bt1 | bt2 | call
  | callC | parkC1 | parkC2 | deliverC1 | deliverC2
  | fireC1 | fireC2 | fireH | fireT (bit : Bool)
  | bt1g | anshead | vb2 | vvar | recall | replay
  | root | rootval | headGate | headNeutralGate | head | enter
  | vlam | deliverCOutput | answerCPort1 | answerCPort2
  | ret | returnC | rootdone | halt | tick
  deriving DecidableEq, Repr

inductive Rule where
  | row (value : Row)
  | error (name : String)
  deriving DecidableEq, Repr

end QalcRule
