import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5696 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5697 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5698 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5699 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5700 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5701 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5702 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5703 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5704 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5705 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5706 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5707 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5708 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5709 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5710 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5711 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
