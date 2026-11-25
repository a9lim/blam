import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2856 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2857 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2858 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2859 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2860 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2861 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2862 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2863 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2864 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2865 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2866 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2867 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
