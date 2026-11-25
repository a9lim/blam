import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3732 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3733 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3734 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3735 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3736 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3737 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3738 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3739 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3740 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3741 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3742 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3743 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
