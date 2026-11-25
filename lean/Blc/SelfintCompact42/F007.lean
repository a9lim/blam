import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f98 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,1,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f99 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f100 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,1,0,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f101 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,1,0,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f102 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,1,0,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f103 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,1,1,0,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f104 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,2,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f105 : BadRow (markedRow ⟨0,3,0,2,4,8⟩ [0,0,0] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f106 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f107 (hard : BadRow [Floor42.e1209595423982,Floor42.e1209595422574,Floor42.e1209595419502,Floor42.e1196710522094,Floor42.e1196710520686,Floor42.e1196710517614]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0] (hard := [Floor42.e1209595423982,Floor42.e1209595422574,Floor42.e1209595419502,Floor42.e1196710522094,Floor42.e1196710520686,Floor42.e1196710517614]) (by decide +kernel) hard)

theorem f108 (hard : BadRow [Floor42.e1209595423990,Floor42.e1209595422582,Floor42.e1209595419510,Floor42.e1196691053430,Floor42.e1196710522102,Floor42.e1196710520694,Floor42.e1196710517622]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0] (hard := [Floor42.e1209595423990,Floor42.e1209595422582,Floor42.e1209595419510,Floor42.e1196691053430,Floor42.e1196710522102,Floor42.e1196710520694,Floor42.e1196710517622]) (by decide +kernel) hard)

theorem f109 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f110 (hard : BadRow [Floor42.e1209595424374,Floor42.e1209595422646,Floor42.e1209595419574,Floor42.e1196691053494,Floor42.e1196710522486,Floor42.e1196710520758,Floor42.e1196710517686]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0] (hard := [Floor42.e1209595424374,Floor42.e1209595422646,Floor42.e1209595419574,Floor42.e1196691053494,Floor42.e1196710522486,Floor42.e1196710520758,Floor42.e1196710517686]) (by decide +kernel) hard)

theorem f111 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
