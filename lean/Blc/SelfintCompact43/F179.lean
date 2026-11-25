import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2148 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2149 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2150 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2151 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2152 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2153 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2154 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2155 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2156 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2157 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2158 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2159 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
