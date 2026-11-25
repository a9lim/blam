import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf933 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,2,2,1]

private theorem f933s0 : BadRow (bf933 0) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f933s1 : BadRow (bf933 1) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f933s2 : BadRow (bf933 2) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f933s3 : BadRow (bf933 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f933s4 : BadRow (bf933 4) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f933s5 : BadRow (bf933 5) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f933s6 : BadRow (bf933 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f933s7 : BadRow (bf933 7) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem f933 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,2,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,2,2,1] (.cons (f933s0) (.cons (f933s1) (.cons (f933s2) (.cons (f933s3) (.cons (f933s4) (.cons (f933s5) (.cons (f933s6) (.cons (f933s7) .nil))))))))

theorem f934 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf935 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,3,0,2]

private theorem f935s0 : BadRow (bf935 0) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f935s1 : BadRow (bf935 1) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f935s2 : BadRow (bf935 2) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f935s3 : BadRow (bf935 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f935s4 : BadRow (bf935 4) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f935s5 : BadRow (bf935 5) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f935s6 : BadRow (bf935 6) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f935s7 : BadRow (bf935 7) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem f935 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,3,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,3,0,2] (.cons (f935s0) (.cons (f935s1) (.cons (f935s2) (.cons (f935s3) (.cons (f935s4) (.cons (f935s5) (.cons (f935s6) (.cons (f935s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
