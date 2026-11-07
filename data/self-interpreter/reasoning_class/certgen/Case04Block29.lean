import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1392 : (match states[1392]? with | none => false | some s => goodb P V K states s (hints[1392]?.getD []))=true := by decide +kernel
theorem row1393 : (match states[1393]? with | none => false | some s => goodb P V K states s (hints[1393]?.getD []))=true := by decide +kernel
theorem row1394 : (match states[1394]? with | none => false | some s => goodb P V K states s (hints[1394]?.getD []))=true := by decide +kernel
theorem row1395 : (match states[1395]? with | none => false | some s => goodb P V K states s (hints[1395]?.getD []))=true := by decide +kernel
theorem row1396 : (match states[1396]? with | none => false | some s => goodb P V K states s (hints[1396]?.getD []))=true := by decide +kernel
theorem row1397 : (match states[1397]? with | none => false | some s => goodb P V K states s (hints[1397]?.getD []))=true := by decide +kernel
theorem row1398 : (match states[1398]? with | none => false | some s => goodb P V K states s (hints[1398]?.getD []))=true := by decide +kernel
theorem row1399 : (match states[1399]? with | none => false | some s => goodb P V K states s (hints[1399]?.getD []))=true := by decide +kernel
theorem row1400 : (match states[1400]? with | none => false | some s => goodb P V K states s (hints[1400]?.getD []))=true := by decide +kernel
theorem row1401 : (match states[1401]? with | none => false | some s => goodb P V K states s (hints[1401]?.getD []))=true := by decide +kernel
theorem row1402 : (match states[1402]? with | none => false | some s => goodb P V K states s (hints[1402]?.getD []))=true := by decide +kernel
theorem row1403 : (match states[1403]? with | none => false | some s => goodb P V K states s (hints[1403]?.getD []))=true := by decide +kernel
theorem block1392 : checkRange P V K states hints 1392 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1392
 · exact row1393
 · exact row1394
 · exact row1395
 · exact row1396
 · exact row1397
 · exact row1398
 · exact row1399
 · exact row1400
 · exact row1401
 · exact row1402
 · exact row1403
theorem row1404 : (match states[1404]? with | none => false | some s => goodb P V K states s (hints[1404]?.getD []))=true := by decide +kernel
theorem row1405 : (match states[1405]? with | none => false | some s => goodb P V K states s (hints[1405]?.getD []))=true := by decide +kernel
theorem row1406 : (match states[1406]? with | none => false | some s => goodb P V K states s (hints[1406]?.getD []))=true := by decide +kernel
theorem row1407 : (match states[1407]? with | none => false | some s => goodb P V K states s (hints[1407]?.getD []))=true := by decide +kernel
theorem row1408 : (match states[1408]? with | none => false | some s => goodb P V K states s (hints[1408]?.getD []))=true := by decide +kernel
theorem row1409 : (match states[1409]? with | none => false | some s => goodb P V K states s (hints[1409]?.getD []))=true := by decide +kernel
theorem row1410 : (match states[1410]? with | none => false | some s => goodb P V K states s (hints[1410]?.getD []))=true := by decide +kernel
theorem row1411 : (match states[1411]? with | none => false | some s => goodb P V K states s (hints[1411]?.getD []))=true := by decide +kernel
theorem row1412 : (match states[1412]? with | none => false | some s => goodb P V K states s (hints[1412]?.getD []))=true := by decide +kernel
theorem row1413 : (match states[1413]? with | none => false | some s => goodb P V K states s (hints[1413]?.getD []))=true := by decide +kernel
theorem row1414 : (match states[1414]? with | none => false | some s => goodb P V K states s (hints[1414]?.getD []))=true := by decide +kernel
theorem row1415 : (match states[1415]? with | none => false | some s => goodb P V K states s (hints[1415]?.getD []))=true := by decide +kernel
theorem block1404 : checkRange P V K states hints 1404 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1404
 · exact row1405
 · exact row1406
 · exact row1407
 · exact row1408
 · exact row1409
 · exact row1410
 · exact row1411
 · exact row1412
 · exact row1413
 · exact row1414
 · exact row1415
theorem row1416 : (match states[1416]? with | none => false | some s => goodb P V K states s (hints[1416]?.getD []))=true := by decide +kernel
theorem row1417 : (match states[1417]? with | none => false | some s => goodb P V K states s (hints[1417]?.getD []))=true := by decide +kernel
theorem row1418 : (match states[1418]? with | none => false | some s => goodb P V K states s (hints[1418]?.getD []))=true := by decide +kernel
theorem row1419 : (match states[1419]? with | none => false | some s => goodb P V K states s (hints[1419]?.getD []))=true := by decide +kernel
theorem row1420 : (match states[1420]? with | none => false | some s => goodb P V K states s (hints[1420]?.getD []))=true := by decide +kernel
theorem row1421 : (match states[1421]? with | none => false | some s => goodb P V K states s (hints[1421]?.getD []))=true := by decide +kernel
theorem row1422 : (match states[1422]? with | none => false | some s => goodb P V K states s (hints[1422]?.getD []))=true := by decide +kernel
theorem row1423 : (match states[1423]? with | none => false | some s => goodb P V K states s (hints[1423]?.getD []))=true := by decide +kernel
theorem row1424 : (match states[1424]? with | none => false | some s => goodb P V K states s (hints[1424]?.getD []))=true := by decide +kernel
theorem row1425 : (match states[1425]? with | none => false | some s => goodb P V K states s (hints[1425]?.getD []))=true := by decide +kernel
theorem row1426 : (match states[1426]? with | none => false | some s => goodb P V K states s (hints[1426]?.getD []))=true := by decide +kernel
theorem row1427 : (match states[1427]? with | none => false | some s => goodb P V K states s (hints[1427]?.getD []))=true := by decide +kernel
theorem block1416 : checkRange P V K states hints 1416 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1416
 · exact row1417
 · exact row1418
 · exact row1419
 · exact row1420
 · exact row1421
 · exact row1422
 · exact row1423
 · exact row1424
 · exact row1425
 · exact row1426
 · exact row1427
theorem row1428 : (match states[1428]? with | none => false | some s => goodb P V K states s (hints[1428]?.getD []))=true := by decide +kernel
theorem row1429 : (match states[1429]? with | none => false | some s => goodb P V K states s (hints[1429]?.getD []))=true := by decide +kernel
theorem row1430 : (match states[1430]? with | none => false | some s => goodb P V K states s (hints[1430]?.getD []))=true := by decide +kernel
theorem row1431 : (match states[1431]? with | none => false | some s => goodb P V K states s (hints[1431]?.getD []))=true := by decide +kernel
theorem row1432 : (match states[1432]? with | none => false | some s => goodb P V K states s (hints[1432]?.getD []))=true := by decide +kernel
theorem row1433 : (match states[1433]? with | none => false | some s => goodb P V K states s (hints[1433]?.getD []))=true := by decide +kernel
theorem row1434 : (match states[1434]? with | none => false | some s => goodb P V K states s (hints[1434]?.getD []))=true := by decide +kernel
theorem row1435 : (match states[1435]? with | none => false | some s => goodb P V K states s (hints[1435]?.getD []))=true := by decide +kernel
theorem row1436 : (match states[1436]? with | none => false | some s => goodb P V K states s (hints[1436]?.getD []))=true := by decide +kernel
theorem row1437 : (match states[1437]? with | none => false | some s => goodb P V K states s (hints[1437]?.getD []))=true := by decide +kernel
theorem row1438 : (match states[1438]? with | none => false | some s => goodb P V K states s (hints[1438]?.getD []))=true := by decide +kernel
theorem row1439 : (match states[1439]? with | none => false | some s => goodb P V K states s (hints[1439]?.getD []))=true := by decide +kernel
theorem block1428 : checkRange P V K states hints 1428 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1428
 · exact row1429
 · exact row1430
 · exact row1431
 · exact row1432
 · exact row1433
 · exact row1434
 · exact row1435
 · exact row1436
 · exact row1437
 · exact row1438
 · exact row1439
end Certgen.Case04
