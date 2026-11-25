import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1920 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1921 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1922 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1923 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1924 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1925 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1926 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1927 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1928 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1929 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1930 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1931 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
