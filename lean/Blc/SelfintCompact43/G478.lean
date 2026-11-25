import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7648 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [49,4,49,4,49,9,49,11,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7649 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7650 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7651 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7652 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7653 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7654 (hard : BadRow [Floor43.e2424727341934,Floor43.e2393119066990,Floor43.e2389293861742,Floor43.e2803820967650,Floor43.e2797378516706,Floor43.e2804815719962,Floor43.e2424727931758,Floor43.e2417278847854,Floor43.e2392515677038,Floor43.e2391509044078,Floor43.e2385066593134,Floor43.e2384865266542]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,37,38,36,25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,14,37,36,25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,61,58,36,30,14,56,0,16,39,39,30,56,0,0,30,14,1,1,13,14,36,3,0,3,0,0,0,3,3,3,114,3,14,3,0,3,106,3,0,3,47,3,1,3,0,3,0,3,21,3,14,3,0,3,14,97,36] (hard := [Floor43.e2424727341934,Floor43.e2393119066990,Floor43.e2389293861742,Floor43.e2803820967650,Floor43.e2797378516706,Floor43.e2804815719962,Floor43.e2424727931758,Floor43.e2417278847854,Floor43.e2392515677038,Floor43.e2391509044078,Floor43.e2385066593134,Floor43.e2384865266542]) (by decide +kernel) hard)

theorem g7655 (hard : BadRow [Floor43.e700955241914,Floor43.e699344629178]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,26,0,1,3,26,0,1,1,1,1,1,1,1,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := [Floor43.e700955241914,Floor43.e699344629178]) (by decide +kernel) hard)

theorem g7656 (hard : BadRow [Floor43.e2804664727066,Floor43.e2424727341942,Floor43.e2392515087222,Floor43.e2393119066998,Floor43.e2389293861750,Floor43.e2417077521270]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,38,37,36,25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,37,14,36,25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,58,59,36,30,14,0,0,16,39,39,30,0,0,0,30,14,1,1,9,14,36,3,75,3,65,78,95,3,3,3,104,3,47,3,108,3,0,3,78,3,47,3,1,3,75,3,65,3,21,3,11,3,62,3,9,97,36] (hard := [Floor43.e2804664727066,Floor43.e2424727341942,Floor43.e2392515087222,Floor43.e2393119066998,Floor43.e2389293861750,Floor43.e2417077521270]) (by decide +kernel) hard)

theorem g7657 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,26,50,1,3,26,45,1,1,1,1,1,1,1,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7658 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7659 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7660 (hard : BadRow [Floor43.e2804664921626,Floor43.e2424727342702,Floor43.e2392515087982,Floor43.e2393119067758,Floor43.e2389293862510,Floor43.e2424727341998,Floor43.e2393119067054,Floor43.e2389293861806,Floor43.e2803820979938,Floor43.e2391509044846]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [30,9,1,1,16,39,39,25,1,30,25,30,9,28,25,37,38,36,30,34,28,1,16,39,39,25,28,37,25,30,34,28,30,37,38,36,25,9,1,1,16,39,39,25,1,1,25,25,9,1,1,37,14,36,30,34,28,1,16,39,39,25,28,1,25,30,34,28,1,14,31,36,25,34,1,1,16,39,39,25,1,1,25,25,34,1,1,59,58,36,38,31,0,0,16,39,39,30,0,0,0,38,31,30,30,34,37,36,38,14,56,0,16,39,39,30,56,0,0,38,14,71,1,34,14,36,3,0,3,47,47,47,3,3,3,14,3,14,3,47,3,47,3,47,3,14,3,14,3,0,3,47,3,72,3,13,3,47,3,11,97,36,3,76,3,46,63,96,3,3,3,104,3,92,3,109,3,107,3,63,3,47,3,14,3,76,3,46,3,10,3,24,3,63,3,47,97,36] (hard := [Floor43.e2804664921626,Floor43.e2424727342702,Floor43.e2392515087982,Floor43.e2393119067758,Floor43.e2389293862510,Floor43.e2424727341998,Floor43.e2393119067054,Floor43.e2389293861806,Floor43.e2803820979938,Floor43.e2391509044846]) (by decide +kernel) hard)

theorem g7661 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,30,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,38,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,38,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,31,37,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,3,26,14,1,3,26,47,1,1,1,1,1,14,1,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,3,26,51,1,3,26,46,1,1,1,1,1,14,1,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7662 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7663 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
