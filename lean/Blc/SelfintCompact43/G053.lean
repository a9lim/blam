import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g848 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g849 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g850 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g851 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g852 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g853 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g854 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g855 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g856 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [3,1,3,1,3,1,3,4,3,6,3,1,3,1,3,1,3,1,3,4,3,6,3,1,3,39,3,1,3,1,3,4,3,6,3,7,3,39,3,1,3,1,3,4,3,6,3,7,3,39,3,1,3,1,3,4,3,6,3,7] (hard := []) (by decide +kernel) .nil)

theorem g857 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g858 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [3,25,3,1,3,1,3,4,3,6,3,30,3,1,3,1,3,1,3,4,3,6,3,1,3,39,3,1,3,1,3,4,3,6,3,7,3,1,3,1,3,1,3,4,3,6,3,1,3,39,3,1,3,1,3,4,3,6,3,7] (hard := []) (by decide +kernel) .nil)

theorem g859 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g860 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g861 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g862 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [3,1,3,1,3,1,3,4,3,6,3,1,3,1,3,1,3,1,3,4,3,6,3,1,3,39,3,1,3,1,3,4,3,6,3,7,3,39,3,1,3,1,3,4,3,6,3,7,3,39,3,1,3,1,3,4,3,6,3,7] (hard := []) (by decide +kernel) .nil)

theorem g863 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
