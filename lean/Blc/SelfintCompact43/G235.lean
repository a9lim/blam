import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3760 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3761 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3762 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3763 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3764 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3765 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3766 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3767 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3768 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3769 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3770 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3771 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3772 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3773 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3774 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3775 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
