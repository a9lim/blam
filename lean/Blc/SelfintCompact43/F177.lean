import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2124 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2125 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2126 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2127 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2128 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2129 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2130 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2131 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2132 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2133 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2134 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2135 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
