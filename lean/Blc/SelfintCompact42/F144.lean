import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2016 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2017 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2018 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2019 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2020 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2021 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2022 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2023 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2024 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2025 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2026 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2027 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2028 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2029 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
