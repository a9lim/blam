import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1860 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1861 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1862 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1863 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1864 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1865 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1866 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1867 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1868 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1869 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1870 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1871 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
