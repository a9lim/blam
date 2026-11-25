import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f84 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,14,14,1,1,1,1,1,48,48,48,48,48,14,14,36,36,36,36,36,1,1,1,1,1,14,14,36,36] (hard := []) (by decide +kernel) .nil)

theorem f85 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f86 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f87 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,1,1,1,48,48,48,14,36,36,36,1,1,1,14,36] (hard := []) (by decide +kernel) .nil)

theorem f88 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,2,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,14,14,1,1,1,1,1,48,36,36,36,36,36,36,36,36,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f89 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,2,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,1,1,1,1,1,1,1,48,48,36,48,36,48,36,36,36,36,36,36,1,1,1,1,1,1,48,36,36,36,1] (hard := []) (by decide +kernel) .nil)

theorem f90 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,2,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,48,48,48,48,36,36,36,1,1,1,48,36] (hard := []) (by decide +kernel) .nil)

theorem f91 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,0,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,25,25,25,1,25,25,1,1,30,14,14,14,14,14,14,14,1,1,14,14,1,1,1,1,1,1,1,30,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f92 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,0,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,36,48,36,36,36,36,36,48,36,36,36,36,48,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f93 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,0,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,25,25,25,1,1,1,25,25,1,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,25,25,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f94 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,0,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,48,48,36,36,48,36,48,48,36,48,36,48,36,48,48,36,14,36,14,36] (hard := []) (by decide +kernel) .nil)

theorem f95 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,0,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,48,48,36,36,48,36,48,48,36,48,36,48,36,14,12,36,12,36,14,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
