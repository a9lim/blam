import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f112 (hard : BadRow [Floor42.e1209595448174,Floor42.e1209595426030,Floor42.e1209595425646,Floor42.e1209595420014,Floor42.e1196691229550,Floor42.e1196710546670,Floor42.e1196710546286,Floor42.e1196710524142,Floor42.e1196710523758,Floor42.e1196710518126]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,26,0,0,0,0,3,16,1,1,1,1,1,1,1,1,1,1,1,1,1,23,1,1,1,1,1,0,0,0,0,0,0,3] (hard := [Floor42.e1209595448174,Floor42.e1209595426030,Floor42.e1209595425646,Floor42.e1209595420014,Floor42.e1196691229550,Floor42.e1196710546670,Floor42.e1196710546286,Floor42.e1196710524142,Floor42.e1196710523758,Floor42.e1196710518126]) (by decide +kernel) hard)

theorem f113 (hard : BadRow [Floor42.e1209595448182,Floor42.e1209595426038,Floor42.e1209595425654,Floor42.e1209595420022,Floor42.e1196691229558,Floor42.e1196691059574,Floor42.e1196691053942,Floor42.e1196710546294,Floor42.e1196710524150,Floor42.e1196710523766,Floor42.e1196710518134]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,1,1,26,0,0,0,0,3,16,1,1,1,1,1,1,1,1,1,1,1,1,1,27,1,1,1,1,1,0,0,0,26,0,0,0,0,3] (hard := [Floor42.e1209595448182,Floor42.e1209595426038,Floor42.e1209595425654,Floor42.e1209595420022,Floor42.e1196691229558,Floor42.e1196691059574,Floor42.e1196691053942,Floor42.e1196710546294,Floor42.e1196710524150,Floor42.e1196710523766,Floor42.e1196710518134]) (by decide +kernel) hard)

theorem f114 (hard : BadRow [Floor42.e1209595448238,Floor42.e1209595425710,Floor42.e1196691230318,Floor42.e1196691229614,Floor42.e1196710546350,Floor42.e1196710523822]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,1,1,26,0,3,0,3,3,3,16,27,1,1,1,1,1,1,1,1,1,1,1,1,23,39,1,1,1,1,1,0,0,26,0,3,0,3,3,3] (hard := [Floor42.e1209595448238,Floor42.e1209595425710,Floor42.e1196691230318,Floor42.e1196691229614,Floor42.e1196710546350,Floor42.e1196710523822]) (by decide +kernel) hard)

theorem f115 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f116 (hard : BadRow [Floor42.e1196691230330]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,26,3,3,3,16,16,1,1,1,1,1,1,1,1,27,23,1,1,0,26,3,3,3] (hard := [Floor42.e1196691230330]) (by decide +kernel) hard)

theorem f117 (hard : BadRow [Floor42.e1209595449142,Floor42.e1209595448278,Floor42.e1209595425750,Floor42.e1196691230518,Floor42.e1196691229654,Floor42.e1196691059670,Floor42.e1196710546390,Floor42.e1196710523862]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,1,1,1,0,0,3,0,3,3,3,16,25,1,1,1,1,1,1,1,1,1,1,1,1,27,1,1,1,1,1,1,0,0,0,26,0,3,0,3,3,3] (hard := [Floor42.e1209595449142,Floor42.e1209595448278,Floor42.e1209595425750,Floor42.e1196691230518,Floor42.e1196691229654,Floor42.e1196691059670,Floor42.e1196710546390,Floor42.e1196710523862]) (by decide +kernel) hard)

theorem f118 (hard : BadRow [Floor42.e1209595449146,Floor42.e1196691230522,Floor42.e1196710547258]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,0,3,3,3,16,16,1,1,1,1,1,1,1,1,27,25,1,1,0,0,3,3,3] (hard := [Floor42.e1209595449146,Floor42.e1196691230522,Floor42.e1196710547258]) (by decide +kernel) hard)

theorem f119 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f120 (hard : BadRow [Floor42.e1209595455094,Floor42.e1209595454902,Floor42.e1209595427446,Floor42.e1209595427254,Floor42.e1209595420342,Floor42.e1196691061174,Floor42.e1196691054262,Floor42.e1196710553206,Floor42.e1196710553014,Floor42.e1196710525558,Floor42.e1196710525366,Floor42.e1196710518454]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,0,0,0,0,0,16,1,1,1,1,1,1,1,1,1,1,1,1,1,27,1,1,1,1,0,0,0,0,0,0,0] (hard := [Floor42.e1209595455094,Floor42.e1209595454902,Floor42.e1209595427446,Floor42.e1209595427254,Floor42.e1209595420342,Floor42.e1196691061174,Floor42.e1196691054262,Floor42.e1196710553206,Floor42.e1196710553014,Floor42.e1196710525558,Floor42.e1196710525366,Floor42.e1196710518454]) (by decide +kernel) hard)

theorem f121 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f122 (hard : BadRow [Floor42.e1209595455286,Floor42.e1209595454934,Floor42.e1209595427286,Floor42.e1196691061206,Floor42.e1196710553398,Floor42.e1196710553046,Floor42.e1196710525398]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,0,0,3,0,3,16,1,1,1,1,1,1,1,1,1,1,1,1,1,27,1,1,1,1,0,0,0,3,0,3] (hard := [Floor42.e1209595455286,Floor42.e1209595454934,Floor42.e1209595427286,Floor42.e1196691061206,Floor42.e1196710553398,Floor42.e1196710553046,Floor42.e1196710525398]) (by decide +kernel) hard)

theorem f123 (hard : BadRow [Floor42.e1209595455290,Floor42.e1196710553402]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,0,3,3,16,16,1,1,1,1,1,1,1,1,27,27,1,0,3,3] (hard := [Floor42.e1209595455290,Floor42.e1196710553402]) (by decide +kernel) hard)

theorem f124 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f125 (hard : BadRow [Floor42.e1196686691694,Floor42.e1196691360622]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,26,26,3,12,12,16,1,16,1,1,12,12,11,12,12,12,12,0,12,12,12,3,12,0] (hard := [Floor42.e1196686691694,Floor42.e1196691360622]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact42
