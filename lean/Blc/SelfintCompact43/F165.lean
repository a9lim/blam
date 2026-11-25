import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1980 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1981 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1982 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1983 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1984 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1985 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1986 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1987 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1988 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1989 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1990 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1991 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
