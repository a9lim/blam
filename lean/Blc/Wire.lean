/-
The BLC wire encoding, kernel-computable: `lam` = 00, `app` = 01,
`var n` (0-indexed here) = 1^(n+1) 0. This closes the generated-
certificate identity gap (Codex round eight): a kill theorem's name
carries a bit string by convention only, so each generated module also
proves `blcCode cert.T = [those bits]` — the kernel, not the emitter,
vouches that the certified term IS the term the bits encode. It also
directly audits the 1-indexed (Rust) → 0-indexed (Lean) boundary.

This module is deliberately tiny; prefix-freeness and Kraft live here
when that stage lands.
-/

import Blc.Term

namespace Blc
open Term

/-- BLC code of a term, `false` = '0', `true` = '1'. -/
def blcCode : Term → List Bool
  | .var n => List.replicate (n + 1) true ++ [false]
  | .lam b => false :: false :: blcCode b
  | .app f a => false :: true :: (blcCode f ++ blcCode a)

/-- The size identity used everywhere in the engine: |code| matches
`census`'s size measure. -/
theorem blcCode_length_var (n : Nat) :
    (blcCode (.var n)).length = n + 2 := by
  simp [blcCode]

end Blc
