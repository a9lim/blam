import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem f864 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [5,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

private abbrev bf865 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,0,3]

private theorem bf865p0 : BadRow (bf865 0) := by empty43

private theorem bf865p1 : BadRow (bf865 1) := by empty43

private theorem bf865p2 : BadRow (bf865 2) := by empty43

private theorem bf865p3 : BadRow (bf865 3) := by empty43

private theorem bf865p4 : BadRow (bf865 4) := by empty43

private theorem bf865p5 : BadRow (bf865 5) := by empty43

private theorem bf865p6 : BadRow (bf865 6) := by empty43

private theorem bf865p7 : BadRow (bf865 7) := by empty43

private theorem bf865p8 : BadRow (bf865 8) := by empty43

private theorem bf865p9 : BadRow (bf865 9) := by empty43

private theorem bf865p10 : BadRow (bf865 10) := by empty43

private theorem bf865p11 : BadRow (bf865 11) := by empty43

theorem f865 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,0,3] (.cons (bf865p0) (.cons (bf865p1) (.cons (bf865p2) (.cons (bf865p3) (.cons (bf865p4) (.cons (bf865p5) (.cons (bf865p6) (.cons (bf865p7) (.cons (bf865p8) (.cons (bf865p9) (.cons (bf865p10) (.cons (bf865p11) .nil))))))))))))

private abbrev bf866 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,1,2]

private theorem f866s0 : BadRow (bf866 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f866s1 : BadRow (bf866 1) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f866s2 : BadRow (bf866 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f866s3 : BadRow (bf866 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f866s4 : BadRow (bf866 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f866s5 : BadRow (bf866 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f866s6 : BadRow (bf866 6) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f866s7 : BadRow (bf866 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f866 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,1,2] (.cons (f866s0) (.cons (f866s1) (.cons (f866s2) (.cons (f866s3) (.cons (f866s4) (.cons (f866s5) (.cons (f866s6) (.cons (f866s7) .nil))))))))

private abbrev bf867 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,2,1]

private theorem f867s0 : BadRow (bf867 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f867s1 : BadRow (bf867 1) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f867s2 : BadRow (bf867 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f867s3 : BadRow (bf867 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f867s4 : BadRow (bf867 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f867s5 : BadRow (bf867 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f867s6 : BadRow (bf867 6) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f867s7 : BadRow (bf867 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f867 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,0,0,2,1] (.cons (f867s0) (.cons (f867s1) (.cons (f867s2) (.cons (f867s3) (.cons (f867s4) (.cons (f867s5) (.cons (f867s6) (.cons (f867s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
