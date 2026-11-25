import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7632 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7633 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7634 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [49,4,49,4,49,30,49,9,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7635 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7636 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [49,4,49,4,49,30,49,9,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7637 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7638 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7639 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7640 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [49,4,49,4,49,17,49,9,36,36,36,36,49,4,49,4,49,17,49,9,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7641 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7642 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7643 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7644 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [49,4,49,4,49,17,49,9,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7645 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7646 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [49,4,49,4,49,38,49,11,36,36,36,36,49,4,49,4,49,37,49,13,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7647 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
