import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem f936 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f937 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f938 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f939 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf940 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,5⟩ [0,0] [0,5,0,0]

private theorem bf940p0 : BadRow (bf940 0) := by empty43

private theorem bf940p1 : BadRow (bf940 1) := by empty43

private theorem bf940p2 : BadRow (bf940 2) := by empty43

private theorem bf940p3 : BadRow (bf940 3) := by empty43

private theorem bf940p4 : BadRow (bf940 4) := by empty43

private theorem bf940p5 : BadRow (bf940 5) := by empty43

private theorem bf940p6 : BadRow (bf940 6) := by empty43

private theorem bf940p7 : BadRow (bf940 7) := by empty43

private theorem bf940p8 : BadRow (bf940 8) := by empty43

private theorem bf940p9 : BadRow (bf940 9) := by empty43

private theorem bf940p10 : BadRow (bf940 10) := by empty43

private theorem bf940p11 : BadRow (bf940 11) := by empty43

theorem f940 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,5,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,5,0,0] (.cons (bf940p0) (.cons (bf940p1) (.cons (bf940p2) (.cons (bf940p3) (.cons (bf940p4) (.cons (bf940p5) (.cons (bf940p6) (.cons (bf940p7) (.cons (bf940p8) (.cons (bf940p9) (.cons (bf940p10) (.cons (bf940p11) .nil))))))))))))

theorem f941 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf942 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [1,0,1,3]

private theorem f942s0 : BadRow (bf942 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f942s1 : BadRow (bf942 1) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f942s2 : BadRow (bf942 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f942s3 : BadRow (bf942 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f942s4 : BadRow (bf942 4) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f942s5 : BadRow (bf942 5) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f942s6 : BadRow (bf942 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f942s7 : BadRow (bf942 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem f942 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,0,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [1,0,1,3] (.cons (f942s0) (.cons (f942s1) (.cons (f942s2) (.cons (f942s3) (.cons (f942s4) (.cons (f942s5) (.cons (f942s6) (.cons (f942s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
