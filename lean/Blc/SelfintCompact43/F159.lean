import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1908 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1909 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1910 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1911 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1912 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1913 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1914 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1915 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1916 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1917 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1918 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1919 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
