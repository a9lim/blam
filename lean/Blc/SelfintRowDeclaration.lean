import Blc.SelfintRowReplay

namespace Blc.SelfintSingleObject.RowReplay
open SourceRefutations OperandGrammar

/-- Declare a row by checking its exact remainder with the kernel. The optional
list is an explicit hypothesis which the enclosing cover must discharge. -/
syntax "certRow " ident " on " term:max " using " term:max " tags " term:max
  (" except " term:max)? : command

macro_rules
  | `(certRow $id:ident on $ts using $bank tags $ids except $hard) =>
    `(theorem $id (h : BadRow $hard) : BadRow $ts :=
        row_of_forall (discharge $bank $ids (hard := $hard) (by decide +kernel) h))
  | `(certRow $id:ident on $ts using $bank tags $ids) =>
    `(theorem $id : BadRow $ts :=
        row_of_forall (discharge $bank $ids (hard := []) (by decide +kernel) .nil))

end Blc.SelfintSingleObject.RowReplay
