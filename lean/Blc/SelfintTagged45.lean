import Blc.SelfintSplit45
import Lean
namespace Blc.SelfintSingleObject.Fast45
open Lean OperandGrammar SourceRefutations RowReplay

/-- The fixed exceptional list may serve every slice, irrespective of ordering. -/
theorem tagged {ts : List Term} (bank : Nat → Hint) (ids : List Nat) {hard : List Term}
    (ok : (remainder bank ids (prefilter ts)).all hard.contains = true) (h : BadRow hard) : BadRow ts := by
  apply row_of_forall
  intro e he hm
  have mem := remainder_complete bank ids (prefilter ts) hm (List.mem_filter.mpr ⟨he,FactorFilter.static_required hm⟩)
  exact h.get (List.contains_iff_mem.mp (List.all_eq_true.mp ok _ mem)) hm

/-- Emit independent kernel reductions for the ordered pieces of a grammar row. -/
syntax "tagSlices " ident " on " term:max " byParts " term:max " byCover " term:max
  " withHints " term:max " eachTags[" term,* "]" " except " term:max : command
macro_rules
  | `(tagSlices $id:ident on $row byParts $parts byCover $cover withHints $bank eachTags[$ts,*] except $hard) => do
    let mut cmds := #[]
    let alias := mkIdentFrom id (id.getId.appendAfter "Parts")
    cmds := cmds.push (← `(private abbrev $alias : Nat → List Blc.Term := $parts))
    let mut out ← `(.nil)
    for (t,j) in ts.getElems.toList.zipIdx.reverse do
      let n := Syntax.mkNumLit (toString j)
      let nm := mkIdentFrom id (id.getId.appendAfter ("Part" ++ toString j))
      cmds := cmds.push (← `(private theorem $nm (h : BadRow $hard) : BadRow ($alias $n) :=
        tagged $bank $t (hard := $hard) (by decide +kernel) h))
      out ← `(.cons ($nm h) $out)
    let joined := mkIdentFrom id (id.getId.appendAfter "Checked")
    cmds := cmds.push (← `(private theorem $joined (h : BadRow $hard) : BadRow $row := $cover $out))
    match hard with
    | `([]) => cmds := cmds.push (← `(theorem $id : BadRow $row := $joined .nil))
    | _ => cmds := cmds.push (← `(theorem $id (h : BadRow $hard) : BadRow $row := $joined h))
    return mkNullNode (cmds.map (·.raw))
end Blc.SelfintSingleObject.Fast45
