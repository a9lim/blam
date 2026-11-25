import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4000 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4001 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4002 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4003 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4004 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4005 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4006 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4007 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4008 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4009 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4010 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4011 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4012 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4013 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4014 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4015 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
