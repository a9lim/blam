import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1656 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1657 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1658 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1659 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1660 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1661 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1662 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1663 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1664 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1665 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1666 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1667 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
