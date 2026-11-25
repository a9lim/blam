import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf928 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,1,2,2]

private theorem f928s0 : BadRow (bf928 0) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f928s1 : BadRow (bf928 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f928s2 : BadRow (bf928 2) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f928s3 : BadRow (bf928 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f928s4 : BadRow (bf928 4) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f928s5 : BadRow (bf928 5) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f928s6 : BadRow (bf928 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f928s7 : BadRow (bf928 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem f928 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,1,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,1,2,2] (.cons (f928s0) (.cons (f928s1) (.cons (f928s2) (.cons (f928s3) (.cons (f928s4) (.cons (f928s5) (.cons (f928s6) (.cons (f928s7) .nil))))))))

theorem f929 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f930 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf931 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,2,0,3]

private theorem f931s0 : BadRow (bf931 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f931s1 : BadRow (bf931 1) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f931s2 : BadRow (bf931 2) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f931s3 : BadRow (bf931 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f931s4 : BadRow (bf931 4) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f931s5 : BadRow (bf931 5) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f931s6 : BadRow (bf931 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f931s7 : BadRow (bf931 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem f931 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,2,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,2,0,3] (.cons (f931s0) (.cons (f931s1) (.cons (f931s2) (.cons (f931s3) (.cons (f931s4) (.cons (f931s5) (.cons (f931s6) (.cons (f931s7) .nil))))))))

private abbrev bf932 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,2,1,2]

private theorem f932s0 : BadRow (bf932 0) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f932s1 : BadRow (bf932 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f932s2 : BadRow (bf932 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f932s3 : BadRow (bf932 3) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f932s4 : BadRow (bf932 4) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f932s5 : BadRow (bf932 5) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f932s6 : BadRow (bf932 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f932s7 : BadRow (bf932 7) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f932 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,2,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,2,1,2] (.cons (f932s0) (.cons (f932s1) (.cons (f932s2) (.cons (f932s3) (.cons (f932s4) (.cons (f932s5) (.cons (f932s6) (.cons (f932s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
