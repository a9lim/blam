import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2160 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2161 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2162 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2163 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2164 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2165 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2166 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2167 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2168 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2169 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2170 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2171 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
