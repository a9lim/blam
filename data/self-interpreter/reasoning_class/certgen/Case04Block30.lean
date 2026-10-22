import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1440 : (match states[1440]? with | none => false | some s => goodb P V K states s (hints[1440]?.getD []))=true := by decide +kernel
theorem row1441 : (match states[1441]? with | none => false | some s => goodb P V K states s (hints[1441]?.getD []))=true := by decide +kernel
theorem row1442 : (match states[1442]? with | none => false | some s => goodb P V K states s (hints[1442]?.getD []))=true := by decide +kernel
theorem row1443 : (match states[1443]? with | none => false | some s => goodb P V K states s (hints[1443]?.getD []))=true := by decide +kernel
theorem row1444 : (match states[1444]? with | none => false | some s => goodb P V K states s (hints[1444]?.getD []))=true := by decide +kernel
theorem row1445 : (match states[1445]? with | none => false | some s => goodb P V K states s (hints[1445]?.getD []))=true := by decide +kernel
theorem row1446 : (match states[1446]? with | none => false | some s => goodb P V K states s (hints[1446]?.getD []))=true := by decide +kernel
theorem row1447 : (match states[1447]? with | none => false | some s => goodb P V K states s (hints[1447]?.getD []))=true := by decide +kernel
theorem row1448 : (match states[1448]? with | none => false | some s => goodb P V K states s (hints[1448]?.getD []))=true := by decide +kernel
theorem row1449 : (match states[1449]? with | none => false | some s => goodb P V K states s (hints[1449]?.getD []))=true := by decide +kernel
theorem row1450 : (match states[1450]? with | none => false | some s => goodb P V K states s (hints[1450]?.getD []))=true := by decide +kernel
theorem row1451 : (match states[1451]? with | none => false | some s => goodb P V K states s (hints[1451]?.getD []))=true := by decide +kernel
theorem block1440 : checkRange P V K states hints 1440 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1440
 · exact row1441
 · exact row1442
 · exact row1443
 · exact row1444
 · exact row1445
 · exact row1446
 · exact row1447
 · exact row1448
 · exact row1449
 · exact row1450
 · exact row1451
theorem row1452 : (match states[1452]? with | none => false | some s => goodb P V K states s (hints[1452]?.getD []))=true := by decide +kernel
theorem row1453 : (match states[1453]? with | none => false | some s => goodb P V K states s (hints[1453]?.getD []))=true := by decide +kernel
theorem row1454 : (match states[1454]? with | none => false | some s => goodb P V K states s (hints[1454]?.getD []))=true := by decide +kernel
theorem row1455 : (match states[1455]? with | none => false | some s => goodb P V K states s (hints[1455]?.getD []))=true := by decide +kernel
theorem row1456 : (match states[1456]? with | none => false | some s => goodb P V K states s (hints[1456]?.getD []))=true := by decide +kernel
theorem row1457 : (match states[1457]? with | none => false | some s => goodb P V K states s (hints[1457]?.getD []))=true := by decide +kernel
theorem row1458 : (match states[1458]? with | none => false | some s => goodb P V K states s (hints[1458]?.getD []))=true := by decide +kernel
theorem row1459 : (match states[1459]? with | none => false | some s => goodb P V K states s (hints[1459]?.getD []))=true := by decide +kernel
theorem row1460 : (match states[1460]? with | none => false | some s => goodb P V K states s (hints[1460]?.getD []))=true := by decide +kernel
theorem row1461 : (match states[1461]? with | none => false | some s => goodb P V K states s (hints[1461]?.getD []))=true := by decide +kernel
theorem row1462 : (match states[1462]? with | none => false | some s => goodb P V K states s (hints[1462]?.getD []))=true := by decide +kernel
theorem row1463 : (match states[1463]? with | none => false | some s => goodb P V K states s (hints[1463]?.getD []))=true := by decide +kernel
theorem block1452 : checkRange P V K states hints 1452 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1452
 · exact row1453
 · exact row1454
 · exact row1455
 · exact row1456
 · exact row1457
 · exact row1458
 · exact row1459
 · exact row1460
 · exact row1461
 · exact row1462
 · exact row1463
theorem row1464 : (match states[1464]? with | none => false | some s => goodb P V K states s (hints[1464]?.getD []))=true := by decide +kernel
theorem row1465 : (match states[1465]? with | none => false | some s => goodb P V K states s (hints[1465]?.getD []))=true := by decide +kernel
theorem row1466 : (match states[1466]? with | none => false | some s => goodb P V K states s (hints[1466]?.getD []))=true := by decide +kernel
theorem row1467 : (match states[1467]? with | none => false | some s => goodb P V K states s (hints[1467]?.getD []))=true := by decide +kernel
theorem row1468 : (match states[1468]? with | none => false | some s => goodb P V K states s (hints[1468]?.getD []))=true := by decide +kernel
theorem row1469 : (match states[1469]? with | none => false | some s => goodb P V K states s (hints[1469]?.getD []))=true := by decide +kernel
theorem row1470 : (match states[1470]? with | none => false | some s => goodb P V K states s (hints[1470]?.getD []))=true := by decide +kernel
theorem row1471 : (match states[1471]? with | none => false | some s => goodb P V K states s (hints[1471]?.getD []))=true := by decide +kernel
theorem row1472 : (match states[1472]? with | none => false | some s => goodb P V K states s (hints[1472]?.getD []))=true := by decide +kernel
theorem row1473 : (match states[1473]? with | none => false | some s => goodb P V K states s (hints[1473]?.getD []))=true := by decide +kernel
theorem row1474 : (match states[1474]? with | none => false | some s => goodb P V K states s (hints[1474]?.getD []))=true := by decide +kernel
theorem row1475 : (match states[1475]? with | none => false | some s => goodb P V K states s (hints[1475]?.getD []))=true := by decide +kernel
theorem block1464 : checkRange P V K states hints 1464 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1464
 · exact row1465
 · exact row1466
 · exact row1467
 · exact row1468
 · exact row1469
 · exact row1470
 · exact row1471
 · exact row1472
 · exact row1473
 · exact row1474
 · exact row1475
theorem row1476 : (match states[1476]? with | none => false | some s => goodb P V K states s (hints[1476]?.getD []))=true := by decide +kernel
theorem row1477 : (match states[1477]? with | none => false | some s => goodb P V K states s (hints[1477]?.getD []))=true := by decide +kernel
theorem row1478 : (match states[1478]? with | none => false | some s => goodb P V K states s (hints[1478]?.getD []))=true := by decide +kernel
theorem row1479 : (match states[1479]? with | none => false | some s => goodb P V K states s (hints[1479]?.getD []))=true := by decide +kernel
theorem row1480 : (match states[1480]? with | none => false | some s => goodb P V K states s (hints[1480]?.getD []))=true := by decide +kernel
theorem row1481 : (match states[1481]? with | none => false | some s => goodb P V K states s (hints[1481]?.getD []))=true := by decide +kernel
theorem row1482 : (match states[1482]? with | none => false | some s => goodb P V K states s (hints[1482]?.getD []))=true := by decide +kernel
theorem row1483 : (match states[1483]? with | none => false | some s => goodb P V K states s (hints[1483]?.getD []))=true := by decide +kernel
theorem row1484 : (match states[1484]? with | none => false | some s => goodb P V K states s (hints[1484]?.getD []))=true := by decide +kernel
theorem row1485 : (match states[1485]? with | none => false | some s => goodb P V K states s (hints[1485]?.getD []))=true := by decide +kernel
theorem row1486 : (match states[1486]? with | none => false | some s => goodb P V K states s (hints[1486]?.getD []))=true := by decide +kernel
theorem row1487 : (match states[1487]? with | none => false | some s => goodb P V K states s (hints[1487]?.getD []))=true := by decide +kernel
theorem block1476 : checkRange P V K states hints 1476 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1476
 · exact row1477
 · exact row1478
 · exact row1479
 · exact row1480
 · exact row1481
 · exact row1482
 · exact row1483
 · exact row1484
 · exact row1485
 · exact row1486
 · exact row1487
end Certgen.Case04
