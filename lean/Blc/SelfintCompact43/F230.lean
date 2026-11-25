import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2760 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2761 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2762 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2763 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2764 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2765 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2766 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2767 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2768 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2769 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2770 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2771 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
