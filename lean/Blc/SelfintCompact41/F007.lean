import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f98 (hard : BadRow [Floor41.e604797727546,Floor41.e604797727450,Floor41.e604797713722,Floor41.e604797713626,Floor41.e604797710170,Floor41.e604796632282,Floor41.e604796628826,Floor41.e598345530586,Floor41.e598345527130,Floor41.e598355276602,Floor41.e598355276506,Floor41.e598355262778,Floor41.e598355262682,Floor41.e598355259226,Floor41.e598354181338,Floor41.e598354177882]) : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,0,0,0,0,0,0,0,8,8,27,8,27,1,1,1,1,8,27,1,1,1,9,9,1,9,22,0,0,0,0,0,0,0,0,0] (hard := [Floor41.e604797727546,Floor41.e604797727450,Floor41.e604797713722,Floor41.e604797713626,Floor41.e604797710170,Floor41.e604796632282,Floor41.e604796628826,Floor41.e598345530586,Floor41.e598345527130,Floor41.e598355276602,Floor41.e598355276506,Floor41.e598355262778,Floor41.e598355262682,Floor41.e598355259226,Floor41.e598354181338,Floor41.e598354177882]) (by decide +kernel) hard)

theorem f99 (hard : BadRow [Floor41.e604797727642,Floor41.e604797727466,Floor41.e604797713642,Floor41.e604796632298,Floor41.e598345530602,Floor41.e598355276698,Floor41.e598355276522,Floor41.e598355262698,Floor41.e598354181354]) : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,34,34,34,0,0,0,0,8,8,8,1,1,1,8,1,1,9,9,9,0,0,0,0,0] (hard := [Floor41.e604797727642,Floor41.e604797727466,Floor41.e604797713642,Floor41.e604796632298,Floor41.e598345530602,Floor41.e598355276698,Floor41.e598355276522,Floor41.e598355262698,Floor41.e598354181354]) (by decide +kernel) hard)

theorem f100 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,34,34,34,34,6,6,6,6,6,17,17,17,10,17,17,10,10,7] (hard := []) (by decide +kernel) .nil)

theorem f101 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f102 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,34,34,34,34,6,6,6,6,6,17,17,17,10,6,6,17,17,10] (hard := []) (by decide +kernel) .nil)

theorem f103 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f104 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f105 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,34,34,34,34,6,6,6,6,6,17,17,6,17,6,6,17,6,17] (hard := []) (by decide +kernel) .nil)

theorem f106 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f107 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f108 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f109 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f110 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,17,17,17,10,17,17,10,10,7] (hard := []) (by decide +kernel) .nil)

theorem f111 : BadRow (markedRow ⟨0,3,0,2,5,3⟩ [0,0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,17,17,17,10,6,6,17,17,10] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
