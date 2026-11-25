import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2016 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2017 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2018 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2019 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2020 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2021 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2022 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2023 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2024 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2025 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,0,2,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2026 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,0,3,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2027 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,0,4,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
