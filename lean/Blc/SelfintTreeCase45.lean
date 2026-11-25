import Blc.SelfintTreeCover45
import Blc.SelfintTagged45

namespace Blc.SelfintSingleObject.TreeWords
open Lean OperandGrammar SourceRefutations Fast45

/-- Check all root partitions for one fixed application tree. -/
syntax "treeCase " ident " on " term:max " withHints " term:max " eachTags[" term,* "]" " except " term:max : command
macro_rules
  | `(treeCase $id:ident on $row withHints $bank eachTags[$ts,*] except $hard) => do
    let mut cmds := #[]
    let mut joined ← `(.nil)
    for (ids,j) in ts.getElems.toList.zipIdx.reverse do
      let n := Syntax.mkNumLit (toString j)
      let nm := mkIdentFrom id (id.getId.appendAfter ("Part" ++ toString j))
      cmds := cmds.push (← `(private theorem $nm (h : BadRow $hard) : BadRow ($row $n) :=
        tagged $bank $ids (hard := $hard) (by decide +kernel) h))
      joined ← `(.cons ($nm h) $joined)
    let count := Syntax.mkNumLit (toString ts.getElems.size)
    cmds := cmds.push (← `(theorem $id (h : BadRow $hard) :
      Every (fun j => BadRow ($row j)) (List.range $count) := $joined))
    return mkNullNode (cmds.map (·.raw))
end Blc.SelfintSingleObject.TreeWords
