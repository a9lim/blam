import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1968 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1969 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1970 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1971 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1972 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1973 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1974 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1975 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1976 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1977 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1978 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1979 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
