import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3852 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3853 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3854 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3855 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3856 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3857 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3858 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3859 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3860 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3861 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3862 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3863 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
