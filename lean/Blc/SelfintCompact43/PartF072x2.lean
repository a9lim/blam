import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf872 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,2,0,1]

private theorem f872s0 : BadRow (bf872 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f872s1 : BadRow (bf872 1) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f872s2 : BadRow (bf872 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f872s3 : BadRow (bf872 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f872s4 : BadRow (bf872 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f872s5 : BadRow (bf872 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f872s6 : BadRow (bf872 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f872s7 : BadRow (bf872 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f872 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,2,0,1] (.cons (f872s0) (.cons (f872s1) (.cons (f872s2) (.cons (f872s3) (.cons (f872s4) (.cons (f872s5) (.cons (f872s6) (.cons (f872s7) .nil))))))))

private abbrev bf873 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,2,1,0]

private theorem f873s0 : BadRow (bf873 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f873s1 : BadRow (bf873 1) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f873s2 : BadRow (bf873 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f873s3 : BadRow (bf873 3) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f873s4 : BadRow (bf873 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f873s5 : BadRow (bf873 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f873s6 : BadRow (bf873 6) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f873s7 : BadRow (bf873 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f873 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,2,1,0] (.cons (f873s0) (.cons (f873s1) (.cons (f873s2) (.cons (f873s3) (.cons (f873s4) (.cons (f873s5) (.cons (f873s6) (.cons (f873s7) .nil))))))))

private abbrev bf874 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,3,0,0]

private theorem bf874p0 : BadRow (bf874 0) := by empty43

private theorem bf874p1 : BadRow (bf874 1) := by empty43

private theorem bf874p2 : BadRow (bf874 2) := by empty43

private theorem bf874p3 : BadRow (bf874 3) := by empty43

private theorem bf874p4 : BadRow (bf874 4) := by empty43

private theorem bf874p5 : BadRow (bf874 5) := by empty43

private theorem bf874p6 : BadRow (bf874 6) := by empty43

private theorem bf874p7 : BadRow (bf874 7) := by empty43

private theorem bf874p8 : BadRow (bf874 8) := by empty43

private theorem bf874p9 : BadRow (bf874 9) := by empty43

private theorem bf874p10 : BadRow (bf874 10) := by empty43

private theorem bf874p11 : BadRow (bf874 11) := by empty43

theorem f874 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,3,0,0] (.cons (bf874p0) (.cons (bf874p1) (.cons (bf874p2) (.cons (bf874p3) (.cons (bf874p4) (.cons (bf874p5) (.cons (bf874p6) (.cons (bf874p7) (.cons (bf874p8) (.cons (bf874p9) (.cons (bf874p10) (.cons (bf874p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
