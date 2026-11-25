import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f948 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f949 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f950 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f951 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f952 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f953 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f954 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f955 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [1,4,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f956 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf957 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [2,0,1,2]

private theorem f957s0 : BadRow (bf957 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f957s1 : BadRow (bf957 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f957s2 : BadRow (bf957 2) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f957s3 : BadRow (bf957 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f957s4 : BadRow (bf957 4) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f957s5 : BadRow (bf957 5) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f957s6 : BadRow (bf957 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f957s7 : BadRow (bf957 7) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f957 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [2,0,1,2] (.cons (f957s0) (.cons (f957s1) (.cons (f957s2) (.cons (f957s3) (.cons (f957s4) (.cons (f957s5) (.cons (f957s6) (.cons (f957s7) .nil))))))))

theorem f958 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f959 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
