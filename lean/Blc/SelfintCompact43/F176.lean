import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2112 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2113 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2114 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2115 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2116 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2117 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2118 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2119 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2120 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2121 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2122 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2123 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
