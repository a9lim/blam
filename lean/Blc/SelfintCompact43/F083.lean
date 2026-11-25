import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f996 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [0,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f997 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [0,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f998 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [0,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f999 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [0,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1000 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1001 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1002 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1003 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1004 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1005 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1006 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1007 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
