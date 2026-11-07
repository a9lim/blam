import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1584 : (match states[1584]? with | none => false | some s => goodb P V K states s (hints[1584]?.getD []))=true := by decide +kernel
theorem row1585 : (match states[1585]? with | none => false | some s => goodb P V K states s (hints[1585]?.getD []))=true := by decide +kernel
theorem row1586 : (match states[1586]? with | none => false | some s => goodb P V K states s (hints[1586]?.getD []))=true := by decide +kernel
theorem row1587 : (match states[1587]? with | none => false | some s => goodb P V K states s (hints[1587]?.getD []))=true := by decide +kernel
theorem row1588 : (match states[1588]? with | none => false | some s => goodb P V K states s (hints[1588]?.getD []))=true := by decide +kernel
theorem row1589 : (match states[1589]? with | none => false | some s => goodb P V K states s (hints[1589]?.getD []))=true := by decide +kernel
theorem row1590 : (match states[1590]? with | none => false | some s => goodb P V K states s (hints[1590]?.getD []))=true := by decide +kernel
theorem row1591 : (match states[1591]? with | none => false | some s => goodb P V K states s (hints[1591]?.getD []))=true := by decide +kernel
theorem row1592 : (match states[1592]? with | none => false | some s => goodb P V K states s (hints[1592]?.getD []))=true := by decide +kernel
theorem row1593 : (match states[1593]? with | none => false | some s => goodb P V K states s (hints[1593]?.getD []))=true := by decide +kernel
theorem row1594 : (match states[1594]? with | none => false | some s => goodb P V K states s (hints[1594]?.getD []))=true := by decide +kernel
theorem row1595 : (match states[1595]? with | none => false | some s => goodb P V K states s (hints[1595]?.getD []))=true := by decide +kernel
theorem block1584 : checkRange P V K states hints 1584 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1584
 · exact row1585
 · exact row1586
 · exact row1587
 · exact row1588
 · exact row1589
 · exact row1590
 · exact row1591
 · exact row1592
 · exact row1593
 · exact row1594
 · exact row1595
theorem row1596 : (match states[1596]? with | none => false | some s => goodb P V K states s (hints[1596]?.getD []))=true := by decide +kernel
theorem row1597 : (match states[1597]? with | none => false | some s => goodb P V K states s (hints[1597]?.getD []))=true := by decide +kernel
theorem row1598 : (match states[1598]? with | none => false | some s => goodb P V K states s (hints[1598]?.getD []))=true := by decide +kernel
theorem row1599 : (match states[1599]? with | none => false | some s => goodb P V K states s (hints[1599]?.getD []))=true := by decide +kernel
theorem row1600 : (match states[1600]? with | none => false | some s => goodb P V K states s (hints[1600]?.getD []))=true := by decide +kernel
theorem row1601 : (match states[1601]? with | none => false | some s => goodb P V K states s (hints[1601]?.getD []))=true := by decide +kernel
theorem row1602 : (match states[1602]? with | none => false | some s => goodb P V K states s (hints[1602]?.getD []))=true := by decide +kernel
theorem row1603 : (match states[1603]? with | none => false | some s => goodb P V K states s (hints[1603]?.getD []))=true := by decide +kernel
theorem row1604 : (match states[1604]? with | none => false | some s => goodb P V K states s (hints[1604]?.getD []))=true := by decide +kernel
theorem row1605 : (match states[1605]? with | none => false | some s => goodb P V K states s (hints[1605]?.getD []))=true := by decide +kernel
theorem row1606 : (match states[1606]? with | none => false | some s => goodb P V K states s (hints[1606]?.getD []))=true := by decide +kernel
theorem row1607 : (match states[1607]? with | none => false | some s => goodb P V K states s (hints[1607]?.getD []))=true := by decide +kernel
theorem block1596 : checkRange P V K states hints 1596 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1596
 · exact row1597
 · exact row1598
 · exact row1599
 · exact row1600
 · exact row1601
 · exact row1602
 · exact row1603
 · exact row1604
 · exact row1605
 · exact row1606
 · exact row1607
theorem row1608 : (match states[1608]? with | none => false | some s => goodb P V K states s (hints[1608]?.getD []))=true := by decide +kernel
theorem row1609 : (match states[1609]? with | none => false | some s => goodb P V K states s (hints[1609]?.getD []))=true := by decide +kernel
theorem row1610 : (match states[1610]? with | none => false | some s => goodb P V K states s (hints[1610]?.getD []))=true := by decide +kernel
theorem row1611 : (match states[1611]? with | none => false | some s => goodb P V K states s (hints[1611]?.getD []))=true := by decide +kernel
theorem row1612 : (match states[1612]? with | none => false | some s => goodb P V K states s (hints[1612]?.getD []))=true := by decide +kernel
theorem row1613 : (match states[1613]? with | none => false | some s => goodb P V K states s (hints[1613]?.getD []))=true := by decide +kernel
theorem row1614 : (match states[1614]? with | none => false | some s => goodb P V K states s (hints[1614]?.getD []))=true := by decide +kernel
theorem row1615 : (match states[1615]? with | none => false | some s => goodb P V K states s (hints[1615]?.getD []))=true := by decide +kernel
theorem row1616 : (match states[1616]? with | none => false | some s => goodb P V K states s (hints[1616]?.getD []))=true := by decide +kernel
theorem row1617 : (match states[1617]? with | none => false | some s => goodb P V K states s (hints[1617]?.getD []))=true := by decide +kernel
theorem row1618 : (match states[1618]? with | none => false | some s => goodb P V K states s (hints[1618]?.getD []))=true := by decide +kernel
theorem row1619 : (match states[1619]? with | none => false | some s => goodb P V K states s (hints[1619]?.getD []))=true := by decide +kernel
theorem block1608 : checkRange P V K states hints 1608 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1608
 · exact row1609
 · exact row1610
 · exact row1611
 · exact row1612
 · exact row1613
 · exact row1614
 · exact row1615
 · exact row1616
 · exact row1617
 · exact row1618
 · exact row1619
theorem row1620 : (match states[1620]? with | none => false | some s => goodb P V K states s (hints[1620]?.getD []))=true := by decide +kernel
theorem row1621 : (match states[1621]? with | none => false | some s => goodb P V K states s (hints[1621]?.getD []))=true := by decide +kernel
theorem row1622 : (match states[1622]? with | none => false | some s => goodb P V K states s (hints[1622]?.getD []))=true := by decide +kernel
theorem row1623 : (match states[1623]? with | none => false | some s => goodb P V K states s (hints[1623]?.getD []))=true := by decide +kernel
theorem row1624 : (match states[1624]? with | none => false | some s => goodb P V K states s (hints[1624]?.getD []))=true := by decide +kernel
theorem row1625 : (match states[1625]? with | none => false | some s => goodb P V K states s (hints[1625]?.getD []))=true := by decide +kernel
theorem row1626 : (match states[1626]? with | none => false | some s => goodb P V K states s (hints[1626]?.getD []))=true := by decide +kernel
theorem row1627 : (match states[1627]? with | none => false | some s => goodb P V K states s (hints[1627]?.getD []))=true := by decide +kernel
theorem row1628 : (match states[1628]? with | none => false | some s => goodb P V K states s (hints[1628]?.getD []))=true := by decide +kernel
theorem row1629 : (match states[1629]? with | none => false | some s => goodb P V K states s (hints[1629]?.getD []))=true := by decide +kernel
theorem row1630 : (match states[1630]? with | none => false | some s => goodb P V K states s (hints[1630]?.getD []))=true := by decide +kernel
theorem row1631 : (match states[1631]? with | none => false | some s => goodb P V K states s (hints[1631]?.getD []))=true := by decide +kernel
theorem block1620 : checkRange P V K states hints 1620 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1620
 · exact row1621
 · exact row1622
 · exact row1623
 · exact row1624
 · exact row1625
 · exact row1626
 · exact row1627
 · exact row1628
 · exact row1629
 · exact row1630
 · exact row1631
end Certgen.Case04
