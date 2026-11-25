import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf372 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,2,0,0]

private theorem f372s0 : BadRow (bf372 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f372s1 : BadRow (bf372 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f372s2 : BadRow (bf372 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f372s3 : BadRow (bf372 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f372s4 : BadRow (bf372 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f372s5 : BadRow (bf372 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f372s6 : BadRow (bf372 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f372s7 : BadRow (bf372 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f372 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,2,0,0] (.cons (f372s0) (.cons (f372s1) (.cons (f372s2) (.cons (f372s3) (.cons (f372s4) (.cons (f372s5) (.cons (f372s6) (.cons (f372s7) .nil))))))))

private abbrev bf373 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,0,0,1]

private theorem f373s0 : BadRow (bf373 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f373s1 : BadRow (bf373 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f373s2 : BadRow (bf373 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f373s3 : BadRow (bf373 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f373s4 : BadRow (bf373 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f373s5 : BadRow (bf373 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f373s6 : BadRow (bf373 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f373s7 : BadRow (bf373 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f373 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,0,0,1] (.cons (f373s0) (.cons (f373s1) (.cons (f373s2) (.cons (f373s3) (.cons (f373s4) (.cons (f373s5) (.cons (f373s6) (.cons (f373s7) .nil))))))))

private abbrev bf374 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,0,1,0]

private theorem f374s0 : BadRow (bf374 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f374s1 : BadRow (bf374 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f374s2 : BadRow (bf374 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f374s3 : BadRow (bf374 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f374s4 : BadRow (bf374 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f374s5 : BadRow (bf374 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f374s6 : BadRow (bf374 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f374s7 : BadRow (bf374 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f374 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,0,1,0] (.cons (f374s0) (.cons (f374s1) (.cons (f374s2) (.cons (f374s3) (.cons (f374s4) (.cons (f374s5) (.cons (f374s6) (.cons (f374s7) .nil))))))))

private abbrev bf375 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,1,0,0]

private theorem f375s0 : BadRow (bf375 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f375s1 : BadRow (bf375 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f375s2 : BadRow (bf375 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f375s3 : BadRow (bf375 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f375s4 : BadRow (bf375 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f375s5 : BadRow (bf375 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f375s6 : BadRow (bf375 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f375s7 : BadRow (bf375 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f375 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,2,1,0,0] (.cons (f375s0) (.cons (f375s1) (.cons (f375s2) (.cons (f375s3) (.cons (f375s4) (.cons (f375s5) (.cons (f375s6) (.cons (f375s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
