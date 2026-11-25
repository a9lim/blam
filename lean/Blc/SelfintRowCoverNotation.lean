import Blc.SelfintSourceRefutations

/-- A list of individual membership proofs in the order of the verified grammar. -/
syntax "rowProofs%[" term,* "]" : term
macro_rules
  | `(rowProofs%[$xs,*]) => do
    let mut proof ← `(.nil)
    for x in xs.getElems.reverse do
      proof ← `(.cons $x $proof)
    return proof
