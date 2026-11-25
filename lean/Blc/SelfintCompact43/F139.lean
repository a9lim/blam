import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1668 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1669 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1670 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1671 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1672 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1673 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1674 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1675 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1676 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1677 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1678 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1679 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
