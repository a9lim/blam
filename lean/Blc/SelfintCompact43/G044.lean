import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g704 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g705 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g706 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g707 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g708 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g709 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g710 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g711 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g712 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g713 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g714 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g715 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g716 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g717 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g718 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g719 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
