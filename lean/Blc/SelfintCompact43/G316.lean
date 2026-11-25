import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5056 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5057 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5058 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5059 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5060 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5061 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5062 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5063 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5064 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5065 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5066 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5067 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5068 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5069 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5070 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5071 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
