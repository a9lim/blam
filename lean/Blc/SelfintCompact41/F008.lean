import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f112 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,17,17,6,17,6,6,17,6,17] (hard := []) (by decide +kernel) .nil)

theorem f113 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f114 (hard : BadRow [Floor41.e604735540078,Floor41.e604332886894,Floor41.e598292499310,Floor41.e598293089134,Floor41.e597890435950,Floor41.e596279823214]) : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [8,8,8,8,0,1,10,11,1,0,1,1,1,0,0,1,1,1,1,0,10,10,40,10,0] (hard := [Floor41.e604735540078,Floor41.e604332886894,Floor41.e598292499310,Floor41.e598293089134,Floor41.e597890435950,Floor41.e596279823214]) (by decide +kernel) hard)

theorem f115 (hard : BadRow [Floor41.e598292499318]) : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [8,8,8,8,62,11,11,10,1,60,1,1,1,0,52,1,1,1,1,46,11,10,40,10,43] (hard := [Floor41.e598292499318]) (by decide +kernel) hard)

theorem f116 (hard : BadRow [Floor41.e604735540846,Floor41.e604332887662,Floor41.e598292500078,Floor41.e598292499374,Floor41.e597890436718]) : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [8,8,8,8,8,8,8,0,63,27,9,1,1,1,9,22,0,61,1,1,1,1,1,0,0,11,53,27,9,1,1,1,9,1,0,47,29,41,10,10,40,22,10,11,44] (hard := [Floor41.e604735540846,Floor41.e604332887662,Floor41.e598292500078,Floor41.e598292499374,Floor41.e597890436718]) (by decide +kernel) hard)

theorem f117 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f118 (hard : BadRow [Floor41.e598292500090,Floor41.e597890436730,Floor41.e596279823994]) : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [27,27,8,27,54,9,1,1,22,54,29,1,1,0,54,27,1,1,29,0,22,10,40,10,0] (hard := [Floor41.e598292500090,Floor41.e597890436730,Floor41.e596279823994]) (by decide +kernel) hard)

theorem f119 (hard : BadRow [Floor41.e604735541046,Floor41.e604735540182,Floor41.e604332887862,Floor41.e604332886998,Floor41.e598292499414,Floor41.e598293090102,Floor41.e598293089238,Floor41.e597890436918,Floor41.e597890436054,Floor41.e596279824182,Floor41.e596279823318]) : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [27,9,8,27,8,27,27,0,0,9,29,10,54,54,22,1,0,0,27,9,1,1,1,10,0,0,0,9,22,1,1,1,1,41,0,0,22,11,10,10,40,10,10,0,0] (hard := [Floor41.e604735541046,Floor41.e604735540182,Floor41.e604332887862,Floor41.e604332886998,Floor41.e598292499414,Floor41.e598293090102,Floor41.e598293089238,Floor41.e597890436918,Floor41.e597890436054,Floor41.e596279824182,Floor41.e596279823318]) (by decide +kernel) hard)

theorem f120 (hard : BadRow [Floor41.e604735541050,Floor41.e604332887866,Floor41.e597890436922,Floor41.e596279824186]) : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [27,8,8,27,0,9,10,10,22,0,27,1,1,10,54,9,1,1,1,0,22,10,40,10,0] (hard := [Floor41.e604735541050,Floor41.e604332887866,Floor41.e597890436922,Floor41.e596279824186]) (by decide +kernel) hard)

theorem f121 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [8,8,8,8,8,27,27,9,9,1,10,10,10,10,10,27,27,9,7,10,29,22,10,15,40] (hard := []) (by decide +kernel) .nil)

theorem f122 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f123 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [27,8,27,8,8,9,27,29,27,9,10,10,10,10,10,27,27,7,9,14,22,22,10,41,40] (hard := []) (by decide +kernel) .nil)

theorem f124 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f125 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
