import Blc.SelfintCompact44.ShellSplit
import Lean

namespace Blc.SelfintSingleObject
open Lean SourceRefutations

/-- Check each partition in its own declaration. The cover reconstructs the
unsplit row, and any exceptional sources remain explicit hypotheses. -/
syntax "sliceRow " ident " on " term:max  " byParts "  term:max " byCover " term:max
  " slices " num " withHints " term:max " tags " term:max " except " term:max : command

macro_rules
  | `(sliceRow $id:ident on $row byParts $parts byCover $cover slices $n:num withHints $bank tags $ids except $hard) => do
    let mut commands := #[]
    let alias := mkIdentFrom id (id.getId.appendAfter "Parts")
    commands := commands.push (← `(private abbrev $alias : Nat → List Term := $parts))
    let mut pieces ← `(.nil)
    for j in (List.range n.getNat).reverse do
      let num := Syntax.mkNumLit (toString j)
      let piece := mkIdentFrom id (id.getId.appendAfter ("Part" ++ toString j))
      commands := commands.push (← `(private theorem $piece (h : BadRow $hard) : BadRow ($alias $num) :=
        Split43.tryHints $bank $ids (hard := $hard) (by decide +kernel) h))
      pieces ← `(.cons ($piece h) $pieces)
    let joined := mkIdentFrom id (id.getId.appendAfter "Joined")
    commands := commands.push (← `(private theorem $joined (h : BadRow $hard) : BadRow $row := $cover $pieces))
    match hard with
    | `([]) => commands := commands.push (← `(theorem $id : BadRow $row := $joined .nil))
    | _ => commands := commands.push (← `(theorem $id (h : BadRow $hard) : BadRow $row := $joined h))
    return mkNullNode (commands.map (·.raw))
end Blc.SelfintSingleObject
