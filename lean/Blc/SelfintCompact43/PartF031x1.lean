import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf376 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,3,0,0,0]

private theorem bf376p0 : BadRow (bf376 0) := by empty43

private theorem bf376p1 : BadRow (bf376 1) := by empty43

private theorem bf376p2 : BadRow (bf376 2) := by empty43

private theorem bf376p3 : BadRow (bf376 3) := by empty43

private theorem bf376p4 : BadRow (bf376 4) := by empty43

private theorem bf376p5 : BadRow (bf376 5) := by empty43

private theorem bf376p6 : BadRow (bf376 6) := by empty43

private theorem bf376p7 : BadRow (bf376 7) := by empty43

private theorem bf376p8 : BadRow (bf376 8) := by empty43

private theorem bf376p9 : BadRow (bf376 9) := by empty43

private theorem bf376p10 : BadRow (bf376 10) := by empty43

private theorem bf376p11 : BadRow (bf376 11) := by empty43

theorem f376 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,3,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,3,0,0,0] (.cons (bf376p0) (.cons (bf376p1) (.cons (bf376p2) (.cons (bf376p3) (.cons (bf376p4) (.cons (bf376p5) (.cons (bf376p6) (.cons (bf376p7) (.cons (bf376p8) (.cons (bf376p9) (.cons (bf376p10) (.cons (bf376p11) .nil))))))))))))

private abbrev bf377 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,0,2]

private theorem f377s0 : BadRow (bf377 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f377s1 : BadRow (bf377 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f377s2 : BadRow (bf377 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f377s3 : BadRow (bf377 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f377s4 : BadRow (bf377 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f377s5 : BadRow (bf377 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f377s6 : BadRow (bf377 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f377s7 : BadRow (bf377 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f377 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,0,2] (.cons (f377s0) (.cons (f377s1) (.cons (f377s2) (.cons (f377s3) (.cons (f377s4) (.cons (f377s5) (.cons (f377s6) (.cons (f377s7) .nil))))))))

theorem f378 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bf379 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,2,0]

private theorem f379s0 : BadRow (bf379 0) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f379s1 : BadRow (bf379 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f379s2 : BadRow (bf379 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f379s3 : BadRow (bf379 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f379s4 : BadRow (bf379 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f379s5 : BadRow (bf379 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f379s6 : BadRow (bf379 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f379s7 : BadRow (bf379 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f379 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,0,2,0] (.cons (f379s0) (.cons (f379s1) (.cons (f379s2) (.cons (f379s3) (.cons (f379s4) (.cons (f379s5) (.cons (f379s6) (.cons (f379s7) .nil))))))))

theorem f380 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f381 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
