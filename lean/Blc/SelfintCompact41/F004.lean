import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f56 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,2,0,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f57 (hard : BadRow [Floor41.e605775187162,Floor41.e605775186778,Floor41.e605775131866,Floor41.e605775131482,Floor41.e605775117658]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,2,0,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0] (hard := [Floor41.e605775187162,Floor41.e605775186778,Floor41.e605775131866,Floor41.e605775131482,Floor41.e605775117658]) (by decide +kernel) hard)

theorem f58 (hard : BadRow [Floor41.e605775187354,Floor41.e605775132058,Floor41.e605775187178,Floor41.e605775186794,Floor41.e605775131882,Floor41.e605775131498,Floor41.e605775117674,Floor41.e605770806122,Floor41.e605770792298]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,2,0,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0] (hard := [Floor41.e605775187354,Floor41.e605775132058,Floor41.e605775187178,Floor41.e605775186794,Floor41.e605775131882,Floor41.e605775131498,Floor41.e605775117674,Floor41.e605770806122,Floor41.e605770792298]) (by decide +kernel) hard)

theorem f59 (hard : BadRow [Floor41.e605775187610,Floor41.e605775187562,Floor41.e605775186858,Floor41.e605775131562,Floor41.e605770806186]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,2,1,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,54,54,54,54,10,54,54,10,54,0,0,0,0,0] (hard := [Floor41.e605775187610,Floor41.e605775187562,Floor41.e605775186858,Floor41.e605775131562,Floor41.e605770806186]) (by decide +kernel) hard)

theorem f60 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,0,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f61 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f62 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,0,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f63 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f64 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f65 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,0,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f66 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f67 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f68 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f69 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,0,2,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
