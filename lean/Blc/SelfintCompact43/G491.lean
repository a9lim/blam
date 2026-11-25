import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7856 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7857 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7858 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7859 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7860 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,2,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7861 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,2,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7862 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [2,0,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7863 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [2,0,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7864 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [2,0,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7865 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [2,0,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7866 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [2,0,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7867 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [2,0,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7868 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [2,0,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7869 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [2,0,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7870 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [2,1,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7871 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [2,1,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
