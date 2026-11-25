import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3000 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3001 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3002 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3003 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3004 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3005 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3006 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3007 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3008 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3009 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3010 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3011 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
