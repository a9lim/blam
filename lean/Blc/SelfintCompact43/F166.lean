import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1992 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1993 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1994 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1995 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1996 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1997 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1998 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1999 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2000 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2001 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2002 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2003 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
