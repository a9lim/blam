import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1984 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1985 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1986 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1987 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1988 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1989 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1990 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1991 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1992 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1993 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1994 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1995 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1996 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1997 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1998 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1999 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
