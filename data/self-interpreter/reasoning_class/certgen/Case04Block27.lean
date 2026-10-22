import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1296 : (match states[1296]? with | none => false | some s => goodb P V K states s (hints[1296]?.getD []))=true := by decide +kernel
theorem row1297 : (match states[1297]? with | none => false | some s => goodb P V K states s (hints[1297]?.getD []))=true := by decide +kernel
theorem row1298 : (match states[1298]? with | none => false | some s => goodb P V K states s (hints[1298]?.getD []))=true := by decide +kernel
theorem row1299 : (match states[1299]? with | none => false | some s => goodb P V K states s (hints[1299]?.getD []))=true := by decide +kernel
theorem row1300 : (match states[1300]? with | none => false | some s => goodb P V K states s (hints[1300]?.getD []))=true := by decide +kernel
theorem row1301 : (match states[1301]? with | none => false | some s => goodb P V K states s (hints[1301]?.getD []))=true := by decide +kernel
theorem row1302 : (match states[1302]? with | none => false | some s => goodb P V K states s (hints[1302]?.getD []))=true := by decide +kernel
theorem row1303 : (match states[1303]? with | none => false | some s => goodb P V K states s (hints[1303]?.getD []))=true := by decide +kernel
theorem row1304 : (match states[1304]? with | none => false | some s => goodb P V K states s (hints[1304]?.getD []))=true := by decide +kernel
theorem row1305 : (match states[1305]? with | none => false | some s => goodb P V K states s (hints[1305]?.getD []))=true := by decide +kernel
theorem row1306 : (match states[1306]? with | none => false | some s => goodb P V K states s (hints[1306]?.getD []))=true := by decide +kernel
theorem row1307 : (match states[1307]? with | none => false | some s => goodb P V K states s (hints[1307]?.getD []))=true := by decide +kernel
theorem block1296 : checkRange P V K states hints 1296 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1296
 · exact row1297
 · exact row1298
 · exact row1299
 · exact row1300
 · exact row1301
 · exact row1302
 · exact row1303
 · exact row1304
 · exact row1305
 · exact row1306
 · exact row1307
theorem row1308 : (match states[1308]? with | none => false | some s => goodb P V K states s (hints[1308]?.getD []))=true := by decide +kernel
theorem row1309 : (match states[1309]? with | none => false | some s => goodb P V K states s (hints[1309]?.getD []))=true := by decide +kernel
theorem row1310 : (match states[1310]? with | none => false | some s => goodb P V K states s (hints[1310]?.getD []))=true := by decide +kernel
theorem row1311 : (match states[1311]? with | none => false | some s => goodb P V K states s (hints[1311]?.getD []))=true := by decide +kernel
theorem row1312 : (match states[1312]? with | none => false | some s => goodb P V K states s (hints[1312]?.getD []))=true := by decide +kernel
theorem row1313 : (match states[1313]? with | none => false | some s => goodb P V K states s (hints[1313]?.getD []))=true := by decide +kernel
theorem row1314 : (match states[1314]? with | none => false | some s => goodb P V K states s (hints[1314]?.getD []))=true := by decide +kernel
theorem row1315 : (match states[1315]? with | none => false | some s => goodb P V K states s (hints[1315]?.getD []))=true := by decide +kernel
theorem row1316 : (match states[1316]? with | none => false | some s => goodb P V K states s (hints[1316]?.getD []))=true := by decide +kernel
theorem row1317 : (match states[1317]? with | none => false | some s => goodb P V K states s (hints[1317]?.getD []))=true := by decide +kernel
theorem row1318 : (match states[1318]? with | none => false | some s => goodb P V K states s (hints[1318]?.getD []))=true := by decide +kernel
theorem row1319 : (match states[1319]? with | none => false | some s => goodb P V K states s (hints[1319]?.getD []))=true := by decide +kernel
theorem block1308 : checkRange P V K states hints 1308 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1308
 · exact row1309
 · exact row1310
 · exact row1311
 · exact row1312
 · exact row1313
 · exact row1314
 · exact row1315
 · exact row1316
 · exact row1317
 · exact row1318
 · exact row1319
theorem row1320 : (match states[1320]? with | none => false | some s => goodb P V K states s (hints[1320]?.getD []))=true := by decide +kernel
theorem row1321 : (match states[1321]? with | none => false | some s => goodb P V K states s (hints[1321]?.getD []))=true := by decide +kernel
theorem row1322 : (match states[1322]? with | none => false | some s => goodb P V K states s (hints[1322]?.getD []))=true := by decide +kernel
theorem row1323 : (match states[1323]? with | none => false | some s => goodb P V K states s (hints[1323]?.getD []))=true := by decide +kernel
theorem row1324 : (match states[1324]? with | none => false | some s => goodb P V K states s (hints[1324]?.getD []))=true := by decide +kernel
theorem row1325 : (match states[1325]? with | none => false | some s => goodb P V K states s (hints[1325]?.getD []))=true := by decide +kernel
theorem row1326 : (match states[1326]? with | none => false | some s => goodb P V K states s (hints[1326]?.getD []))=true := by decide +kernel
theorem row1327 : (match states[1327]? with | none => false | some s => goodb P V K states s (hints[1327]?.getD []))=true := by decide +kernel
theorem row1328 : (match states[1328]? with | none => false | some s => goodb P V K states s (hints[1328]?.getD []))=true := by decide +kernel
theorem row1329 : (match states[1329]? with | none => false | some s => goodb P V K states s (hints[1329]?.getD []))=true := by decide +kernel
theorem row1330 : (match states[1330]? with | none => false | some s => goodb P V K states s (hints[1330]?.getD []))=true := by decide +kernel
theorem row1331 : (match states[1331]? with | none => false | some s => goodb P V K states s (hints[1331]?.getD []))=true := by decide +kernel
theorem block1320 : checkRange P V K states hints 1320 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1320
 · exact row1321
 · exact row1322
 · exact row1323
 · exact row1324
 · exact row1325
 · exact row1326
 · exact row1327
 · exact row1328
 · exact row1329
 · exact row1330
 · exact row1331
theorem row1332 : (match states[1332]? with | none => false | some s => goodb P V K states s (hints[1332]?.getD []))=true := by decide +kernel
theorem row1333 : (match states[1333]? with | none => false | some s => goodb P V K states s (hints[1333]?.getD []))=true := by decide +kernel
theorem row1334 : (match states[1334]? with | none => false | some s => goodb P V K states s (hints[1334]?.getD []))=true := by decide +kernel
theorem row1335 : (match states[1335]? with | none => false | some s => goodb P V K states s (hints[1335]?.getD []))=true := by decide +kernel
theorem row1336 : (match states[1336]? with | none => false | some s => goodb P V K states s (hints[1336]?.getD []))=true := by decide +kernel
theorem row1337 : (match states[1337]? with | none => false | some s => goodb P V K states s (hints[1337]?.getD []))=true := by decide +kernel
theorem row1338 : (match states[1338]? with | none => false | some s => goodb P V K states s (hints[1338]?.getD []))=true := by decide +kernel
theorem row1339 : (match states[1339]? with | none => false | some s => goodb P V K states s (hints[1339]?.getD []))=true := by decide +kernel
theorem row1340 : (match states[1340]? with | none => false | some s => goodb P V K states s (hints[1340]?.getD []))=true := by decide +kernel
theorem row1341 : (match states[1341]? with | none => false | some s => goodb P V K states s (hints[1341]?.getD []))=true := by decide +kernel
theorem row1342 : (match states[1342]? with | none => false | some s => goodb P V K states s (hints[1342]?.getD []))=true := by decide +kernel
theorem row1343 : (match states[1343]? with | none => false | some s => goodb P V K states s (hints[1343]?.getD []))=true := by decide +kernel
theorem block1332 : checkRange P V K states hints 1332 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1332
 · exact row1333
 · exact row1334
 · exact row1335
 · exact row1336
 · exact row1337
 · exact row1338
 · exact row1339
 · exact row1340
 · exact row1341
 · exact row1342
 · exact row1343
end Certgen.Case04
