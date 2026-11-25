import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4848 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4849 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4850 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4851 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4852 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4853 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4854 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4855 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4856 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4857 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4858 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4859 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4860 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4861 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4862 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4863 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
