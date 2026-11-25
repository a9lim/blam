import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1884 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1885 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1886 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1887 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1888 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1889 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1890 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1891 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1892 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1893 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1894 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1895 : BadRow (Grammar43.fourRow ⟨1,3,2,3,4,3⟩ [0,1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
