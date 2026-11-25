import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf943 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [1,0,2,2]

private theorem f943s0 : BadRow (bf943 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f943s1 : BadRow (bf943 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f943s2 : BadRow (bf943 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f943s3 : BadRow (bf943 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f943s4 : BadRow (bf943 4) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f943s5 : BadRow (bf943 5) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f943s6 : BadRow (bf943 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f943s7 : BadRow (bf943 7) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f943 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [1,0,2,2] (.cons (f943s0) (.cons (f943s1) (.cons (f943s2) (.cons (f943s3) (.cons (f943s4) (.cons (f943s5) (.cons (f943s6) (.cons (f943s7) .nil))))))))

private abbrev bf944 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [1,0,3,1]

private theorem f944s0 : BadRow (bf944 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f944s1 : BadRow (bf944 1) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f944s2 : BadRow (bf944 2) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f944s3 : BadRow (bf944 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f944s4 : BadRow (bf944 4) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f944s5 : BadRow (bf944 5) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f944s6 : BadRow (bf944 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f944s7 : BadRow (bf944 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem f944 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,0,3,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [1,0,3,1] (.cons (f944s0) (.cons (f944s1) (.cons (f944s2) (.cons (f944s3) (.cons (f944s4) (.cons (f944s5) (.cons (f944s6) (.cons (f944s7) .nil))))))))

theorem f945 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f946 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f947 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
