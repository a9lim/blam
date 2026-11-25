import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6848 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6849 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6850 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6851 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6852 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6853 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6854 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6855 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6856 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6857 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6858 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6859 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6860 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6861 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6862 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,9,14] (hard := []) (by decide +kernel) .nil)

theorem g6863 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
