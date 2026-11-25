import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2700 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2701 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2702 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2703 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2704 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2705 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2706 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2707 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2708 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2709 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2710 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2711 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
