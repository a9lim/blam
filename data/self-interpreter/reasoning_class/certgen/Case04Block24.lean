import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1152 : (match states[1152]? with | none => false | some s => goodb P V K states s (hints[1152]?.getD []))=true := by decide +kernel
theorem row1153 : (match states[1153]? with | none => false | some s => goodb P V K states s (hints[1153]?.getD []))=true := by decide +kernel
theorem row1154 : (match states[1154]? with | none => false | some s => goodb P V K states s (hints[1154]?.getD []))=true := by decide +kernel
theorem row1155 : (match states[1155]? with | none => false | some s => goodb P V K states s (hints[1155]?.getD []))=true := by decide +kernel
theorem row1156 : (match states[1156]? with | none => false | some s => goodb P V K states s (hints[1156]?.getD []))=true := by decide +kernel
theorem row1157 : (match states[1157]? with | none => false | some s => goodb P V K states s (hints[1157]?.getD []))=true := by decide +kernel
theorem row1158 : (match states[1158]? with | none => false | some s => goodb P V K states s (hints[1158]?.getD []))=true := by decide +kernel
theorem row1159 : (match states[1159]? with | none => false | some s => goodb P V K states s (hints[1159]?.getD []))=true := by decide +kernel
theorem row1160 : (match states[1160]? with | none => false | some s => goodb P V K states s (hints[1160]?.getD []))=true := by decide +kernel
theorem row1161 : (match states[1161]? with | none => false | some s => goodb P V K states s (hints[1161]?.getD []))=true := by decide +kernel
theorem row1162 : (match states[1162]? with | none => false | some s => goodb P V K states s (hints[1162]?.getD []))=true := by decide +kernel
theorem row1163 : (match states[1163]? with | none => false | some s => goodb P V K states s (hints[1163]?.getD []))=true := by decide +kernel
theorem block1152 : checkRange P V K states hints 1152 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1152
 · exact row1153
 · exact row1154
 · exact row1155
 · exact row1156
 · exact row1157
 · exact row1158
 · exact row1159
 · exact row1160
 · exact row1161
 · exact row1162
 · exact row1163
theorem row1164 : (match states[1164]? with | none => false | some s => goodb P V K states s (hints[1164]?.getD []))=true := by decide +kernel
theorem row1165 : (match states[1165]? with | none => false | some s => goodb P V K states s (hints[1165]?.getD []))=true := by decide +kernel
theorem row1166 : (match states[1166]? with | none => false | some s => goodb P V K states s (hints[1166]?.getD []))=true := by decide +kernel
theorem row1167 : (match states[1167]? with | none => false | some s => goodb P V K states s (hints[1167]?.getD []))=true := by decide +kernel
theorem row1168 : (match states[1168]? with | none => false | some s => goodb P V K states s (hints[1168]?.getD []))=true := by decide +kernel
theorem row1169 : (match states[1169]? with | none => false | some s => goodb P V K states s (hints[1169]?.getD []))=true := by decide +kernel
theorem row1170 : (match states[1170]? with | none => false | some s => goodb P V K states s (hints[1170]?.getD []))=true := by decide +kernel
theorem row1171 : (match states[1171]? with | none => false | some s => goodb P V K states s (hints[1171]?.getD []))=true := by decide +kernel
theorem row1172 : (match states[1172]? with | none => false | some s => goodb P V K states s (hints[1172]?.getD []))=true := by decide +kernel
theorem row1173 : (match states[1173]? with | none => false | some s => goodb P V K states s (hints[1173]?.getD []))=true := by decide +kernel
theorem row1174 : (match states[1174]? with | none => false | some s => goodb P V K states s (hints[1174]?.getD []))=true := by decide +kernel
theorem row1175 : (match states[1175]? with | none => false | some s => goodb P V K states s (hints[1175]?.getD []))=true := by decide +kernel
theorem block1164 : checkRange P V K states hints 1164 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1164
 · exact row1165
 · exact row1166
 · exact row1167
 · exact row1168
 · exact row1169
 · exact row1170
 · exact row1171
 · exact row1172
 · exact row1173
 · exact row1174
 · exact row1175
theorem row1176 : (match states[1176]? with | none => false | some s => goodb P V K states s (hints[1176]?.getD []))=true := by decide +kernel
theorem row1177 : (match states[1177]? with | none => false | some s => goodb P V K states s (hints[1177]?.getD []))=true := by decide +kernel
theorem row1178 : (match states[1178]? with | none => false | some s => goodb P V K states s (hints[1178]?.getD []))=true := by decide +kernel
theorem row1179 : (match states[1179]? with | none => false | some s => goodb P V K states s (hints[1179]?.getD []))=true := by decide +kernel
theorem row1180 : (match states[1180]? with | none => false | some s => goodb P V K states s (hints[1180]?.getD []))=true := by decide +kernel
theorem row1181 : (match states[1181]? with | none => false | some s => goodb P V K states s (hints[1181]?.getD []))=true := by decide +kernel
theorem row1182 : (match states[1182]? with | none => false | some s => goodb P V K states s (hints[1182]?.getD []))=true := by decide +kernel
theorem row1183 : (match states[1183]? with | none => false | some s => goodb P V K states s (hints[1183]?.getD []))=true := by decide +kernel
theorem row1184 : (match states[1184]? with | none => false | some s => goodb P V K states s (hints[1184]?.getD []))=true := by decide +kernel
theorem row1185 : (match states[1185]? with | none => false | some s => goodb P V K states s (hints[1185]?.getD []))=true := by decide +kernel
theorem row1186 : (match states[1186]? with | none => false | some s => goodb P V K states s (hints[1186]?.getD []))=true := by decide +kernel
theorem row1187 : (match states[1187]? with | none => false | some s => goodb P V K states s (hints[1187]?.getD []))=true := by decide +kernel
theorem block1176 : checkRange P V K states hints 1176 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1176
 · exact row1177
 · exact row1178
 · exact row1179
 · exact row1180
 · exact row1181
 · exact row1182
 · exact row1183
 · exact row1184
 · exact row1185
 · exact row1186
 · exact row1187
theorem row1188 : (match states[1188]? with | none => false | some s => goodb P V K states s (hints[1188]?.getD []))=true := by decide +kernel
theorem row1189 : (match states[1189]? with | none => false | some s => goodb P V K states s (hints[1189]?.getD []))=true := by decide +kernel
theorem row1190 : (match states[1190]? with | none => false | some s => goodb P V K states s (hints[1190]?.getD []))=true := by decide +kernel
theorem row1191 : (match states[1191]? with | none => false | some s => goodb P V K states s (hints[1191]?.getD []))=true := by decide +kernel
theorem row1192 : (match states[1192]? with | none => false | some s => goodb P V K states s (hints[1192]?.getD []))=true := by decide +kernel
theorem row1193 : (match states[1193]? with | none => false | some s => goodb P V K states s (hints[1193]?.getD []))=true := by decide +kernel
theorem row1194 : (match states[1194]? with | none => false | some s => goodb P V K states s (hints[1194]?.getD []))=true := by decide +kernel
theorem row1195 : (match states[1195]? with | none => false | some s => goodb P V K states s (hints[1195]?.getD []))=true := by decide +kernel
theorem row1196 : (match states[1196]? with | none => false | some s => goodb P V K states s (hints[1196]?.getD []))=true := by decide +kernel
theorem row1197 : (match states[1197]? with | none => false | some s => goodb P V K states s (hints[1197]?.getD []))=true := by decide +kernel
theorem row1198 : (match states[1198]? with | none => false | some s => goodb P V K states s (hints[1198]?.getD []))=true := by decide +kernel
theorem row1199 : (match states[1199]? with | none => false | some s => goodb P V K states s (hints[1199]?.getD []))=true := by decide +kernel
theorem block1188 : checkRange P V K states hints 1188 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1188
 · exact row1189
 · exact row1190
 · exact row1191
 · exact row1192
 · exact row1193
 · exact row1194
 · exact row1195
 · exact row1196
 · exact row1197
 · exact row1198
 · exact row1199
end Certgen.Case04
