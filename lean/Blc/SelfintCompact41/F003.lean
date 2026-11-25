import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f42 (hard : BadRow [Floor41.e605804357530,Floor41.e605804357098,Floor41.e605804345834,Floor41.e605803264490,Floor41.e605775125402,Floor41.e605775149546,Floor41.e605775124970,Floor41.e605775116010,Floor41.e605778098666,Floor41.e605770790634]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,0,1,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,4,4,4,4,0,0,0,0,4,4,4,0,0,0,0,4,0,4,0] (hard := [Floor41.e605804357530,Floor41.e605804357098,Floor41.e605804345834,Floor41.e605803264490,Floor41.e605775125402,Floor41.e605775149546,Floor41.e605775124970,Floor41.e605775116010,Floor41.e605778098666,Floor41.e605770790634]) (by decide +kernel) hard)

theorem f43 (hard : BadRow [Floor41.e605804360502,Floor41.e605804360406,Floor41.e605804346678,Floor41.e605804346582,Floor41.e605804343126]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,0,2,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,4,0,0,0,0,0,4,4,4,4,4] (hard := [Floor41.e605804360502,Floor41.e605804360406,Floor41.e605804346678,Floor41.e605804346582,Floor41.e605804343126]) (by decide +kernel) hard)

theorem f44 (hard : BadRow [Floor41.e605804360506,Floor41.e605804360410,Floor41.e605804346682,Floor41.e605804346586,Floor41.e605804343130,Floor41.e605803265242,Floor41.e605803261786,Floor41.e605775150298,Floor41.e605775146842,Floor41.e605775125722,Floor41.e605775122266,Floor41.e605775116122,Floor41.e605778099418,Floor41.e605778095962]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,0,2,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,0,0,0,0,0,0,0,4,4,4,4,4,0,0,0,0,0,4,4,0,0,4,4] (hard := [Floor41.e605804360506,Floor41.e605804360410,Floor41.e605804346682,Floor41.e605804346586,Floor41.e605804343130,Floor41.e605803265242,Floor41.e605803261786,Floor41.e605775150298,Floor41.e605775146842,Floor41.e605775125722,Floor41.e605775122266,Floor41.e605775116122,Floor41.e605778099418,Floor41.e605778095962]) (by decide +kernel) hard)

theorem f45 (hard : BadRow [Floor41.e605804360602,Floor41.e605804360426,Floor41.e605804346602,Floor41.e605803265258,Floor41.e605775125914,Floor41.e605775150314,Floor41.e605775125738,Floor41.e605775116138,Floor41.e605778099434,Floor41.e605770790762]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,0,2,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,4,4,4,4,0,0,0,0,4,4,4,0,0,0,0,4,0,4,0] (hard := [Floor41.e605804360602,Floor41.e605804360426,Floor41.e605804346602,Floor41.e605803265258,Floor41.e605775125914,Floor41.e605775150314,Floor41.e605775125738,Floor41.e605775116138,Floor41.e605778099434,Floor41.e605770790762]) (by decide +kernel) hard)

theorem f46 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,0,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem f47 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f48 (hard : BadRow [Floor41.e605775174074,Floor41.e605775173306,Floor41.e605775129018,Floor41.e605775128250,Floor41.e605775116986]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,0,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0,0,0,0] (hard := [Floor41.e605775174074,Floor41.e605775173306,Floor41.e605775129018,Floor41.e605775128250,Floor41.e605775116986]) (by decide +kernel) hard)

theorem f49 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f50 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f51 (hard : BadRow [Floor41.e605775174554,Floor41.e605775129498,Floor41.e605775174122,Floor41.e605775173354,Floor41.e605775129066,Floor41.e605775128298,Floor41.e605775117034,Floor41.e605770802922,Floor41.e605770791658]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,0,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0] (hard := [Floor41.e605775174554,Floor41.e605775129498,Floor41.e605775174122,Floor41.e605775173354,Floor41.e605775129066,Floor41.e605775128298,Floor41.e605775117034,Floor41.e605770802922,Floor41.e605770791658]) (by decide +kernel) hard)

theorem f52 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f53 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f54 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f55 (hard : BadRow [Floor41.e605775175322,Floor41.e605775175274,Floor41.e605775173546,Floor41.e605775128490,Floor41.e605770803114]) : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [0,1,2,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,0,0,0,0,0] (hard := [Floor41.e605775175322,Floor41.e605775175274,Floor41.e605775173546,Floor41.e605775128490,Floor41.e605770803114]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact41
