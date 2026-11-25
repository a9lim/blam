import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1896 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1897 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1898 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1899 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1900 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1901 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1902 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1903 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1904 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1905 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1906 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1907 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [1,0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
