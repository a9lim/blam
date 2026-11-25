import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f576 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,1,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f577 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f578 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,1,4,0]) :=
  row_of_forall (discharge bank [25,1,6] (hard := []) (by decide +kernel) .nil)

theorem f579 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f580 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,2,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f581 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,2,2,1]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f582 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f583 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f584 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f585 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f586 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,4,0,1]) :=
  row_of_forall (discharge bank [7,7,36,17,36] (hard := []) (by decide +kernel) .nil)

theorem f587 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,4,1,0]) :=
  row_of_forall (discharge bank [7,7,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
