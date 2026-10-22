import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q2AllMissing
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r1098 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1098 : ¬ Reader r1098 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1098

def r1099 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1099 : ¬ Reader r1099 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1099

def r1100 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.var 2))))
theorem reject1100 : ¬ Reader r1100 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1100

def r1101 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 2))) (.var 2)))
theorem reject1101 : ¬ Reader r1101 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1101

def r1102 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject1102 : ¬ Reader r1102 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject1102

def r1103 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject1103 : ¬ Reader r1103 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject1103

def r1104 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject1104 : ¬ Reader r1104 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1104

def r1105 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject1105 : ¬ Reader r1105 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1105

def r1106 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject1106 : ¬ Reader r1106 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject1106

def r1107 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject1107 : ¬ Reader r1107 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject1107

def r1108 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject1108 : ¬ Reader r1108 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject1108

def r1109 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject1109 : ¬ Reader r1109 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject1109

def r1110 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject1110 : ¬ Reader r1110 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject1110

def r1111 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject1111 : ¬ Reader r1111 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject1111

def r1112 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject1112 : ¬ Reader r1112 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1112

def r1113 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject1113 : ¬ Reader r1113 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1113

def r1114 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 1))))
theorem reject1114 : ¬ Reader r1114 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1114

def r1115 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 2) (.var 1))))
theorem reject1115 : ¬ Reader r1115 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1115

def r1116 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 1) (.var 2))))
theorem reject1116 : ¬ Reader r1116 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1116

def r1117 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))) (.var 1)))
theorem reject1117 : ¬ Reader r1117 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1117

def r1118 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))) (.var 1)))
theorem reject1118 : ¬ Reader r1118 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1118

def r1119 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 1))) (.var 2)))
theorem reject1119 : ¬ Reader r1119 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1119

def r1120 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.lam (.var 3)))))
theorem reject1120 : ¬ Reader r1120 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1120

def r1121 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.lam (.var 0)))))
theorem reject1121 : ¬ Reader r1121 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1121

def r1122 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.lam (.var 0)) (.var 1))))
theorem reject1122 : ¬ Reader r1122 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1122

def r1123 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 2) (.lam (.var 0)))))
theorem reject1123 : ¬ Reader r1123 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1123

def r1124 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.lam (.var 0)) (.var 2))))
theorem reject1124 : ¬ Reader r1124 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1124

def r1125 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1125 : ¬ Reader r1125 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1125

def r1126 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1126 : ¬ Reader r1126 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1126

def r1127 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))) (.lam (.var 0))))
theorem reject1127 : ¬ Reader r1127 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1127

def r1128 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))) (.lam (.var 0))))
theorem reject1128 : ¬ Reader r1128 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1128

def r1129 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.lam (.var 0)))) (.var 1)))
theorem reject1129 : ¬ Reader r1129 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1129

def r1130 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.lam (.var 0)) (.var 2))) (.var 1)))
theorem reject1130 : ¬ Reader r1130 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1130

def r1131 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 3)))) (.var 2)))
theorem reject1131 : ¬ Reader r1131 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1131

def r1132 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.lam (.var 0)))) (.var 2)))
theorem reject1132 : ¬ Reader r1132 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1132

def r1133 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.lam (.var 0)) (.var 1))) (.var 2)))
theorem reject1133 : ¬ Reader r1133 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1133

def r1134 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1134 : ¬ Reader r1134 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject1134

def r1135 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1135 : ¬ Reader r1135 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject1135

def r1136 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.var 2)) (.var 1)))
theorem reject1136 : ¬ Reader r1136 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1136

def r1137 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.var 1)) (.var 2)))
theorem reject1137 : ¬ Reader r1137 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1137

def r1140 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)) (.var 0)))
theorem reject1140 : ¬ Reader r1140 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject1140

def r1141 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 0)) (.var 2)))
theorem reject1141 : ¬ Reader r1141 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1141

def r1144 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)) (.var 1)))
theorem reject1144 : ¬ Reader r1144 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1144

def r1145 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 1)) (.var 2)))
theorem reject1145 : ¬ Reader r1145 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1145

def r1148 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)) (.lam (.var 0))))
theorem reject1148 : ¬ Reader r1148 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1148

def r1149 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.lam (.var 0))) (.var 2)))
theorem reject1149 : ¬ Reader r1149 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1149

def r1150 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1150 : ¬ Reader r1150 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1150

def r1151 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1151 : ¬ Reader r1151 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1151

def r1152 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.var 2)) (.var 1)))
theorem reject1152 : ¬ Reader r1152 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1152

def r1153 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.var 1)) (.var 2)))
theorem reject1153 : ¬ Reader r1153 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1153

def r1154 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1154 : ¬ Reader r1154 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1154

def r1155 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1155 : ¬ Reader r1155 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1155

def r1156 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1156 : ¬ Reader r1156 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1156

def r1157 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1157 : ¬ Reader r1157 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1157

def r1158 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1158 : ¬ Reader r1158 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1158

def r1159 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1159 : ¬ Reader r1159 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1159

def r1160 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1160 : ¬ Reader r1160 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject1160

def r1161 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1161 : ¬ Reader r1161 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject1161

def r1162 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 0)))
theorem reject1162 : ¬ Reader r1162 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject1162

def r1163 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 2)))
theorem reject1163 : ¬ Reader r1163 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1163

def r1164 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1164 : ¬ Reader r1164 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1164

def r1165 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1165 : ¬ Reader r1165 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1165

def r1166 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1166 : ¬ Reader r1166 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1166

def r1167 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1167 : ¬ Reader r1167 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1167

def r1602 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))) (.var 2)) (.var 1)))
theorem reject1602 : ¬ Reader r1602 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject1602

def r1603 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))) (.var 1)) (.var 2)))
theorem reject1603 : ¬ Reader r1603 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject1603

def r1608 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1608 : ¬ Reader r1608 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1608

def r1609 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1609 : ¬ Reader r1609 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1609

def r1626 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 1)))
theorem reject1626 : ¬ Reader r1626 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1626

def r1627 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 2)))
theorem reject1627 : ¬ Reader r1627 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1627

def r1638 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1638 : ¬ Reader r1638 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1638

def r1639 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1639 : ¬ Reader r1639 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1639

def r1668 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)) (.var 1)))
theorem reject1668 : ¬ Reader r1668 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1668

def r1669 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 1)) (.var 2)))
theorem reject1669 : ¬ Reader r1669 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1669

def r1942 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)) (.var 1)))
theorem reject1942 : ¬ Reader r1942 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1942

def r1943 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 1)) (.var 2)))
theorem reject1943 : ¬ Reader r1943 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1943

def r1944 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0))) (.var 2)) (.var 1)))
theorem reject1944 : ¬ Reader r1944 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1944

def r1945 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0))) (.var 1)) (.var 2)))
theorem reject1945 : ¬ Reader r1945 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1945

def r1948 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)) (.var 0)))
theorem reject1948 : ¬ Reader r1948 := by
  exact absent_reduct true 10 1 (by decide) (by decide)
#print axioms reject1948

def r1949 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 0)) (.var 2)))
theorem reject1949 : ¬ Reader r1949 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject1949

def r1982 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 1)))
theorem reject1982 : ¬ Reader r1982 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1982

def r1983 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 2)))
theorem reject1983 : ¬ Reader r1983 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1983

def r1988 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)) (.var 1)))
theorem reject1988 : ¬ Reader r1988 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1988

def r1989 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 1)) (.var 2)))
theorem reject1989 : ¬ Reader r1989 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject1989

end Blc.FirstopNonlinear.Q2AllMissing
