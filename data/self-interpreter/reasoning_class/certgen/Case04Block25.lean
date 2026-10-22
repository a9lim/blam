import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1200 : (match states[1200]? with | none => false | some s => goodb P V K states s (hints[1200]?.getD []))=true := by decide +kernel
theorem row1201 : (match states[1201]? with | none => false | some s => goodb P V K states s (hints[1201]?.getD []))=true := by decide +kernel
theorem row1202 : (match states[1202]? with | none => false | some s => goodb P V K states s (hints[1202]?.getD []))=true := by decide +kernel
theorem row1203 : (match states[1203]? with | none => false | some s => goodb P V K states s (hints[1203]?.getD []))=true := by decide +kernel
theorem row1204 : (match states[1204]? with | none => false | some s => goodb P V K states s (hints[1204]?.getD []))=true := by decide +kernel
theorem row1205 : (match states[1205]? with | none => false | some s => goodb P V K states s (hints[1205]?.getD []))=true := by decide +kernel
theorem row1206 : (match states[1206]? with | none => false | some s => goodb P V K states s (hints[1206]?.getD []))=true := by decide +kernel
theorem row1207 : (match states[1207]? with | none => false | some s => goodb P V K states s (hints[1207]?.getD []))=true := by decide +kernel
theorem row1208 : (match states[1208]? with | none => false | some s => goodb P V K states s (hints[1208]?.getD []))=true := by decide +kernel
theorem row1209 : (match states[1209]? with | none => false | some s => goodb P V K states s (hints[1209]?.getD []))=true := by decide +kernel
theorem row1210 : (match states[1210]? with | none => false | some s => goodb P V K states s (hints[1210]?.getD []))=true := by decide +kernel
theorem row1211 : (match states[1211]? with | none => false | some s => goodb P V K states s (hints[1211]?.getD []))=true := by decide +kernel
theorem block1200 : checkRange P V K states hints 1200 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1200
 · exact row1201
 · exact row1202
 · exact row1203
 · exact row1204
 · exact row1205
 · exact row1206
 · exact row1207
 · exact row1208
 · exact row1209
 · exact row1210
 · exact row1211
theorem row1212 : (match states[1212]? with | none => false | some s => goodb P V K states s (hints[1212]?.getD []))=true := by decide +kernel
theorem row1213 : (match states[1213]? with | none => false | some s => goodb P V K states s (hints[1213]?.getD []))=true := by decide +kernel
theorem row1214 : (match states[1214]? with | none => false | some s => goodb P V K states s (hints[1214]?.getD []))=true := by decide +kernel
theorem row1215 : (match states[1215]? with | none => false | some s => goodb P V K states s (hints[1215]?.getD []))=true := by decide +kernel
theorem row1216 : (match states[1216]? with | none => false | some s => goodb P V K states s (hints[1216]?.getD []))=true := by decide +kernel
theorem row1217 : (match states[1217]? with | none => false | some s => goodb P V K states s (hints[1217]?.getD []))=true := by decide +kernel
theorem row1218 : (match states[1218]? with | none => false | some s => goodb P V K states s (hints[1218]?.getD []))=true := by decide +kernel
theorem row1219 : (match states[1219]? with | none => false | some s => goodb P V K states s (hints[1219]?.getD []))=true := by decide +kernel
theorem row1220 : (match states[1220]? with | none => false | some s => goodb P V K states s (hints[1220]?.getD []))=true := by decide +kernel
theorem row1221 : (match states[1221]? with | none => false | some s => goodb P V K states s (hints[1221]?.getD []))=true := by decide +kernel
theorem row1222 : (match states[1222]? with | none => false | some s => goodb P V K states s (hints[1222]?.getD []))=true := by decide +kernel
theorem row1223 : (match states[1223]? with | none => false | some s => goodb P V K states s (hints[1223]?.getD []))=true := by decide +kernel
theorem block1212 : checkRange P V K states hints 1212 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1212
 · exact row1213
 · exact row1214
 · exact row1215
 · exact row1216
 · exact row1217
 · exact row1218
 · exact row1219
 · exact row1220
 · exact row1221
 · exact row1222
 · exact row1223
theorem row1224 : (match states[1224]? with | none => false | some s => goodb P V K states s (hints[1224]?.getD []))=true := by decide +kernel
theorem row1225 : (match states[1225]? with | none => false | some s => goodb P V K states s (hints[1225]?.getD []))=true := by decide +kernel
theorem row1226 : (match states[1226]? with | none => false | some s => goodb P V K states s (hints[1226]?.getD []))=true := by decide +kernel
theorem row1227 : (match states[1227]? with | none => false | some s => goodb P V K states s (hints[1227]?.getD []))=true := by decide +kernel
theorem row1228 : (match states[1228]? with | none => false | some s => goodb P V K states s (hints[1228]?.getD []))=true := by decide +kernel
theorem row1229 : (match states[1229]? with | none => false | some s => goodb P V K states s (hints[1229]?.getD []))=true := by decide +kernel
theorem row1230 : (match states[1230]? with | none => false | some s => goodb P V K states s (hints[1230]?.getD []))=true := by decide +kernel
theorem row1231 : (match states[1231]? with | none => false | some s => goodb P V K states s (hints[1231]?.getD []))=true := by decide +kernel
theorem row1232 : (match states[1232]? with | none => false | some s => goodb P V K states s (hints[1232]?.getD []))=true := by decide +kernel
theorem row1233 : (match states[1233]? with | none => false | some s => goodb P V K states s (hints[1233]?.getD []))=true := by decide +kernel
theorem row1234 : (match states[1234]? with | none => false | some s => goodb P V K states s (hints[1234]?.getD []))=true := by decide +kernel
theorem row1235 : (match states[1235]? with | none => false | some s => goodb P V K states s (hints[1235]?.getD []))=true := by decide +kernel
theorem block1224 : checkRange P V K states hints 1224 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1224
 · exact row1225
 · exact row1226
 · exact row1227
 · exact row1228
 · exact row1229
 · exact row1230
 · exact row1231
 · exact row1232
 · exact row1233
 · exact row1234
 · exact row1235
theorem row1236 : (match states[1236]? with | none => false | some s => goodb P V K states s (hints[1236]?.getD []))=true := by decide +kernel
theorem row1237 : (match states[1237]? with | none => false | some s => goodb P V K states s (hints[1237]?.getD []))=true := by decide +kernel
theorem row1238 : (match states[1238]? with | none => false | some s => goodb P V K states s (hints[1238]?.getD []))=true := by decide +kernel
theorem row1239 : (match states[1239]? with | none => false | some s => goodb P V K states s (hints[1239]?.getD []))=true := by decide +kernel
theorem row1240 : (match states[1240]? with | none => false | some s => goodb P V K states s (hints[1240]?.getD []))=true := by decide +kernel
theorem row1241 : (match states[1241]? with | none => false | some s => goodb P V K states s (hints[1241]?.getD []))=true := by decide +kernel
theorem row1242 : (match states[1242]? with | none => false | some s => goodb P V K states s (hints[1242]?.getD []))=true := by decide +kernel
theorem row1243 : (match states[1243]? with | none => false | some s => goodb P V K states s (hints[1243]?.getD []))=true := by decide +kernel
theorem row1244 : (match states[1244]? with | none => false | some s => goodb P V K states s (hints[1244]?.getD []))=true := by decide +kernel
theorem row1245 : (match states[1245]? with | none => false | some s => goodb P V K states s (hints[1245]?.getD []))=true := by decide +kernel
theorem row1246 : (match states[1246]? with | none => false | some s => goodb P V K states s (hints[1246]?.getD []))=true := by decide +kernel
theorem row1247 : (match states[1247]? with | none => false | some s => goodb P V K states s (hints[1247]?.getD []))=true := by decide +kernel
theorem block1236 : checkRange P V K states hints 1236 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1236
 · exact row1237
 · exact row1238
 · exact row1239
 · exact row1240
 · exact row1241
 · exact row1242
 · exact row1243
 · exact row1244
 · exact row1245
 · exact row1246
 · exact row1247
end Certgen.Case04
