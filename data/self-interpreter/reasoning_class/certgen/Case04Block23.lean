import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1104 : (match states[1104]? with | none => false | some s => goodb P V K states s (hints[1104]?.getD []))=true := by decide +kernel
theorem row1105 : (match states[1105]? with | none => false | some s => goodb P V K states s (hints[1105]?.getD []))=true := by decide +kernel
theorem row1106 : (match states[1106]? with | none => false | some s => goodb P V K states s (hints[1106]?.getD []))=true := by decide +kernel
theorem row1107 : (match states[1107]? with | none => false | some s => goodb P V K states s (hints[1107]?.getD []))=true := by decide +kernel
theorem row1108 : (match states[1108]? with | none => false | some s => goodb P V K states s (hints[1108]?.getD []))=true := by decide +kernel
theorem row1109 : (match states[1109]? with | none => false | some s => goodb P V K states s (hints[1109]?.getD []))=true := by decide +kernel
theorem row1110 : (match states[1110]? with | none => false | some s => goodb P V K states s (hints[1110]?.getD []))=true := by decide +kernel
theorem row1111 : (match states[1111]? with | none => false | some s => goodb P V K states s (hints[1111]?.getD []))=true := by decide +kernel
theorem row1112 : (match states[1112]? with | none => false | some s => goodb P V K states s (hints[1112]?.getD []))=true := by decide +kernel
theorem row1113 : (match states[1113]? with | none => false | some s => goodb P V K states s (hints[1113]?.getD []))=true := by decide +kernel
theorem row1114 : (match states[1114]? with | none => false | some s => goodb P V K states s (hints[1114]?.getD []))=true := by decide +kernel
theorem row1115 : (match states[1115]? with | none => false | some s => goodb P V K states s (hints[1115]?.getD []))=true := by decide +kernel
theorem block1104 : checkRange P V K states hints 1104 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1104
 · exact row1105
 · exact row1106
 · exact row1107
 · exact row1108
 · exact row1109
 · exact row1110
 · exact row1111
 · exact row1112
 · exact row1113
 · exact row1114
 · exact row1115
theorem row1116 : (match states[1116]? with | none => false | some s => goodb P V K states s (hints[1116]?.getD []))=true := by decide +kernel
theorem row1117 : (match states[1117]? with | none => false | some s => goodb P V K states s (hints[1117]?.getD []))=true := by decide +kernel
theorem row1118 : (match states[1118]? with | none => false | some s => goodb P V K states s (hints[1118]?.getD []))=true := by decide +kernel
theorem row1119 : (match states[1119]? with | none => false | some s => goodb P V K states s (hints[1119]?.getD []))=true := by decide +kernel
theorem row1120 : (match states[1120]? with | none => false | some s => goodb P V K states s (hints[1120]?.getD []))=true := by decide +kernel
theorem row1121 : (match states[1121]? with | none => false | some s => goodb P V K states s (hints[1121]?.getD []))=true := by decide +kernel
theorem row1122 : (match states[1122]? with | none => false | some s => goodb P V K states s (hints[1122]?.getD []))=true := by decide +kernel
theorem row1123 : (match states[1123]? with | none => false | some s => goodb P V K states s (hints[1123]?.getD []))=true := by decide +kernel
theorem row1124 : (match states[1124]? with | none => false | some s => goodb P V K states s (hints[1124]?.getD []))=true := by decide +kernel
theorem row1125 : (match states[1125]? with | none => false | some s => goodb P V K states s (hints[1125]?.getD []))=true := by decide +kernel
theorem row1126 : (match states[1126]? with | none => false | some s => goodb P V K states s (hints[1126]?.getD []))=true := by decide +kernel
theorem row1127 : (match states[1127]? with | none => false | some s => goodb P V K states s (hints[1127]?.getD []))=true := by decide +kernel
theorem block1116 : checkRange P V K states hints 1116 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1116
 · exact row1117
 · exact row1118
 · exact row1119
 · exact row1120
 · exact row1121
 · exact row1122
 · exact row1123
 · exact row1124
 · exact row1125
 · exact row1126
 · exact row1127
theorem row1128 : (match states[1128]? with | none => false | some s => goodb P V K states s (hints[1128]?.getD []))=true := by decide +kernel
theorem row1129 : (match states[1129]? with | none => false | some s => goodb P V K states s (hints[1129]?.getD []))=true := by decide +kernel
theorem row1130 : (match states[1130]? with | none => false | some s => goodb P V K states s (hints[1130]?.getD []))=true := by decide +kernel
theorem row1131 : (match states[1131]? with | none => false | some s => goodb P V K states s (hints[1131]?.getD []))=true := by decide +kernel
theorem row1132 : (match states[1132]? with | none => false | some s => goodb P V K states s (hints[1132]?.getD []))=true := by decide +kernel
theorem row1133 : (match states[1133]? with | none => false | some s => goodb P V K states s (hints[1133]?.getD []))=true := by decide +kernel
theorem row1134 : (match states[1134]? with | none => false | some s => goodb P V K states s (hints[1134]?.getD []))=true := by decide +kernel
theorem row1135 : (match states[1135]? with | none => false | some s => goodb P V K states s (hints[1135]?.getD []))=true := by decide +kernel
theorem row1136 : (match states[1136]? with | none => false | some s => goodb P V K states s (hints[1136]?.getD []))=true := by decide +kernel
theorem row1137 : (match states[1137]? with | none => false | some s => goodb P V K states s (hints[1137]?.getD []))=true := by decide +kernel
theorem row1138 : (match states[1138]? with | none => false | some s => goodb P V K states s (hints[1138]?.getD []))=true := by decide +kernel
theorem row1139 : (match states[1139]? with | none => false | some s => goodb P V K states s (hints[1139]?.getD []))=true := by decide +kernel
theorem block1128 : checkRange P V K states hints 1128 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1128
 · exact row1129
 · exact row1130
 · exact row1131
 · exact row1132
 · exact row1133
 · exact row1134
 · exact row1135
 · exact row1136
 · exact row1137
 · exact row1138
 · exact row1139
theorem row1140 : (match states[1140]? with | none => false | some s => goodb P V K states s (hints[1140]?.getD []))=true := by decide +kernel
theorem row1141 : (match states[1141]? with | none => false | some s => goodb P V K states s (hints[1141]?.getD []))=true := by decide +kernel
theorem row1142 : (match states[1142]? with | none => false | some s => goodb P V K states s (hints[1142]?.getD []))=true := by decide +kernel
theorem row1143 : (match states[1143]? with | none => false | some s => goodb P V K states s (hints[1143]?.getD []))=true := by decide +kernel
theorem row1144 : (match states[1144]? with | none => false | some s => goodb P V K states s (hints[1144]?.getD []))=true := by decide +kernel
theorem row1145 : (match states[1145]? with | none => false | some s => goodb P V K states s (hints[1145]?.getD []))=true := by decide +kernel
theorem row1146 : (match states[1146]? with | none => false | some s => goodb P V K states s (hints[1146]?.getD []))=true := by decide +kernel
theorem row1147 : (match states[1147]? with | none => false | some s => goodb P V K states s (hints[1147]?.getD []))=true := by decide +kernel
theorem row1148 : (match states[1148]? with | none => false | some s => goodb P V K states s (hints[1148]?.getD []))=true := by decide +kernel
theorem row1149 : (match states[1149]? with | none => false | some s => goodb P V K states s (hints[1149]?.getD []))=true := by decide +kernel
theorem row1150 : (match states[1150]? with | none => false | some s => goodb P V K states s (hints[1150]?.getD []))=true := by decide +kernel
theorem row1151 : (match states[1151]? with | none => false | some s => goodb P V K states s (hints[1151]?.getD []))=true := by decide +kernel
theorem block1140 : checkRange P V K states hints 1140 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1140
 · exact row1141
 · exact row1142
 · exact row1143
 · exact row1144
 · exact row1145
 · exact row1146
 · exact row1147
 · exact row1148
 · exact row1149
 · exact row1150
 · exact row1151
end Certgen.Case04
