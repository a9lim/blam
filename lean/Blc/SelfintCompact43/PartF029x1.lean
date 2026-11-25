import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf358 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,1,2]

private theorem f358s0 : BadRow (bf358 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f358s1 : BadRow (bf358 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f358s2 : BadRow (bf358 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f358s3 : BadRow (bf358 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f358s4 : BadRow (bf358 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f358s5 : BadRow (bf358 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f358s6 : BadRow (bf358 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f358s7 : BadRow (bf358 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f358 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,1,2] (.cons (f358s0) (.cons (f358s1) (.cons (f358s2) (.cons (f358s3) (.cons (f358s4) (.cons (f358s5) (.cons (f358s6) (.cons (f358s7) .nil))))))))

private abbrev bf359 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,2,1]

private theorem f359s0 : BadRow (bf359 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f359s1 : BadRow (bf359 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f359s2 : BadRow (bf359 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f359s3 : BadRow (bf359 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f359s4 : BadRow (bf359 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f359s5 : BadRow (bf359 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f359s6 : BadRow (bf359 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f359s7 : BadRow (bf359 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f359 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,2,1] (.cons (f359s0) (.cons (f359s1) (.cons (f359s2) (.cons (f359s3) (.cons (f359s4) (.cons (f359s5) (.cons (f359s6) (.cons (f359s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
