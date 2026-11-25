import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f984 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f985 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f986 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f987 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f988 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f989 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f990 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f991 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f992 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f993 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f994 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f995 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
