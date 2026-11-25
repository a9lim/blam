import Lean
open Lean

/-- A block of consecutive table entries, expanded into a balanced decision tree. -/
syntax "tableBlock% " term:max num "[" term,* "]" : term
macro_rules
  | `(tableBlock% $i $start:num [$xs,*]) => do
    let entries := xs.getElems
    let rec build (base len : Nat) : MacroM (TSyntax `term) := do
      if len ≤ 1 then return entries[base]!
      let left := len/2
      let bound := Syntax.mkNumLit (toString (start.getNat+base+left))
      let a ← build base left
      let b ← build (base+left) (len-left)
      return ← `(if $i < $bound then $a else $b)
    termination_by len
    decreasing_by all_goals omega
    build 0 entries.size
