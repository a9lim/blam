import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1NestedMissing
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r1048 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1048 : ¬ Reader r1048 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject1048

def r1049 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1049 : ¬ Reader r1049 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject1049

def r1050 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1050 : ¬ Reader r1050 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1050

def r1051 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1051 : ¬ Reader r1051 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1051

def r1053 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1053 : ¬ Reader r1053 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1053

def r1056 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1056 : ¬ Reader r1056 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject1056

def r1057 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1057 : ¬ Reader r1057 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject1057

def r1060 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject1060 : ¬ Reader r1060 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1060

def r1061 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject1061 : ¬ Reader r1061 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1061

def r1064 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1064 : ¬ Reader r1064 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1064

def r1065 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1065 : ¬ Reader r1065 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1065

def r1066 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1066 : ¬ Reader r1066 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1066

def r1067 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1067 : ¬ Reader r1067 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1067

def r1068 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject1068 : ¬ Reader r1068 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1068

def r1069 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject1069 : ¬ Reader r1069 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1069

def r1070 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 2)))) (.var 2)))
theorem reject1070 : ¬ Reader r1070 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1070

def r1073 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)))) (.var 2)))
theorem reject1073 : ¬ Reader r1073 := by
  exact absent_reduct true 14 3 (by decide) (by decide)
#print axioms reject1073

def r1074 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1074 : ¬ Reader r1074 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1074

def r1076 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1076 : ¬ Reader r1076 := by
  exact absent_reduct true 14 3 (by decide) (by decide)
#print axioms reject1076

def r1078 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1078 : ¬ Reader r1078 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1078

def r1080 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1080 : ¬ Reader r1080 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1080

def r1082 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1082 : ¬ Reader r1082 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1082

def r1086 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject1086 : ¬ Reader r1086 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1086

def r1088 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject1088 : ¬ Reader r1088 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1088

def r1090 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1090 : ¬ Reader r1090 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject1090

def r1092 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 0))) (.var 1))) (.var 2)))
theorem reject1092 : ¬ Reader r1092 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1092

def r1095 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)))) (.var 2)))
theorem reject1095 : ¬ Reader r1095 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject1095

def r1096 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.lam (.var 0)))) (.var 2)))
theorem reject1096 : ¬ Reader r1096 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1096

def r1097 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 3))))) (.var 2)))
theorem reject1097 : ¬ Reader r1097 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1097

def r1099 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.var 1) (.lam (.var 0))))) (.var 2)))
theorem reject1099 : ¬ Reader r1099 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1099

def r1101 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.lam (.var 0)) (.var 1)))) (.var 2)))
theorem reject1101 : ¬ Reader r1101 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1101

def r1103 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1103 : ¬ Reader r1103 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1103

def r1105 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1105 : ¬ Reader r1105 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1105

def r1107 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1107 : ¬ Reader r1107 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1107

def r1109 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1109 : ¬ Reader r1109 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1109

def r1111 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1111 : ¬ Reader r1111 := by
  exact absent_reduct true 14 3 (by decide) (by decide)
#print axioms reject1111

def r1112 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1112 : ¬ Reader r1112 := by
  exact absent_reduct true 14 3 (by decide) (by decide)
#print axioms reject1112

def r1113 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.var 2)))
theorem reject1113 : ¬ Reader r1113 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1113

def r1115 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1115 : ¬ Reader r1115 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1115

def r1117 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1117 : ¬ Reader r1117 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1117

def r1567 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2)))))) (.var 1))) (.var 2)))
theorem reject1567 : ¬ Reader r1567 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1567

def r1603 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1603 : ¬ Reader r1603 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1603

def r1633 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject1633 : ¬ Reader r1633 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1633

def r2167 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject2167 : ¬ Reader r2167 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject2167

def r2168 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject2168 : ¬ Reader r2168 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject2168

def r2169 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2169 : ¬ Reader r2169 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2169

def r2170 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2170 : ¬ Reader r2170 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2170

def r2172 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject2172 : ¬ Reader r2172 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2172

def r2175 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject2175 : ¬ Reader r2175 := by
  exact absent_reduct true 10 1 (by decide) (by decide)
#print axioms reject2175

def r2176 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject2176 : ¬ Reader r2176 := by
  exact absent_reduct true 10 1 (by decide) (by decide)
#print axioms reject2176

def r2177 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 2)))) (.var 2)))
theorem reject2177 : ¬ Reader r2177 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2177

def r2180 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)))) (.var 2)))
theorem reject2180 : ¬ Reader r2180 := by
  exact absent_reduct true 13 3 (by decide) (by decide)
#print axioms reject2180

def r2181 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject2181 : ¬ Reader r2181 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject2181

def r2185 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2185 : ¬ Reader r2185 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject2185

def r2187 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2187 : ¬ Reader r2187 := by
  exact absent_reduct true 13 3 (by decide) (by decide)
#print axioms reject2187

def r2189 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject2189 : ¬ Reader r2189 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject2189

def r2191 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2191 : ¬ Reader r2191 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2191

def r2193 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2193 : ¬ Reader r2193 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2193

def r2195 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject2195 : ¬ Reader r2195 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject2195

def r2197 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject2197 : ¬ Reader r2197 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject2197

def r2199 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject2199 : ¬ Reader r2199 := by
  exact absent_reduct true 10 3 (by decide) (by decide)
#print axioms reject2199

def r2306 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))) (.var 1))) (.var 2)))
theorem reject2306 : ¬ Reader r2306 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject2306

def r2312 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2312 : ¬ Reader r2312 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2312

def r2345 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject2345 : ¬ Reader r2345 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2345

def r2346 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject2346 : ¬ Reader r2346 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2346

def r2355 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2355 : ¬ Reader r2355 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject2355

def r2428 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2428 : ¬ Reader r2428 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject2428

def r2436 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2436 : ¬ Reader r2436 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject2436

def r2447 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject2447 : ¬ Reader r2447 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2447

def r2448 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject2448 : ¬ Reader r2448 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2448

def r2450 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2450 : ¬ Reader r2450 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2450

def r2455 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 2)))) (.var 2)))
theorem reject2455 : ¬ Reader r2455 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2455

def r2465 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2465 : ¬ Reader r2465 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject2465

def r2477 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2477 : ¬ Reader r2477 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2477

def r2479 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2479 : ¬ Reader r2479 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2479

def r2481 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2481 : ¬ Reader r2481 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2481

def r2483 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2483 : ¬ Reader r2483 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2483

def r2485 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 1))) (.var 2)))
theorem reject2485 : ¬ Reader r2485 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2485

def r2487 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2487 : ¬ Reader r2487 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2487

def r2489 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2489 : ¬ Reader r2489 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2489

def r2491 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2491 : ¬ Reader r2491 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2491

def r2493 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 1))) (.var 2)))
theorem reject2493 : ¬ Reader r2493 := by
  exact absent_reduct true 5 3 (by decide) (by decide)
#print axioms reject2493

end Blc.FirstopNonlinear.Q1NestedMissing
