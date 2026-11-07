import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1344 : (match states[1344]? with | none => false | some s => goodb P V K states s (hints[1344]?.getD []))=true := by decide +kernel
theorem row1345 : (match states[1345]? with | none => false | some s => goodb P V K states s (hints[1345]?.getD []))=true := by decide +kernel
theorem row1346 : (match states[1346]? with | none => false | some s => goodb P V K states s (hints[1346]?.getD []))=true := by decide +kernel
theorem row1347 : (match states[1347]? with | none => false | some s => goodb P V K states s (hints[1347]?.getD []))=true := by decide +kernel
theorem row1348 : (match states[1348]? with | none => false | some s => goodb P V K states s (hints[1348]?.getD []))=true := by decide +kernel
theorem row1349 : (match states[1349]? with | none => false | some s => goodb P V K states s (hints[1349]?.getD []))=true := by decide +kernel
theorem row1350 : (match states[1350]? with | none => false | some s => goodb P V K states s (hints[1350]?.getD []))=true := by decide +kernel
theorem row1351 : (match states[1351]? with | none => false | some s => goodb P V K states s (hints[1351]?.getD []))=true := by decide +kernel
theorem row1352 : (match states[1352]? with | none => false | some s => goodb P V K states s (hints[1352]?.getD []))=true := by decide +kernel
theorem row1353 : (match states[1353]? with | none => false | some s => goodb P V K states s (hints[1353]?.getD []))=true := by decide +kernel
theorem row1354 : (match states[1354]? with | none => false | some s => goodb P V K states s (hints[1354]?.getD []))=true := by decide +kernel
theorem row1355 : (match states[1355]? with | none => false | some s => goodb P V K states s (hints[1355]?.getD []))=true := by decide +kernel
theorem block1344 : checkRange P V K states hints 1344 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1344
 · exact row1345
 · exact row1346
 · exact row1347
 · exact row1348
 · exact row1349
 · exact row1350
 · exact row1351
 · exact row1352
 · exact row1353
 · exact row1354
 · exact row1355
theorem row1356 : (match states[1356]? with | none => false | some s => goodb P V K states s (hints[1356]?.getD []))=true := by decide +kernel
theorem row1357 : (match states[1357]? with | none => false | some s => goodb P V K states s (hints[1357]?.getD []))=true := by decide +kernel
theorem row1358 : (match states[1358]? with | none => false | some s => goodb P V K states s (hints[1358]?.getD []))=true := by decide +kernel
theorem row1359 : (match states[1359]? with | none => false | some s => goodb P V K states s (hints[1359]?.getD []))=true := by decide +kernel
theorem row1360 : (match states[1360]? with | none => false | some s => goodb P V K states s (hints[1360]?.getD []))=true := by decide +kernel
theorem row1361 : (match states[1361]? with | none => false | some s => goodb P V K states s (hints[1361]?.getD []))=true := by decide +kernel
theorem row1362 : (match states[1362]? with | none => false | some s => goodb P V K states s (hints[1362]?.getD []))=true := by decide +kernel
theorem row1363 : (match states[1363]? with | none => false | some s => goodb P V K states s (hints[1363]?.getD []))=true := by decide +kernel
theorem row1364 : (match states[1364]? with | none => false | some s => goodb P V K states s (hints[1364]?.getD []))=true := by decide +kernel
theorem row1365 : (match states[1365]? with | none => false | some s => goodb P V K states s (hints[1365]?.getD []))=true := by decide +kernel
theorem row1366 : (match states[1366]? with | none => false | some s => goodb P V K states s (hints[1366]?.getD []))=true := by decide +kernel
theorem row1367 : (match states[1367]? with | none => false | some s => goodb P V K states s (hints[1367]?.getD []))=true := by decide +kernel
theorem block1356 : checkRange P V K states hints 1356 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1356
 · exact row1357
 · exact row1358
 · exact row1359
 · exact row1360
 · exact row1361
 · exact row1362
 · exact row1363
 · exact row1364
 · exact row1365
 · exact row1366
 · exact row1367
theorem row1368 : (match states[1368]? with | none => false | some s => goodb P V K states s (hints[1368]?.getD []))=true := by decide +kernel
theorem row1369 : (match states[1369]? with | none => false | some s => goodb P V K states s (hints[1369]?.getD []))=true := by decide +kernel
theorem row1370 : (match states[1370]? with | none => false | some s => goodb P V K states s (hints[1370]?.getD []))=true := by decide +kernel
theorem row1371 : (match states[1371]? with | none => false | some s => goodb P V K states s (hints[1371]?.getD []))=true := by decide +kernel
theorem row1372 : (match states[1372]? with | none => false | some s => goodb P V K states s (hints[1372]?.getD []))=true := by decide +kernel
theorem row1373 : (match states[1373]? with | none => false | some s => goodb P V K states s (hints[1373]?.getD []))=true := by decide +kernel
theorem row1374 : (match states[1374]? with | none => false | some s => goodb P V K states s (hints[1374]?.getD []))=true := by decide +kernel
theorem row1375 : (match states[1375]? with | none => false | some s => goodb P V K states s (hints[1375]?.getD []))=true := by decide +kernel
theorem row1376 : (match states[1376]? with | none => false | some s => goodb P V K states s (hints[1376]?.getD []))=true := by decide +kernel
theorem row1377 : (match states[1377]? with | none => false | some s => goodb P V K states s (hints[1377]?.getD []))=true := by decide +kernel
theorem row1378 : (match states[1378]? with | none => false | some s => goodb P V K states s (hints[1378]?.getD []))=true := by decide +kernel
theorem row1379 : (match states[1379]? with | none => false | some s => goodb P V K states s (hints[1379]?.getD []))=true := by decide +kernel
theorem block1368 : checkRange P V K states hints 1368 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1368
 · exact row1369
 · exact row1370
 · exact row1371
 · exact row1372
 · exact row1373
 · exact row1374
 · exact row1375
 · exact row1376
 · exact row1377
 · exact row1378
 · exact row1379
theorem row1380 : (match states[1380]? with | none => false | some s => goodb P V K states s (hints[1380]?.getD []))=true := by decide +kernel
theorem row1381 : (match states[1381]? with | none => false | some s => goodb P V K states s (hints[1381]?.getD []))=true := by decide +kernel
theorem row1382 : (match states[1382]? with | none => false | some s => goodb P V K states s (hints[1382]?.getD []))=true := by decide +kernel
theorem row1383 : (match states[1383]? with | none => false | some s => goodb P V K states s (hints[1383]?.getD []))=true := by decide +kernel
theorem row1384 : (match states[1384]? with | none => false | some s => goodb P V K states s (hints[1384]?.getD []))=true := by decide +kernel
theorem row1385 : (match states[1385]? with | none => false | some s => goodb P V K states s (hints[1385]?.getD []))=true := by decide +kernel
theorem row1386 : (match states[1386]? with | none => false | some s => goodb P V K states s (hints[1386]?.getD []))=true := by decide +kernel
theorem row1387 : (match states[1387]? with | none => false | some s => goodb P V K states s (hints[1387]?.getD []))=true := by decide +kernel
theorem row1388 : (match states[1388]? with | none => false | some s => goodb P V K states s (hints[1388]?.getD []))=true := by decide +kernel
theorem row1389 : (match states[1389]? with | none => false | some s => goodb P V K states s (hints[1389]?.getD []))=true := by decide +kernel
theorem row1390 : (match states[1390]? with | none => false | some s => goodb P V K states s (hints[1390]?.getD []))=true := by decide +kernel
theorem row1391 : (match states[1391]? with | none => false | some s => goodb P V K states s (hints[1391]?.getD []))=true := by decide +kernel
theorem block1380 : checkRange P V K states hints 1380 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1380
 · exact row1381
 · exact row1382
 · exact row1383
 · exact row1384
 · exact row1385
 · exact row1386
 · exact row1387
 · exact row1388
 · exact row1389
 · exact row1390
 · exact row1391
end Certgen.Case04
