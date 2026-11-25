import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f72 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,2,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,48,48,36,36,14,36,48,48,36,14,36,14,14,14,14,14,1,1,1,1,1,1,36,14,36,36,1,1,36] (hard := []) (by decide +kernel) .nil)

theorem f73 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,36,36,14,36,36,14,36,14,14,14,1,1,1,36,36,14,36,36] (hard := []) (by decide +kernel) .nil)

theorem f74 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,2,2,0,0]) :=
  row_of_forall (discharge bank [30,1,1,38,1,1,1,1,1,30,1,1,1,1,30,1,1,38,1,1,1,1,1,14,14,1,1,1,30,1,1,1,1,30,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f75 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,1,1,1,1,1,1,1,48,48,36,48,14,36,36,36,36,14,36] (hard := []) (by decide +kernel) .nil)

theorem f76 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,14,14,1,1,1,1,1,36,36,36,48,14,36,36,36,36,14,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f77 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,14,14,1,1,1,1,1,48,48,48,48,48,48,48,14,14,36,36,36,36,36,36,36,14,36,14,36] (hard := []) (by decide +kernel) .nil)

theorem f78 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f79 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,14,14,1,1,1,1,1,48,48,48,48,14,14,36,36,36,36,14,36,1,1,1,1,1,14,36] (hard := []) (by decide +kernel) .nil)

theorem f80 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,14,14,1,1,1,1,1,48,36,36,36,36,48,48,14,14,36,36,36,36,36,36,36,14,36,14,36,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f81 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,1,1,1,1,1,1,1,48,36,36,48,14,36,36,36,36,36,14,36,1,1,1,1,1,1,1,36,36,1,1] (hard := []) (by decide +kernel) .nil)

theorem f82 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,14,14,14,1,1,1,1,1,48,48,48,48,48,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f83 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
