import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1932 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1933 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1934 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1935 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1936 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1937 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1938 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1939 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1940 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1941 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1942 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1943 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
