import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1680 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1681 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1682 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1683 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1684 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1685 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1686 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1687 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1688 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1689 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1690 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1691 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
