import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2864 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2865 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2866 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2867 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2868 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2869 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2870 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2871 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2872 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2873 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2874 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2875 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2876 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2877 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2878 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2879 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
