import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf868 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,3,0]

private theorem bf868p0 : BadRow (bf868 0) := by empty43

private theorem bf868p1 : BadRow (bf868 1) := by empty43

private theorem bf868p2 : BadRow (bf868 2) := by empty43

private theorem bf868p3 : BadRow (bf868 3) := by empty43

private theorem bf868p4 : BadRow (bf868 4) := by empty43

private theorem bf868p5 : BadRow (bf868 5) := by empty43

private theorem bf868p6 : BadRow (bf868 6) := by empty43

private theorem bf868p7 : BadRow (bf868 7) := by empty43

private theorem bf868p8 : BadRow (bf868 8) := by empty43

private theorem bf868p9 : BadRow (bf868 9) := by empty43

private theorem bf868p10 : BadRow (bf868 10) := by empty43

private theorem bf868p11 : BadRow (bf868 11) := by empty43

theorem f868 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,3,0] (.cons (bf868p0) (.cons (bf868p1) (.cons (bf868p2) (.cons (bf868p3) (.cons (bf868p4) (.cons (bf868p5) (.cons (bf868p6) (.cons (bf868p7) (.cons (bf868p8) (.cons (bf868p9) (.cons (bf868p10) (.cons (bf868p11) .nil))))))))))))

private abbrev bf869 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,0,2]

private theorem f869s0 : BadRow (bf869 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f869s1 : BadRow (bf869 1) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f869s2 : BadRow (bf869 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f869s3 : BadRow (bf869 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f869s4 : BadRow (bf869 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f869s5 : BadRow (bf869 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f869s6 : BadRow (bf869 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f869s7 : BadRow (bf869 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f869 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,0,2] (.cons (f869s0) (.cons (f869s1) (.cons (f869s2) (.cons (f869s3) (.cons (f869s4) (.cons (f869s5) (.cons (f869s6) (.cons (f869s7) .nil))))))))

theorem f870 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bf871 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,2,0]

private theorem f871s0 : BadRow (bf871 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f871s1 : BadRow (bf871 1) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f871s2 : BadRow (bf871 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f871s3 : BadRow (bf871 3) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f871s4 : BadRow (bf871 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f871s5 : BadRow (bf871 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f871s6 : BadRow (bf871 6) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f871s7 : BadRow (bf871 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f871 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,1,2,0] (.cons (f871s0) (.cons (f871s1) (.cons (f871s2) (.cons (f871s3) (.cons (f871s4) (.cons (f871s5) (.cons (f871s6) (.cons (f871s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
