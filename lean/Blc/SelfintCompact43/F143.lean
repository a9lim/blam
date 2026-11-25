import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1716 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1717 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1718 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1719 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1720 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1721 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1722 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1723 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1724 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1725 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1726 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1727 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
