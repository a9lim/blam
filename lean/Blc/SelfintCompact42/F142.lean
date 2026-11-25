import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1988 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1989 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1990 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1991 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1992 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1993 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1994 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1995 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1996 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1997 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1998 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1999 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2000 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2001 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
