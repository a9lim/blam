import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g912 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g913 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g914 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g915 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g916 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g917 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g918 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g919 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g920 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g921 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g922 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g923 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g924 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g925 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g926 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g927 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
