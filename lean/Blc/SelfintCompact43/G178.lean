import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2848 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2849 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2850 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2851 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2852 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2853 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2854 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2855 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2856 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2857 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2858 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2859 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2860 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2861 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2862 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2863 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
