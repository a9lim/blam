import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1704 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1705 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1706 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1707 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1708 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1709 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1710 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1711 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1712 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1713 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1714 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1715 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
