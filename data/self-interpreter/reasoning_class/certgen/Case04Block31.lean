import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1488 : (match states[1488]? with | none => false | some s => goodb P V K states s (hints[1488]?.getD []))=true := by decide +kernel
theorem row1489 : (match states[1489]? with | none => false | some s => goodb P V K states s (hints[1489]?.getD []))=true := by decide +kernel
theorem row1490 : (match states[1490]? with | none => false | some s => goodb P V K states s (hints[1490]?.getD []))=true := by decide +kernel
theorem row1491 : (match states[1491]? with | none => false | some s => goodb P V K states s (hints[1491]?.getD []))=true := by decide +kernel
theorem row1492 : (match states[1492]? with | none => false | some s => goodb P V K states s (hints[1492]?.getD []))=true := by decide +kernel
theorem row1493 : (match states[1493]? with | none => false | some s => goodb P V K states s (hints[1493]?.getD []))=true := by decide +kernel
theorem row1494 : (match states[1494]? with | none => false | some s => goodb P V K states s (hints[1494]?.getD []))=true := by decide +kernel
theorem row1495 : (match states[1495]? with | none => false | some s => goodb P V K states s (hints[1495]?.getD []))=true := by decide +kernel
theorem row1496 : (match states[1496]? with | none => false | some s => goodb P V K states s (hints[1496]?.getD []))=true := by decide +kernel
theorem row1497 : (match states[1497]? with | none => false | some s => goodb P V K states s (hints[1497]?.getD []))=true := by decide +kernel
theorem row1498 : (match states[1498]? with | none => false | some s => goodb P V K states s (hints[1498]?.getD []))=true := by decide +kernel
theorem row1499 : (match states[1499]? with | none => false | some s => goodb P V K states s (hints[1499]?.getD []))=true := by decide +kernel
theorem block1488 : checkRange P V K states hints 1488 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1488
 · exact row1489
 · exact row1490
 · exact row1491
 · exact row1492
 · exact row1493
 · exact row1494
 · exact row1495
 · exact row1496
 · exact row1497
 · exact row1498
 · exact row1499
theorem row1500 : (match states[1500]? with | none => false | some s => goodb P V K states s (hints[1500]?.getD []))=true := by decide +kernel
theorem row1501 : (match states[1501]? with | none => false | some s => goodb P V K states s (hints[1501]?.getD []))=true := by decide +kernel
theorem row1502 : (match states[1502]? with | none => false | some s => goodb P V K states s (hints[1502]?.getD []))=true := by decide +kernel
theorem row1503 : (match states[1503]? with | none => false | some s => goodb P V K states s (hints[1503]?.getD []))=true := by decide +kernel
theorem row1504 : (match states[1504]? with | none => false | some s => goodb P V K states s (hints[1504]?.getD []))=true := by decide +kernel
theorem row1505 : (match states[1505]? with | none => false | some s => goodb P V K states s (hints[1505]?.getD []))=true := by decide +kernel
theorem row1506 : (match states[1506]? with | none => false | some s => goodb P V K states s (hints[1506]?.getD []))=true := by decide +kernel
theorem row1507 : (match states[1507]? with | none => false | some s => goodb P V K states s (hints[1507]?.getD []))=true := by decide +kernel
theorem row1508 : (match states[1508]? with | none => false | some s => goodb P V K states s (hints[1508]?.getD []))=true := by decide +kernel
theorem row1509 : (match states[1509]? with | none => false | some s => goodb P V K states s (hints[1509]?.getD []))=true := by decide +kernel
theorem row1510 : (match states[1510]? with | none => false | some s => goodb P V K states s (hints[1510]?.getD []))=true := by decide +kernel
theorem row1511 : (match states[1511]? with | none => false | some s => goodb P V K states s (hints[1511]?.getD []))=true := by decide +kernel
theorem block1500 : checkRange P V K states hints 1500 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1500
 · exact row1501
 · exact row1502
 · exact row1503
 · exact row1504
 · exact row1505
 · exact row1506
 · exact row1507
 · exact row1508
 · exact row1509
 · exact row1510
 · exact row1511
theorem row1512 : (match states[1512]? with | none => false | some s => goodb P V K states s (hints[1512]?.getD []))=true := by decide +kernel
theorem row1513 : (match states[1513]? with | none => false | some s => goodb P V K states s (hints[1513]?.getD []))=true := by decide +kernel
theorem row1514 : (match states[1514]? with | none => false | some s => goodb P V K states s (hints[1514]?.getD []))=true := by decide +kernel
theorem row1515 : (match states[1515]? with | none => false | some s => goodb P V K states s (hints[1515]?.getD []))=true := by decide +kernel
theorem row1516 : (match states[1516]? with | none => false | some s => goodb P V K states s (hints[1516]?.getD []))=true := by decide +kernel
theorem row1517 : (match states[1517]? with | none => false | some s => goodb P V K states s (hints[1517]?.getD []))=true := by decide +kernel
theorem row1518 : (match states[1518]? with | none => false | some s => goodb P V K states s (hints[1518]?.getD []))=true := by decide +kernel
theorem row1519 : (match states[1519]? with | none => false | some s => goodb P V K states s (hints[1519]?.getD []))=true := by decide +kernel
theorem row1520 : (match states[1520]? with | none => false | some s => goodb P V K states s (hints[1520]?.getD []))=true := by decide +kernel
theorem row1521 : (match states[1521]? with | none => false | some s => goodb P V K states s (hints[1521]?.getD []))=true := by decide +kernel
theorem row1522 : (match states[1522]? with | none => false | some s => goodb P V K states s (hints[1522]?.getD []))=true := by decide +kernel
theorem row1523 : (match states[1523]? with | none => false | some s => goodb P V K states s (hints[1523]?.getD []))=true := by decide +kernel
theorem block1512 : checkRange P V K states hints 1512 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1512
 · exact row1513
 · exact row1514
 · exact row1515
 · exact row1516
 · exact row1517
 · exact row1518
 · exact row1519
 · exact row1520
 · exact row1521
 · exact row1522
 · exact row1523
theorem row1524 : (match states[1524]? with | none => false | some s => goodb P V K states s (hints[1524]?.getD []))=true := by decide +kernel
theorem row1525 : (match states[1525]? with | none => false | some s => goodb P V K states s (hints[1525]?.getD []))=true := by decide +kernel
theorem row1526 : (match states[1526]? with | none => false | some s => goodb P V K states s (hints[1526]?.getD []))=true := by decide +kernel
theorem row1527 : (match states[1527]? with | none => false | some s => goodb P V K states s (hints[1527]?.getD []))=true := by decide +kernel
theorem row1528 : (match states[1528]? with | none => false | some s => goodb P V K states s (hints[1528]?.getD []))=true := by decide +kernel
theorem row1529 : (match states[1529]? with | none => false | some s => goodb P V K states s (hints[1529]?.getD []))=true := by decide +kernel
theorem row1530 : (match states[1530]? with | none => false | some s => goodb P V K states s (hints[1530]?.getD []))=true := by decide +kernel
theorem row1531 : (match states[1531]? with | none => false | some s => goodb P V K states s (hints[1531]?.getD []))=true := by decide +kernel
theorem row1532 : (match states[1532]? with | none => false | some s => goodb P V K states s (hints[1532]?.getD []))=true := by decide +kernel
theorem row1533 : (match states[1533]? with | none => false | some s => goodb P V K states s (hints[1533]?.getD []))=true := by decide +kernel
theorem row1534 : (match states[1534]? with | none => false | some s => goodb P V K states s (hints[1534]?.getD []))=true := by decide +kernel
theorem row1535 : (match states[1535]? with | none => false | some s => goodb P V K states s (hints[1535]?.getD []))=true := by decide +kernel
theorem block1524 : checkRange P V K states hints 1524 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1524
 · exact row1525
 · exact row1526
 · exact row1527
 · exact row1528
 · exact row1529
 · exact row1530
 · exact row1531
 · exact row1532
 · exact row1533
 · exact row1534
 · exact row1535
end Certgen.Case04
