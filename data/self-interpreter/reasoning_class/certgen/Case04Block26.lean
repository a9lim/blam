import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1248 : (match states[1248]? with | none => false | some s => goodb P V K states s (hints[1248]?.getD []))=true := by decide +kernel
theorem row1249 : (match states[1249]? with | none => false | some s => goodb P V K states s (hints[1249]?.getD []))=true := by decide +kernel
theorem row1250 : (match states[1250]? with | none => false | some s => goodb P V K states s (hints[1250]?.getD []))=true := by decide +kernel
theorem row1251 : (match states[1251]? with | none => false | some s => goodb P V K states s (hints[1251]?.getD []))=true := by decide +kernel
theorem row1252 : (match states[1252]? with | none => false | some s => goodb P V K states s (hints[1252]?.getD []))=true := by decide +kernel
theorem row1253 : (match states[1253]? with | none => false | some s => goodb P V K states s (hints[1253]?.getD []))=true := by decide +kernel
theorem row1254 : (match states[1254]? with | none => false | some s => goodb P V K states s (hints[1254]?.getD []))=true := by decide +kernel
theorem row1255 : (match states[1255]? with | none => false | some s => goodb P V K states s (hints[1255]?.getD []))=true := by decide +kernel
theorem row1256 : (match states[1256]? with | none => false | some s => goodb P V K states s (hints[1256]?.getD []))=true := by decide +kernel
theorem row1257 : (match states[1257]? with | none => false | some s => goodb P V K states s (hints[1257]?.getD []))=true := by decide +kernel
theorem row1258 : (match states[1258]? with | none => false | some s => goodb P V K states s (hints[1258]?.getD []))=true := by decide +kernel
theorem row1259 : (match states[1259]? with | none => false | some s => goodb P V K states s (hints[1259]?.getD []))=true := by decide +kernel
theorem block1248 : checkRange P V K states hints 1248 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1248
 · exact row1249
 · exact row1250
 · exact row1251
 · exact row1252
 · exact row1253
 · exact row1254
 · exact row1255
 · exact row1256
 · exact row1257
 · exact row1258
 · exact row1259
theorem row1260 : (match states[1260]? with | none => false | some s => goodb P V K states s (hints[1260]?.getD []))=true := by decide +kernel
theorem row1261 : (match states[1261]? with | none => false | some s => goodb P V K states s (hints[1261]?.getD []))=true := by decide +kernel
theorem row1262 : (match states[1262]? with | none => false | some s => goodb P V K states s (hints[1262]?.getD []))=true := by decide +kernel
theorem row1263 : (match states[1263]? with | none => false | some s => goodb P V K states s (hints[1263]?.getD []))=true := by decide +kernel
theorem row1264 : (match states[1264]? with | none => false | some s => goodb P V K states s (hints[1264]?.getD []))=true := by decide +kernel
theorem row1265 : (match states[1265]? with | none => false | some s => goodb P V K states s (hints[1265]?.getD []))=true := by decide +kernel
theorem row1266 : (match states[1266]? with | none => false | some s => goodb P V K states s (hints[1266]?.getD []))=true := by decide +kernel
theorem row1267 : (match states[1267]? with | none => false | some s => goodb P V K states s (hints[1267]?.getD []))=true := by decide +kernel
theorem row1268 : (match states[1268]? with | none => false | some s => goodb P V K states s (hints[1268]?.getD []))=true := by decide +kernel
theorem row1269 : (match states[1269]? with | none => false | some s => goodb P V K states s (hints[1269]?.getD []))=true := by decide +kernel
theorem row1270 : (match states[1270]? with | none => false | some s => goodb P V K states s (hints[1270]?.getD []))=true := by decide +kernel
theorem row1271 : (match states[1271]? with | none => false | some s => goodb P V K states s (hints[1271]?.getD []))=true := by decide +kernel
theorem block1260 : checkRange P V K states hints 1260 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1260
 · exact row1261
 · exact row1262
 · exact row1263
 · exact row1264
 · exact row1265
 · exact row1266
 · exact row1267
 · exact row1268
 · exact row1269
 · exact row1270
 · exact row1271
theorem row1272 : (match states[1272]? with | none => false | some s => goodb P V K states s (hints[1272]?.getD []))=true := by decide +kernel
theorem row1273 : (match states[1273]? with | none => false | some s => goodb P V K states s (hints[1273]?.getD []))=true := by decide +kernel
theorem row1274 : (match states[1274]? with | none => false | some s => goodb P V K states s (hints[1274]?.getD []))=true := by decide +kernel
theorem row1275 : (match states[1275]? with | none => false | some s => goodb P V K states s (hints[1275]?.getD []))=true := by decide +kernel
theorem row1276 : (match states[1276]? with | none => false | some s => goodb P V K states s (hints[1276]?.getD []))=true := by decide +kernel
theorem row1277 : (match states[1277]? with | none => false | some s => goodb P V K states s (hints[1277]?.getD []))=true := by decide +kernel
theorem row1278 : (match states[1278]? with | none => false | some s => goodb P V K states s (hints[1278]?.getD []))=true := by decide +kernel
theorem row1279 : (match states[1279]? with | none => false | some s => goodb P V K states s (hints[1279]?.getD []))=true := by decide +kernel
theorem row1280 : (match states[1280]? with | none => false | some s => goodb P V K states s (hints[1280]?.getD []))=true := by decide +kernel
theorem row1281 : (match states[1281]? with | none => false | some s => goodb P V K states s (hints[1281]?.getD []))=true := by decide +kernel
theorem row1282 : (match states[1282]? with | none => false | some s => goodb P V K states s (hints[1282]?.getD []))=true := by decide +kernel
theorem row1283 : (match states[1283]? with | none => false | some s => goodb P V K states s (hints[1283]?.getD []))=true := by decide +kernel
theorem block1272 : checkRange P V K states hints 1272 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1272
 · exact row1273
 · exact row1274
 · exact row1275
 · exact row1276
 · exact row1277
 · exact row1278
 · exact row1279
 · exact row1280
 · exact row1281
 · exact row1282
 · exact row1283
theorem row1284 : (match states[1284]? with | none => false | some s => goodb P V K states s (hints[1284]?.getD []))=true := by decide +kernel
theorem row1285 : (match states[1285]? with | none => false | some s => goodb P V K states s (hints[1285]?.getD []))=true := by decide +kernel
theorem row1286 : (match states[1286]? with | none => false | some s => goodb P V K states s (hints[1286]?.getD []))=true := by decide +kernel
theorem row1287 : (match states[1287]? with | none => false | some s => goodb P V K states s (hints[1287]?.getD []))=true := by decide +kernel
theorem row1288 : (match states[1288]? with | none => false | some s => goodb P V K states s (hints[1288]?.getD []))=true := by decide +kernel
theorem row1289 : (match states[1289]? with | none => false | some s => goodb P V K states s (hints[1289]?.getD []))=true := by decide +kernel
theorem row1290 : (match states[1290]? with | none => false | some s => goodb P V K states s (hints[1290]?.getD []))=true := by decide +kernel
theorem row1291 : (match states[1291]? with | none => false | some s => goodb P V K states s (hints[1291]?.getD []))=true := by decide +kernel
theorem row1292 : (match states[1292]? with | none => false | some s => goodb P V K states s (hints[1292]?.getD []))=true := by decide +kernel
theorem row1293 : (match states[1293]? with | none => false | some s => goodb P V K states s (hints[1293]?.getD []))=true := by decide +kernel
theorem row1294 : (match states[1294]? with | none => false | some s => goodb P V K states s (hints[1294]?.getD []))=true := by decide +kernel
theorem row1295 : (match states[1295]? with | none => false | some s => goodb P V K states s (hints[1295]?.getD []))=true := by decide +kernel
theorem block1284 : checkRange P V K states hints 1284 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1284
 · exact row1285
 · exact row1286
 · exact row1287
 · exact row1288
 · exact row1289
 · exact row1290
 · exact row1291
 · exact row1292
 · exact row1293
 · exact row1294
 · exact row1295
end Certgen.Case04
