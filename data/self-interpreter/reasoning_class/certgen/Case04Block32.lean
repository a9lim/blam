import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1536 : (match states[1536]? with | none => false | some s => goodb P V K states s (hints[1536]?.getD []))=true := by decide +kernel
theorem row1537 : (match states[1537]? with | none => false | some s => goodb P V K states s (hints[1537]?.getD []))=true := by decide +kernel
theorem row1538 : (match states[1538]? with | none => false | some s => goodb P V K states s (hints[1538]?.getD []))=true := by decide +kernel
theorem row1539 : (match states[1539]? with | none => false | some s => goodb P V K states s (hints[1539]?.getD []))=true := by decide +kernel
theorem row1540 : (match states[1540]? with | none => false | some s => goodb P V K states s (hints[1540]?.getD []))=true := by decide +kernel
theorem row1541 : (match states[1541]? with | none => false | some s => goodb P V K states s (hints[1541]?.getD []))=true := by decide +kernel
theorem row1542 : (match states[1542]? with | none => false | some s => goodb P V K states s (hints[1542]?.getD []))=true := by decide +kernel
theorem row1543 : (match states[1543]? with | none => false | some s => goodb P V K states s (hints[1543]?.getD []))=true := by decide +kernel
theorem row1544 : (match states[1544]? with | none => false | some s => goodb P V K states s (hints[1544]?.getD []))=true := by decide +kernel
theorem row1545 : (match states[1545]? with | none => false | some s => goodb P V K states s (hints[1545]?.getD []))=true := by decide +kernel
theorem row1546 : (match states[1546]? with | none => false | some s => goodb P V K states s (hints[1546]?.getD []))=true := by decide +kernel
theorem row1547 : (match states[1547]? with | none => false | some s => goodb P V K states s (hints[1547]?.getD []))=true := by decide +kernel
theorem block1536 : checkRange P V K states hints 1536 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1536
 · exact row1537
 · exact row1538
 · exact row1539
 · exact row1540
 · exact row1541
 · exact row1542
 · exact row1543
 · exact row1544
 · exact row1545
 · exact row1546
 · exact row1547
theorem row1548 : (match states[1548]? with | none => false | some s => goodb P V K states s (hints[1548]?.getD []))=true := by decide +kernel
theorem row1549 : (match states[1549]? with | none => false | some s => goodb P V K states s (hints[1549]?.getD []))=true := by decide +kernel
theorem row1550 : (match states[1550]? with | none => false | some s => goodb P V K states s (hints[1550]?.getD []))=true := by decide +kernel
theorem row1551 : (match states[1551]? with | none => false | some s => goodb P V K states s (hints[1551]?.getD []))=true := by decide +kernel
theorem row1552 : (match states[1552]? with | none => false | some s => goodb P V K states s (hints[1552]?.getD []))=true := by decide +kernel
theorem row1553 : (match states[1553]? with | none => false | some s => goodb P V K states s (hints[1553]?.getD []))=true := by decide +kernel
theorem row1554 : (match states[1554]? with | none => false | some s => goodb P V K states s (hints[1554]?.getD []))=true := by decide +kernel
theorem row1555 : (match states[1555]? with | none => false | some s => goodb P V K states s (hints[1555]?.getD []))=true := by decide +kernel
theorem row1556 : (match states[1556]? with | none => false | some s => goodb P V K states s (hints[1556]?.getD []))=true := by decide +kernel
theorem row1557 : (match states[1557]? with | none => false | some s => goodb P V K states s (hints[1557]?.getD []))=true := by decide +kernel
theorem row1558 : (match states[1558]? with | none => false | some s => goodb P V K states s (hints[1558]?.getD []))=true := by decide +kernel
theorem row1559 : (match states[1559]? with | none => false | some s => goodb P V K states s (hints[1559]?.getD []))=true := by decide +kernel
theorem block1548 : checkRange P V K states hints 1548 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1548
 · exact row1549
 · exact row1550
 · exact row1551
 · exact row1552
 · exact row1553
 · exact row1554
 · exact row1555
 · exact row1556
 · exact row1557
 · exact row1558
 · exact row1559
theorem row1560 : (match states[1560]? with | none => false | some s => goodb P V K states s (hints[1560]?.getD []))=true := by decide +kernel
theorem row1561 : (match states[1561]? with | none => false | some s => goodb P V K states s (hints[1561]?.getD []))=true := by decide +kernel
theorem row1562 : (match states[1562]? with | none => false | some s => goodb P V K states s (hints[1562]?.getD []))=true := by decide +kernel
theorem row1563 : (match states[1563]? with | none => false | some s => goodb P V K states s (hints[1563]?.getD []))=true := by decide +kernel
theorem row1564 : (match states[1564]? with | none => false | some s => goodb P V K states s (hints[1564]?.getD []))=true := by decide +kernel
theorem row1565 : (match states[1565]? with | none => false | some s => goodb P V K states s (hints[1565]?.getD []))=true := by decide +kernel
theorem row1566 : (match states[1566]? with | none => false | some s => goodb P V K states s (hints[1566]?.getD []))=true := by decide +kernel
theorem row1567 : (match states[1567]? with | none => false | some s => goodb P V K states s (hints[1567]?.getD []))=true := by decide +kernel
theorem row1568 : (match states[1568]? with | none => false | some s => goodb P V K states s (hints[1568]?.getD []))=true := by decide +kernel
theorem row1569 : (match states[1569]? with | none => false | some s => goodb P V K states s (hints[1569]?.getD []))=true := by decide +kernel
theorem row1570 : (match states[1570]? with | none => false | some s => goodb P V K states s (hints[1570]?.getD []))=true := by decide +kernel
theorem row1571 : (match states[1571]? with | none => false | some s => goodb P V K states s (hints[1571]?.getD []))=true := by decide +kernel
theorem block1560 : checkRange P V K states hints 1560 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1560
 · exact row1561
 · exact row1562
 · exact row1563
 · exact row1564
 · exact row1565
 · exact row1566
 · exact row1567
 · exact row1568
 · exact row1569
 · exact row1570
 · exact row1571
theorem row1572 : (match states[1572]? with | none => false | some s => goodb P V K states s (hints[1572]?.getD []))=true := by decide +kernel
theorem row1573 : (match states[1573]? with | none => false | some s => goodb P V K states s (hints[1573]?.getD []))=true := by decide +kernel
theorem row1574 : (match states[1574]? with | none => false | some s => goodb P V K states s (hints[1574]?.getD []))=true := by decide +kernel
theorem row1575 : (match states[1575]? with | none => false | some s => goodb P V K states s (hints[1575]?.getD []))=true := by decide +kernel
theorem row1576 : (match states[1576]? with | none => false | some s => goodb P V K states s (hints[1576]?.getD []))=true := by decide +kernel
theorem row1577 : (match states[1577]? with | none => false | some s => goodb P V K states s (hints[1577]?.getD []))=true := by decide +kernel
theorem row1578 : (match states[1578]? with | none => false | some s => goodb P V K states s (hints[1578]?.getD []))=true := by decide +kernel
theorem row1579 : (match states[1579]? with | none => false | some s => goodb P V K states s (hints[1579]?.getD []))=true := by decide +kernel
theorem row1580 : (match states[1580]? with | none => false | some s => goodb P V K states s (hints[1580]?.getD []))=true := by decide +kernel
theorem row1581 : (match states[1581]? with | none => false | some s => goodb P V K states s (hints[1581]?.getD []))=true := by decide +kernel
theorem row1582 : (match states[1582]? with | none => false | some s => goodb P V K states s (hints[1582]?.getD []))=true := by decide +kernel
theorem row1583 : (match states[1583]? with | none => false | some s => goodb P V K states s (hints[1583]?.getD []))=true := by decide +kernel
theorem block1572 : checkRange P V K states hints 1572 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1572
 · exact row1573
 · exact row1574
 · exact row1575
 · exact row1576
 · exact row1577
 · exact row1578
 · exact row1579
 · exact row1580
 · exact row1581
 · exact row1582
 · exact row1583
end Certgen.Case04
