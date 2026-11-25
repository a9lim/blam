import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f60 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,0,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,36,48,36,36,36,48,36,36,36,36,14,14,14,1,1,1,1,36,36,36,1,1] (hard := []) (by decide +kernel) .nil)

theorem f61 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,0,2,2,0]) :=
  row_of_forall (discharge bank [30,1,1,1,1,30,1,1,1,1,1,1,1,1,30,1,1,1,1,30,1,30,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f62 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f63 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f64 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f65 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f66 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f67 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f68 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f69 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,2,0,0,2]) :=
  row_of_forall (discharge bank [1,1,25,25,1,1,1,1,1,1,1,1,1,1,1,1,25,25,1,14,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f70 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,2,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,36,48,36,36,36,36,36,48,36,36,36,36,14,14,14,14,14,1,1,1,1,1,1,1,14,36,36,36,36,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f71 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,2,0,2,0]) :=
  row_of_forall (discharge bank [1,1,25,1,25,1,1,1,1,1,25,1,1,1,1,1,25,1,25,14,14,1,1,1,1,1,1,1,1,25,1,1,1,1,25,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
