import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2016 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2017 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2018 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2019 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2020 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2021 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2022 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2023 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2024 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2025 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2026 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2027 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2028 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2029 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2030 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2031 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
