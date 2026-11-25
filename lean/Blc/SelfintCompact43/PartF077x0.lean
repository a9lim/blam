import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem f924 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf925 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,5⟩ [0,0] [0,0,5,0]

private theorem bf925p0 : BadRow (bf925 0) := by empty43

private theorem bf925p1 : BadRow (bf925 1) := by empty43

private theorem bf925p2 : BadRow (bf925 2) := by empty43

private theorem bf925p3 : BadRow (bf925 3) := by empty43

private theorem bf925p4 : BadRow (bf925 4) := by empty43

private theorem bf925p5 : BadRow (bf925 5) := by empty43

private theorem bf925p6 : BadRow (bf925 6) := by empty43

private theorem bf925p7 : BadRow (bf925 7) := by empty43

private theorem bf925p8 : BadRow (bf925 8) := by empty43

private theorem bf925p9 : BadRow (bf925 9) := by empty43

private theorem bf925p10 : BadRow (bf925 10) := by empty43

private theorem bf925p11 : BadRow (bf925 11) := by empty43

theorem f925 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,0,5,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,0,5,0] (.cons (bf925p0) (.cons (bf925p1) (.cons (bf925p2) (.cons (bf925p3) (.cons (bf925p4) (.cons (bf925p5) (.cons (bf925p6) (.cons (bf925p7) (.cons (bf925p8) (.cons (bf925p9) (.cons (bf925p10) (.cons (bf925p11) .nil))))))))))))

private abbrev bf926 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,1,0,4]

private theorem f926s0 : BadRow (bf926 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f926s1 : BadRow (bf926 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f926s2 : BadRow (bf926 2) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f926s3 : BadRow (bf926 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f926s4 : BadRow (bf926 4) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f926s5 : BadRow (bf926 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f926s6 : BadRow (bf926 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f926s7 : BadRow (bf926 7) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f926 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,1,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,1,0,4] (.cons (f926s0) (.cons (f926s1) (.cons (f926s2) (.cons (f926s3) (.cons (f926s4) (.cons (f926s5) (.cons (f926s6) (.cons (f926s7) .nil))))))))

private abbrev bf927 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,1,1,3]

private theorem f927s0 : BadRow (bf927 0) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f927s1 : BadRow (bf927 1) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f927s2 : BadRow (bf927 2) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f927s3 : BadRow (bf927 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f927s4 : BadRow (bf927 4) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f927s5 : BadRow (bf927 5) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f927s6 : BadRow (bf927 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f927s7 : BadRow (bf927 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem f927 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,1,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,1,1,3] (.cons (f927s0) (.cons (f927s1) (.cons (f927s2) (.cons (f927s3) (.cons (f927s4) (.cons (f927s5) (.cons (f927s6) (.cons (f927s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
