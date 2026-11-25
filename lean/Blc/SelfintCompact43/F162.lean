import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1944 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1945 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1946 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1947 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1948 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1949 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1950 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1951 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1952 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1953 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1954 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1955 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
