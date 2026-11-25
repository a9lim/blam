import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1740 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1741 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1742 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1743 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1744 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1745 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1746 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1747 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1748 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1749 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1750 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1751 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
