import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1956 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1957 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1958 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1959 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1960 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1961 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1962 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1963 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1964 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1965 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1966 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1967 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
