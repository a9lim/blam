import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2816 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2817 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2818 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2819 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2820 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2821 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2822 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2823 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2824 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2825 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2826 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2827 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2828 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2829 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2830 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2831 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
