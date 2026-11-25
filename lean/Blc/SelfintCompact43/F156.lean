import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1872 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1873 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1874 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1875 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1876 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1877 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1878 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1879 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1880 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1881 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1882 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1883 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
