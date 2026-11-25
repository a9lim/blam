import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3804 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3805 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3806 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3807 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3808 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3809 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3810 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3811 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3812 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3813 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3814 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3815 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
