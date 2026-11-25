import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1692 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1693 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1694 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1695 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1696 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1697 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1698 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1699 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1700 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1701 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1702 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1703 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
