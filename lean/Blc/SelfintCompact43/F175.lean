import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2100 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2101 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2102 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2103 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2104 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2105 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2106 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2107 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2108 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2109 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2110 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2111 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
