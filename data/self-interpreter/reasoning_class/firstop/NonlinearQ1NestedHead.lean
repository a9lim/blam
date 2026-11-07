import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1NestedHead
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r72 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject72 : ¬ Reader r72 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject72

def r74 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject74 : ¬ Reader r74 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject75 : ¬ Reader r75 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject75

def r78 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject78 : ¬ Reader r78 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject78

def r79 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject79 : ¬ Reader r79 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject79

def r82 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject82 : ¬ Reader r82 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject83 : ¬ Reader r83 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject83

def r86 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 1)))))
theorem reject86 : ¬ Reader r86 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 1)) (.var 2))))
theorem reject87 : ¬ Reader r87 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject87

def r90 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 0))))))
theorem reject90 : ¬ Reader r90 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject91 : ¬ Reader r91 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject91

def r92 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject92 : ¬ Reader r92 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject92

def r93 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.var 2)))))
theorem reject93 : ¬ Reader r93 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject93

def r94 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 0))))
theorem reject94 : ¬ Reader r94 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject94

def r95 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 0))))
theorem reject95 : ¬ Reader r95 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject95

def r96 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 0))) (.var 2))))
theorem reject96 : ¬ Reader r96 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject96

def r97 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject97 : ¬ Reader r97 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject97

def r106 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject106 : ¬ Reader r106 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject106

def r107 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject107 : ¬ Reader r107 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject107

def r110 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 1))))))
theorem reject110 : ¬ Reader r110 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject110

def r111 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 1))) (.var 2))))
theorem reject111 : ¬ Reader r111 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject111

def r114 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject114 : ¬ Reader r114 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject114

def r115 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject115 : ¬ Reader r115 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject115

def r116 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject116 : ¬ Reader r116 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject116

def r117 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject117 : ¬ Reader r117 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject117

def r118 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject118 : ¬ Reader r118 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject118

def r119 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject119 : ¬ Reader r119 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject119

def r120 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject120 : ¬ Reader r120 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject120

def r121 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject121 : ¬ Reader r121 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject121

def r122 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject122 : ¬ Reader r122 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject122

def r123 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject123 : ¬ Reader r123 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject123

def r124 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject124 : ¬ Reader r124 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject125 : ¬ Reader r125 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject125

def r138 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 2))))))
theorem reject138 : ¬ Reader r138 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject138

def r139 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))))
theorem reject139 : ¬ Reader r139 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject139

def r140 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))
theorem reject140 : ¬ Reader r140 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject140

def r141 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))
theorem reject141 : ¬ Reader r141 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject141

def r142 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 0)))))
theorem reject142 : ¬ Reader r142 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject142

def r143 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))
theorem reject143 : ¬ Reader r143 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject143

def r144 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.lam (.var 0)) (.var 2)))))
theorem reject144 : ¬ Reader r144 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject144

def r145 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 0)))))
theorem reject145 : ¬ Reader r145 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject145

def r146 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.app (.var 0) (.var 2)))))
theorem reject146 : ¬ Reader r146 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject146

def r147 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))
theorem reject147 : ¬ Reader r147 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject147

def r148 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))
theorem reject148 : ¬ Reader r148 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject148

def r149 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))
theorem reject149 : ¬ Reader r149 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject149

def r150 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 0))))
theorem reject150 : ¬ Reader r150 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject150

def r151 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 2))) (.var 2))))
theorem reject151 : ¬ Reader r151 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject151

def r152 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.lam (.var 0)))) (.var 2))))
theorem reject152 : ¬ Reader r152 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject152

def r153 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))
theorem reject153 : ¬ Reader r153 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject153

def r154 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))
theorem reject154 : ¬ Reader r154 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject154

def r155 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.var 0)) (.var 0)) (.var 2))))
theorem reject155 : ¬ Reader r155 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject155

def r174 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject174 : ¬ Reader r174 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject174

def r175 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject175 : ¬ Reader r175 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject175

def r176 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject176 : ¬ Reader r176 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject176

def r177 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject177 : ¬ Reader r177 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject177

def r178 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject178 : ¬ Reader r178 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject178

def r179 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject179 : ¬ Reader r179 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject179

def r247 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject247 : ¬ Reader r247 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject247

def r248 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject248 : ¬ Reader r248 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject248

def r251 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject251 : ¬ Reader r251 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject251

def r253 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject253 : ¬ Reader r253 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject253

def r255 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject255 : ¬ Reader r255 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject255

def r257 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject257 : ¬ Reader r257 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject257

def r259 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject259 : ¬ Reader r259 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject259

def r260 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject260 : ¬ Reader r260 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject260

def r261 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 0))))
theorem reject261 : ¬ Reader r261 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject261

def r262 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 0) (.var 2))))
theorem reject262 : ¬ Reader r262 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject262

def r267 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject267 : ¬ Reader r267 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject268 : ¬ Reader r268 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject268

def r271 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject271 : ¬ Reader r271 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject271

def r272 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject272 : ¬ Reader r272 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject272

def r275 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject275 : ¬ Reader r275 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject275

def r276 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject276 : ¬ Reader r276 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject276

def r279 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject279 : ¬ Reader r279 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject279

def r280 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject280 : ¬ Reader r280 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject280

def r283 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject283 : ¬ Reader r283 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject283

def r284 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject284 : ¬ Reader r284 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject284

def r285 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject285 : ¬ Reader r285 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject285

def r286 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject286 : ¬ Reader r286 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject286

def r291 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject291 : ¬ Reader r291 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject291

def r292 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject292 : ¬ Reader r292 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject292

def r295 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.var 1))))
theorem reject295 : ¬ Reader r295 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject295

def r296 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.var 2))))
theorem reject296 : ¬ Reader r296 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject296

def r299 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject299 : ¬ Reader r299 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject299

def r300 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject300 : ¬ Reader r300 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject300

def r303 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject303 : ¬ Reader r303 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject303

def r304 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject304 : ¬ Reader r304 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject304

def r307 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject307 : ¬ Reader r307 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject307

def r308 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject308 : ¬ Reader r308 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject308

def r309 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.lam (.var 0)))))
theorem reject309 : ¬ Reader r309 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject309

def r310 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.app (.lam (.var 0)) (.var 2))))
theorem reject310 : ¬ Reader r310 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject310

def r315 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject315 : ¬ Reader r315 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject316 : ¬ Reader r316 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject316

def r319 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 2) (.lam (.var 0)))))
theorem reject319 : ¬ Reader r319 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject319

def r320 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.var 0)) (.var 2))))
theorem reject320 : ¬ Reader r320 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject320

def r323 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject323 : ¬ Reader r323 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject323

def r324 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject324 : ¬ Reader r324 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject324

def r327 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject327 : ¬ Reader r327 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject327

def r328 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject328 : ¬ Reader r328 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject328

def r361 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject361 : ¬ Reader r361 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject362 : ¬ Reader r362 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject363 : ¬ Reader r363 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject363

def r365 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject365 : ¬ Reader r365 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject365

def r367 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject367 : ¬ Reader r367 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject367

def r368 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject368 : ¬ Reader r368 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject369 : ¬ Reader r369 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject369

def r370 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject370 : ¬ Reader r370 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.var 0))))
theorem reject371 : ¬ Reader r371 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject371

def r372 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 0) (.var 2))))
theorem reject372 : ¬ Reader r372 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject372

def r375 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject375 : ¬ Reader r375 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject375

def r376 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject376 : ¬ Reader r376 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject376

def r379 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject379 : ¬ Reader r379 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject380 : ¬ Reader r380 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 1))))
theorem reject381 : ¬ Reader r381 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 1) (.var 2))))
theorem reject382 : ¬ Reader r382 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 2) (.var 1))))
theorem reject383 : ¬ Reader r383 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.app (.var 1) (.var 2))))
theorem reject384 : ¬ Reader r384 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject384

def r387 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject387 : ¬ Reader r387 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject388 : ¬ Reader r388 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject388

def r391 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject391 : ¬ Reader r391 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject391

def r393 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 2)))
theorem reject393 : ¬ Reader r393 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject393

def r395 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject395 : ¬ Reader r395 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject395

def r396 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject396 : ¬ Reader r396 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject396

def r400 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject400 : ¬ Reader r400 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject400

def r402 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject402 : ¬ Reader r402 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject402

def r404 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject404 : ¬ Reader r404 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject405 : ¬ Reader r405 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject405

def r408 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject408 : ¬ Reader r408 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject409 : ¬ Reader r409 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject409

def r412 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject412 : ¬ Reader r412 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject413 : ¬ Reader r413 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject414 : ¬ Reader r414 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject415 : ¬ Reader r415 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject415

def r422 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject422 : ¬ Reader r422 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject422

def r423 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject423 : ¬ Reader r423 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject423

def r426 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject426 : ¬ Reader r426 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject426

def r427 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject427 : ¬ Reader r427 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject427

def r432 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.var 2)))
theorem reject432 : ¬ Reader r432 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject432

def r434 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.var 2)))
theorem reject434 : ¬ Reader r434 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject434

def r440 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject440 : ¬ Reader r440 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject440

def r442 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject442 : ¬ Reader r442 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject442

def r444 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject444 : ¬ Reader r444 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject444

def r448 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 2)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject448 : ¬ Reader r448 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject448

def r450 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject450 : ¬ Reader r450 := by
  exact head_reduct true 4 (0,8) (by decide) (by decide)
#print axioms reject450

def r451 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject451 : ¬ Reader r451 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject451

def r452 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject452 : ¬ Reader r452 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject452

def r453 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.var 2)))
theorem reject453 : ¬ Reader r453 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject453

def r458 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject458 : ¬ Reader r458 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject458

def r459 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject459 : ¬ Reader r459 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject459

def r462 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject462 : ¬ Reader r462 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject462

def r463 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.var 2)))
theorem reject463 : ¬ Reader r463 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject463

def r466 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject466 : ¬ Reader r466 := by
  exact head_reduct true 4 (0,8) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject467 : ¬ Reader r467 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject467

def r470 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject470 : ¬ Reader r470 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject470

def r471 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject471 : ¬ Reader r471 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject471

def r474 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject474 : ¬ Reader r474 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject474

def r476 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject476 : ¬ Reader r476 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject476

def r478 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject478 : ¬ Reader r478 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject478

def r480 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.var 2)))
theorem reject480 : ¬ Reader r480 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject480

def r482 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.var 2)))
theorem reject482 : ¬ Reader r482 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject482

def r484 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject484 : ¬ Reader r484 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject484

def r486 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 2)))
theorem reject486 : ¬ Reader r486 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject486

def r488 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))) (.var 2)))
theorem reject488 : ¬ Reader r488 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject488

def r490 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject490 : ¬ Reader r490 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject490

def r492 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject492 : ¬ Reader r492 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject492

def r494 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject494 : ¬ Reader r494 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject494

def r496 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject496 : ¬ Reader r496 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject496

def r498 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject498 : ¬ Reader r498 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject498

def r500 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject500 : ¬ Reader r500 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject500

def r504 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject504 : ¬ Reader r504 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject504

def r506 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 2)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject506 : ¬ Reader r506 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject506

def r508 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject508 : ¬ Reader r508 := by
  exact head_reduct true 4 (0,8) (by decide) (by decide)
#print axioms reject508

def r510 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject510 : ¬ Reader r510 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject510

def r512 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject512 : ¬ Reader r512 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject512

def r514 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject514 : ¬ Reader r514 := by
  exact head_reduct true 8 (3,4) (by decide) (by decide)
#print axioms reject514

def r516 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject516 : ¬ Reader r516 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject516

def r518 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject518 : ¬ Reader r518 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject518

def r520 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject520 : ¬ Reader r520 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject520

def r524 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject524 : ¬ Reader r524 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject524

def r525 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject525 : ¬ Reader r525 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject525

def r526 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject526 : ¬ Reader r526 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject526

def r527 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject527 : ¬ Reader r527 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject527

def r528 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject528 : ¬ Reader r528 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 0))) (.var 2)))
theorem reject529 : ¬ Reader r529 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject529

def r532 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject532 : ¬ Reader r532 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject533 : ¬ Reader r533 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject533

def r536 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject536 : ¬ Reader r536 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject536

def r538 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))))) (.var 2)))
theorem reject538 : ¬ Reader r538 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject538

def r540 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject540 : ¬ Reader r540 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject541 : ¬ Reader r541 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject541

def r542 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject542 : ¬ Reader r542 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject542

def r543 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject543 : ¬ Reader r543 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject543

def r544 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject544 : ¬ Reader r544 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject544

def r546 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))) (.var 2)))
theorem reject546 : ¬ Reader r546 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject546

def r548 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject548 : ¬ Reader r548 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject549 : ¬ Reader r549 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject550 : ¬ Reader r550 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject550

def r552 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject552 : ¬ Reader r552 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject552

def r553 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))) (.var 2)))
theorem reject553 : ¬ Reader r553 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject553

def r554 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))) (.var 2)))
theorem reject554 : ¬ Reader r554 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject554

def r556 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject556 : ¬ Reader r556 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject556

def r557 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject557 : ¬ Reader r557 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject557

def r558 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))) (.var 2)))
theorem reject558 : ¬ Reader r558 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject558

def r560 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject560 : ¬ Reader r560 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject561 : ¬ Reader r561 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject561

def r562 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))) (.var 2)))
theorem reject562 : ¬ Reader r562 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject562

def r568 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject568 : ¬ Reader r568 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1))))) (.var 2)))
theorem reject569 : ¬ Reader r569 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject569

def r572 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject572 : ¬ Reader r572 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject573 : ¬ Reader r573 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject574 : ¬ Reader r574 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject574

def r576 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject576 : ¬ Reader r576 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject577 : ¬ Reader r577 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject578 : ¬ Reader r578 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject578

def r580 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject580 : ¬ Reader r580 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject580

def r582 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject582 : ¬ Reader r582 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject582

def r588 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject588 : ¬ Reader r588 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject588

def r591 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 2)) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject591 : ¬ Reader r591 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject591

def r594 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject594 : ¬ Reader r594 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject594

def r596 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject596 : ¬ Reader r596 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject596

def r598 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject598 : ¬ Reader r598 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject598

def r600 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject600 : ¬ Reader r600 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject600

def r602 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject602 : ¬ Reader r602 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject602

def r604 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject604 : ¬ Reader r604 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject604

def r606 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject606 : ¬ Reader r606 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject607 : ¬ Reader r607 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject607

def r610 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.var 2)))
theorem reject610 : ¬ Reader r610 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject610

def r611 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 0))) (.var 2)))
theorem reject611 : ¬ Reader r611 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject611

def r614 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject614 : ¬ Reader r614 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject614

def r615 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject615 : ¬ Reader r615 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject615

def r616 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 2)))
theorem reject616 : ¬ Reader r616 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject616

def r617 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0))) (.var 2)))
theorem reject617 : ¬ Reader r617 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject617

def r624 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject624 : ¬ Reader r624 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject624

def r625 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject625 : ¬ Reader r625 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject625

def r628 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject628 : ¬ Reader r628 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject629 : ¬ Reader r629 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject629

def r632 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject632 : ¬ Reader r632 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject632

def r634 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject634 : ¬ Reader r634 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject634

def r636 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.var 2)))
theorem reject636 : ¬ Reader r636 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject636

def r638 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)))) (.var 2)))
theorem reject638 : ¬ Reader r638 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject638

def r640 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject640 : ¬ Reader r640 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject640

def r642 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 2)))
theorem reject642 : ¬ Reader r642 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject642

def r644 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject644 : ¬ Reader r644 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject644

def r646 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))))) (.var 2)))
theorem reject646 : ¬ Reader r646 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject646

def r648 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))))) (.var 2)))
theorem reject648 : ¬ Reader r648 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject648

def r650 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))))) (.var 2)))
theorem reject650 : ¬ Reader r650 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject650

def r652 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject652 : ¬ Reader r652 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject652

def r654 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject654 : ¬ Reader r654 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject654

def r656 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))))) (.var 2)))
theorem reject656 : ¬ Reader r656 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject656

def r658 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject658 : ¬ Reader r658 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject658

def r660 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.var 0)) (.var 0))))) (.var 2)))
theorem reject660 : ¬ Reader r660 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject660

def r662 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject662 : ¬ Reader r662 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject662

def r663 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject663 : ¬ Reader r663 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject663

def r664 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject664 : ¬ Reader r664 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject664

def r665 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 1))) (.var 2)))
theorem reject665 : ¬ Reader r665 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject665

def r666 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject666 : ¬ Reader r666 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject666

def r667 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 1))) (.var 2)))
theorem reject667 : ¬ Reader r667 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject667

def r668 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 1)))) (.var 2)))
theorem reject668 : ¬ Reader r668 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject668

def r670 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject670 : ¬ Reader r670 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject670

def r671 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject671 : ¬ Reader r671 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject671

def r672 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 1))))) (.var 2)))
theorem reject672 : ¬ Reader r672 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject672

def r674 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject674 : ¬ Reader r674 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject674

def r675 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 2)))
theorem reject675 : ¬ Reader r675 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject675

def r676 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject676 : ¬ Reader r676 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject676

def r677 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0)))) (.var 2)))
theorem reject677 : ¬ Reader r677 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject677

def r682 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject682 : ¬ Reader r682 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject682

def r683 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 2)))
theorem reject683 : ¬ Reader r683 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject683

def r686 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject686 : ¬ Reader r686 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject686

def r687 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0)))) (.var 2)))
theorem reject687 : ¬ Reader r687 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject687

def r690 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject690 : ¬ Reader r690 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject690

def r691 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject691 : ¬ Reader r691 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject691

def r694 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject694 : ¬ Reader r694 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject694

def r695 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject695 : ¬ Reader r695 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject695

def r700 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject700 : ¬ Reader r700 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject700

def r702 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 2)))
theorem reject702 : ¬ Reader r702 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject702

def r704 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject704 : ¬ Reader r704 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject704

def r706 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 2)))
theorem reject706 : ¬ Reader r706 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject706

def r708 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2))))) (.var 2)))
theorem reject708 : ¬ Reader r708 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject708

def r710 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0)))))) (.var 2)))
theorem reject710 : ¬ Reader r710 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject710

def r712 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject712 : ¬ Reader r712 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject712

def r713 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject713 : ¬ Reader r713 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject713

def r716 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0))))) (.var 2)))
theorem reject716 : ¬ Reader r716 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject716

def r718 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject718 : ¬ Reader r718 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject718

def r719 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.var 0)) (.var 0)))) (.var 2)))
theorem reject719 : ¬ Reader r719 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject719

def r722 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject722 : ¬ Reader r722 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject722

def r723 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 1)))) (.var 2)))
theorem reject723 : ¬ Reader r723 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject723

def r724 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject724 : ¬ Reader r724 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject724

def r728 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject728 : ¬ Reader r728 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject728

def r730 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject730 : ¬ Reader r730 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject730

def r732 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject732 : ¬ Reader r732 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject732

def r734 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject734 : ¬ Reader r734 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject734

def r740 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject740 : ¬ Reader r740 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject740

def r745 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject745 : ¬ Reader r745 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject745

def r747 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject747 : ¬ Reader r747 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject747

def r751 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 2)) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject751 : ¬ Reader r751 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject751

def r755 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject755 : ¬ Reader r755 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject755

def r757 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.var 0)) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject757 : ¬ Reader r757 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject757

def r759 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject759 : ¬ Reader r759 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject759

def r761 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.var 0)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject761 : ¬ Reader r761 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject761

def r763 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.var 0) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject763 : ¬ Reader r763 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject763

def r765 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.app (.var 1) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject765 : ¬ Reader r765 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject765

def r767 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject767 : ¬ Reader r767 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject767

def r769 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject769 : ¬ Reader r769 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject769

def r771 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject771 : ¬ Reader r771 := by
  exact head_reduct true 6 (3,4) (by decide) (by decide)
#print axioms reject771

def r773 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.var 0)) (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject773 : ¬ Reader r773 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject773

def r775 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject775 : ¬ Reader r775 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject775

def r777 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.var 0)) (.var 1)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject777 : ¬ Reader r777 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject777

def r779 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject779 : ¬ Reader r779 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject779

def r782 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject782 : ¬ Reader r782 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject782

def r784 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject784 : ¬ Reader r784 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject784

def r786 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject786 : ¬ Reader r786 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject786

def r788 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject788 : ¬ Reader r788 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject788

def r798 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject798 : ¬ Reader r798 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject798

def r800 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject800 : ¬ Reader r800 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject800

def r802 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject802 : ¬ Reader r802 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject802

def r803 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject803 : ¬ Reader r803 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject803

def r806 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject806 : ¬ Reader r806 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject806

def r807 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject807 : ¬ Reader r807 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject807

def r810 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject810 : ¬ Reader r810 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject810

def r811 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject811 : ¬ Reader r811 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject811

def r814 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject814 : ¬ Reader r814 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject814

def r815 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject815 : ¬ Reader r815 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject815

def r818 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject818 : ¬ Reader r818 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject818

def r819 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject819 : ¬ Reader r819 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject819

def r822 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject822 : ¬ Reader r822 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject822

def r823 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject823 : ¬ Reader r823 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject823

def r836 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject836 : ¬ Reader r836 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject836

def r837 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject837 : ¬ Reader r837 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject837

def r840 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject840 : ¬ Reader r840 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject840

def r842 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject842 : ¬ Reader r842 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject842

def r844 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject844 : ¬ Reader r844 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject844

def r846 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject846 : ¬ Reader r846 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject846

def r848 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject848 : ¬ Reader r848 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject848

def r849 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject849 : ¬ Reader r849 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject849

def r852 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject852 : ¬ Reader r852 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject852

def r854 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject854 : ¬ Reader r854 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject854

def r856 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject856 : ¬ Reader r856 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject856

def r858 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject858 : ¬ Reader r858 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject858

def r860 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject860 : ¬ Reader r860 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject860

def r861 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject861 : ¬ Reader r861 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject861

def r862 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject862 : ¬ Reader r862 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject862

def r864 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject864 : ¬ Reader r864 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject864

def r866 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject866 : ¬ Reader r866 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject866

def r867 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject867 : ¬ Reader r867 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject867

def r868 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject868 : ¬ Reader r868 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject868

def r870 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject870 : ¬ Reader r870 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject870

def r872 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject872 : ¬ Reader r872 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject872

def r874 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 2)))
theorem reject874 : ¬ Reader r874 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject874

def r876 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject876 : ¬ Reader r876 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject876

def r877 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject877 : ¬ Reader r877 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject877

def r881 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject881 : ¬ Reader r881 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject881

def r883 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject883 : ¬ Reader r883 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject883

def r885 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject885 : ¬ Reader r885 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject885

def r887 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 2)))
theorem reject887 : ¬ Reader r887 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject887

def r889 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject889 : ¬ Reader r889 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject889

def r890 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject890 : ¬ Reader r890 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject890

def r894 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject894 : ¬ Reader r894 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject894

def r896 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject896 : ¬ Reader r896 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject896

def r902 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject902 : ¬ Reader r902 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject902

def r904 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject904 : ¬ Reader r904 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject904

def r905 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject905 : ¬ Reader r905 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject905

def r909 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject909 : ¬ Reader r909 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject909

def r910 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject910 : ¬ Reader r910 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject910

def r913 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject913 : ¬ Reader r913 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject913

def r915 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject915 : ¬ Reader r915 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject915

def r917 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject917 : ¬ Reader r917 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject917

def r919 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject919 : ¬ Reader r919 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject919

def r921 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject921 : ¬ Reader r921 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject921

def r923 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject923 : ¬ Reader r923 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject923

def r925 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject925 : ¬ Reader r925 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject925

def r930 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject930 : ¬ Reader r930 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject930

def r932 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject932 : ¬ Reader r932 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject932

def r934 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject934 : ¬ Reader r934 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject934

def r936 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject936 : ¬ Reader r936 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject936

def r938 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject938 : ¬ Reader r938 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject938

def r940 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject940 : ¬ Reader r940 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject940

def r942 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject942 : ¬ Reader r942 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject942

def r944 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject944 : ¬ Reader r944 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject944

def r946 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject946 : ¬ Reader r946 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject946

def r948 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject948 : ¬ Reader r948 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject948

def r950 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject950 : ¬ Reader r950 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject950

def r952 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject952 : ¬ Reader r952 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject952

def r954 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject954 : ¬ Reader r954 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject954

def r956 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject956 : ¬ Reader r956 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject956

def r958 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject958 : ¬ Reader r958 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject958

def r960 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject960 : ¬ Reader r960 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject960

def r962 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject962 : ¬ Reader r962 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject962

def r964 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject964 : ¬ Reader r964 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject964

def r966 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject966 : ¬ Reader r966 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject966

def r968 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject968 : ¬ Reader r968 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject968

def r970 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject970 : ¬ Reader r970 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject970

def r972 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject972 : ¬ Reader r972 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject972

def r974 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject974 : ¬ Reader r974 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject974

def r976 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject976 : ¬ Reader r976 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject976

def r978 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject978 : ¬ Reader r978 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject978

def r980 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject980 : ¬ Reader r980 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject980

def r984 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject984 : ¬ Reader r984 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject984

def r985 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject985 : ¬ Reader r985 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject985

def r990 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject990 : ¬ Reader r990 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject990

def r991 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject991 : ¬ Reader r991 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject991

def r998 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject998 : ¬ Reader r998 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject998

def r1000 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1000 : ¬ Reader r1000 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1000

def r1001 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1001 : ¬ Reader r1001 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1001

def r1002 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1002 : ¬ Reader r1002 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1002

def r1004 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1004 : ¬ Reader r1004 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1004

def r1006 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1006 : ¬ Reader r1006 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1006

def r1007 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1007 : ¬ Reader r1007 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1007

def r1008 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1008 : ¬ Reader r1008 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1008

def r1010 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1010 : ¬ Reader r1010 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1010

def r1012 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1012 : ¬ Reader r1012 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1012

def r1014 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1014 : ¬ Reader r1014 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1014

def r1016 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1016 : ¬ Reader r1016 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1016

def r1018 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1018 : ¬ Reader r1018 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1018

def r1020 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1020 : ¬ Reader r1020 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1020

def r1022 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1022 : ¬ Reader r1022 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1022

def r1024 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1024 : ¬ Reader r1024 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1024

def r1026 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1026 : ¬ Reader r1026 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1026

def r1028 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1028 : ¬ Reader r1028 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1028

def r1030 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1030 : ¬ Reader r1030 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1030

def r1031 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1031 : ¬ Reader r1031 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1031

def r1032 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1032 : ¬ Reader r1032 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1032

def r1033 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1033 : ¬ Reader r1033 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1033

def r1034 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1034 : ¬ Reader r1034 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject1034

def r1035 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1035 : ¬ Reader r1035 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1035

def r1036 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1036 : ¬ Reader r1036 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject1036

def r1037 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1037 : ¬ Reader r1037 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1037

def r1038 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1038 : ¬ Reader r1038 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1038

def r1039 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1039 : ¬ Reader r1039 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1039

def r1040 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1040 : ¬ Reader r1040 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1040

def r1041 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1041 : ¬ Reader r1041 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1041

def r1042 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1042 : ¬ Reader r1042 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1042

def r1043 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1043 : ¬ Reader r1043 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1043

def r1044 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1044 : ¬ Reader r1044 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1044

def r1045 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1045 : ¬ Reader r1045 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1045

def r1046 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1046 : ¬ Reader r1046 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1046

def r1052 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1052 : ¬ Reader r1052 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1052

def r1054 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 0))))
theorem reject1054 : ¬ Reader r1054 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1054

def r1055 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 0) (.var 2))))
theorem reject1055 : ¬ Reader r1055 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1055

def r1058 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1058 : ¬ Reader r1058 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1058

def r1059 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1059 : ¬ Reader r1059 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1059

def r1062 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1062 : ¬ Reader r1062 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1062

def r1063 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1063 : ¬ Reader r1063 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1063

def r1071 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1071 : ¬ Reader r1071 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1071

def r1072 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0))) (.var 2)))
theorem reject1072 : ¬ Reader r1072 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1072

def r1075 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1075 : ¬ Reader r1075 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1075

def r1077 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)))) (.var 2)))
theorem reject1077 : ¬ Reader r1077 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1077

def r1079 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1079 : ¬ Reader r1079 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1079

def r1081 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1081 : ¬ Reader r1081 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1081

def r1083 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1083 : ¬ Reader r1083 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1083

def r1084 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1084 : ¬ Reader r1084 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1084

def r1085 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)))) (.var 2)))
theorem reject1085 : ¬ Reader r1085 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1085

def r1087 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1087 : ¬ Reader r1087 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1087

def r1089 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1089 : ¬ Reader r1089 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1089

def r1091 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.var 0))))) (.var 2)))
theorem reject1091 : ¬ Reader r1091 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1091

def r1093 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1093 : ¬ Reader r1093 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1093

def r1094 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0)))) (.var 2)))
theorem reject1094 : ¬ Reader r1094 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1094

def r1098 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1098 : ¬ Reader r1098 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1098

def r1100 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1100 : ¬ Reader r1100 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1100

def r1102 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1102 : ¬ Reader r1102 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1102

def r1104 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1104 : ¬ Reader r1104 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1104

def r1106 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1106 : ¬ Reader r1106 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1106

def r1108 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1108 : ¬ Reader r1108 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1108

def r1110 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1110 : ¬ Reader r1110 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1110

def r1114 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1114 : ¬ Reader r1114 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1114

def r1116 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1116 : ¬ Reader r1116 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1116

def r1118 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1118 : ¬ Reader r1118 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1118

def r1119 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.var 2)))
theorem reject1119 : ¬ Reader r1119 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1119

def r1120 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1120 : ¬ Reader r1120 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1120

def r1121 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1121 : ¬ Reader r1121 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1121

def r1130 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1130 : ¬ Reader r1130 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1130

def r1132 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1132 : ¬ Reader r1132 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1132

def r1134 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1134 : ¬ Reader r1134 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1134

def r1135 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1135 : ¬ Reader r1135 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1135

def r1138 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1138 : ¬ Reader r1138 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1138

def r1139 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1139 : ¬ Reader r1139 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1139

def r1142 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1142 : ¬ Reader r1142 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1142

def r1143 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1143 : ¬ Reader r1143 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1143

def r1146 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1146 : ¬ Reader r1146 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1146

def r1147 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1147 : ¬ Reader r1147 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1147

def r1150 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1150 : ¬ Reader r1150 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1150

def r1151 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1151 : ¬ Reader r1151 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1151

def r1154 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1154 : ¬ Reader r1154 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1154

def r1155 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1155 : ¬ Reader r1155 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1155

def r1168 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1168 : ¬ Reader r1168 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1168

def r1169 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1169 : ¬ Reader r1169 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1169

def r1172 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1172 : ¬ Reader r1172 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1172

def r1174 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject1174 : ¬ Reader r1174 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1174

def r1176 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1176 : ¬ Reader r1176 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1176

def r1178 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1178 : ¬ Reader r1178 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1178

def r1180 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1180 : ¬ Reader r1180 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1180

def r1181 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1181 : ¬ Reader r1181 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1181

def r1184 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1184 : ¬ Reader r1184 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1184

def r1186 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)))) (.var 2)))
theorem reject1186 : ¬ Reader r1186 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1186

def r1188 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1188 : ¬ Reader r1188 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1188

def r1190 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1190 : ¬ Reader r1190 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1190

def r1192 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1192 : ¬ Reader r1192 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1192

def r1193 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1193 : ¬ Reader r1193 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1193

def r1194 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1194 : ¬ Reader r1194 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1194

def r1196 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1196 : ¬ Reader r1196 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1196

def r1198 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1198 : ¬ Reader r1198 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1198

def r1199 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1199 : ¬ Reader r1199 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1199

def r1200 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))) (.var 2)))
theorem reject1200 : ¬ Reader r1200 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1200

def r1202 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1202 : ¬ Reader r1202 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1202

def r1204 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1204 : ¬ Reader r1204 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1204

def r1206 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 2)))
theorem reject1206 : ¬ Reader r1206 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1206

def r1208 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1208 : ¬ Reader r1208 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1208

def r1209 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 2)))
theorem reject1209 : ¬ Reader r1209 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1209

def r1213 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1213 : ¬ Reader r1213 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1213

def r1215 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1215 : ¬ Reader r1215 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1215

def r1217 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1217 : ¬ Reader r1217 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1217

def r1219 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))))) (.var 2)))
theorem reject1219 : ¬ Reader r1219 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1219

def r1221 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1221 : ¬ Reader r1221 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1221

def r1222 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject1222 : ¬ Reader r1222 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1222

def r1226 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1226 : ¬ Reader r1226 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1226

def r1228 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1228 : ¬ Reader r1228 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1228

def r1230 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1230 : ¬ Reader r1230 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1230

def r1233 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1233 : ¬ Reader r1233 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1233

def r1235 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1235 : ¬ Reader r1235 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1235

def r1237 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1237 : ¬ Reader r1237 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1237

def r1239 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1239 : ¬ Reader r1239 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1239

def r1241 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1241 : ¬ Reader r1241 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1241

def r1243 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1243 : ¬ Reader r1243 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1243

def r1245 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1245 : ¬ Reader r1245 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1245

def r1247 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1247 : ¬ Reader r1247 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1247

def r1249 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1249 : ¬ Reader r1249 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1249

def r1251 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1251 : ¬ Reader r1251 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1251

def r1257 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1257 : ¬ Reader r1257 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1257

def r1259 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1259 : ¬ Reader r1259 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1259

def r1261 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1261 : ¬ Reader r1261 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1261

def r1263 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1263 : ¬ Reader r1263 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1263

def r1265 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1265 : ¬ Reader r1265 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1265

def r1266 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1266 : ¬ Reader r1266 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1266

def r1267 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1267 : ¬ Reader r1267 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1267

def r1268 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1268 : ¬ Reader r1268 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1268

def r1269 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1269 : ¬ Reader r1269 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1269

def r1270 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1270 : ¬ Reader r1270 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1270

def r1271 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1271 : ¬ Reader r1271 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1271

def r1272 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1272 : ¬ Reader r1272 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1272

def r1281 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1281 : ¬ Reader r1281 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1281

def r1283 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1283 : ¬ Reader r1283 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1283

def r1285 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 0))))
theorem reject1285 : ¬ Reader r1285 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1285

def r1286 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 0) (.var 2))))
theorem reject1286 : ¬ Reader r1286 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1286

def r1289 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1289 : ¬ Reader r1289 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1289

def r1290 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1290 : ¬ Reader r1290 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1290

def r1293 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject1293 : ¬ Reader r1293 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1293

def r1294 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject1294 : ¬ Reader r1294 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1294

def r1297 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1297 : ¬ Reader r1297 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1297

def r1298 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1298 : ¬ Reader r1298 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1298

def r1303 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1303 : ¬ Reader r1303 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1303

def r1304 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 2)))
theorem reject1304 : ¬ Reader r1304 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1304

def r1307 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1307 : ¬ Reader r1307 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1307

def r1309 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.var 2)))
theorem reject1309 : ¬ Reader r1309 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1309

def r1311 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1311 : ¬ Reader r1311 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1311

def r1313 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1313 : ¬ Reader r1313 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1313

def r1315 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1315 : ¬ Reader r1315 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1315

def r1316 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1316 : ¬ Reader r1316 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1316

def r1319 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1319 : ¬ Reader r1319 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1319

def r1321 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject1321 : ¬ Reader r1321 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1321

def r1323 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1323 : ¬ Reader r1323 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1323

def r1325 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1325 : ¬ Reader r1325 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1325

def r1327 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1327 : ¬ Reader r1327 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1327

def r1328 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.var 2)))
theorem reject1328 : ¬ Reader r1328 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1328

def r1329 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.var 2)))
theorem reject1329 : ¬ Reader r1329 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1329

def r1331 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1331 : ¬ Reader r1331 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1331

def r1333 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1333 : ¬ Reader r1333 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1333

def r1334 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1334 : ¬ Reader r1334 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1334

def r1335 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1335 : ¬ Reader r1335 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1335

def r1337 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1337 : ¬ Reader r1337 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1337

def r1339 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1339 : ¬ Reader r1339 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1339

def r1341 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1341 : ¬ Reader r1341 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1341

def r1343 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1343 : ¬ Reader r1343 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1343

def r1345 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1345 : ¬ Reader r1345 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1345

def r1347 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1347 : ¬ Reader r1347 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1347

def r1349 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1349 : ¬ Reader r1349 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1349

def r1351 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1351 : ¬ Reader r1351 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1351

def r1353 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1353 : ¬ Reader r1353 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1353

def r1355 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1355 : ¬ Reader r1355 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1355

def r1357 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1357 : ¬ Reader r1357 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1357

def r1359 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1359 : ¬ Reader r1359 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1359

def r1365 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1365 : ¬ Reader r1365 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1365

def r1366 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.var 2)))
theorem reject1366 : ¬ Reader r1366 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1366

def r1367 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1367 : ¬ Reader r1367 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1367

def r1368 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1368 : ¬ Reader r1368 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1368

def r1377 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1377 : ¬ Reader r1377 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1377

def r1379 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1379 : ¬ Reader r1379 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1379

def r1381 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject1381 : ¬ Reader r1381 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1381

def r1382 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject1382 : ¬ Reader r1382 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1382

def r1385 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1385 : ¬ Reader r1385 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1385

def r1386 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1386 : ¬ Reader r1386 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1386

def r1391 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1391 : ¬ Reader r1391 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1391

def r1392 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject1392 : ¬ Reader r1392 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1392

def r1395 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1395 : ¬ Reader r1395 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1395

def r1397 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject1397 : ¬ Reader r1397 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1397

def r1399 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1399 : ¬ Reader r1399 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1399

def r1401 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1401 : ¬ Reader r1401 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1401

def r1403 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 2)))
theorem reject1403 : ¬ Reader r1403 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1403

def r1404 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1404 : ¬ Reader r1404 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1404

def r1407 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 2)))
theorem reject1407 : ¬ Reader r1407 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1407

def r1409 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)))) (.var 2)))
theorem reject1409 : ¬ Reader r1409 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1409

def r1411 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1411 : ¬ Reader r1411 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1411

def r1413 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1413 : ¬ Reader r1413 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1413

def r1415 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1415 : ¬ Reader r1415 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1415

def r1417 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1417 : ¬ Reader r1417 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1417

def r1419 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1419 : ¬ Reader r1419 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1419

def r1421 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1421 : ¬ Reader r1421 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1421

def r1423 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1423 : ¬ Reader r1423 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1423

def r1425 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1425 : ¬ Reader r1425 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1425

def r1427 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1427 : ¬ Reader r1427 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1427

def r1429 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1429 : ¬ Reader r1429 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1429

def r1433 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1433 : ¬ Reader r1433 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1433

def r1434 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1434 : ¬ Reader r1434 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1434

def r1439 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1439 : ¬ Reader r1439 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1439

def r1440 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1440 : ¬ Reader r1440 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1440

def r1441 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 0))))
theorem reject1441 : ¬ Reader r1441 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1441

def r1442 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 0) (.var 2))))
theorem reject1442 : ¬ Reader r1442 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1442

def r1447 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1447 : ¬ Reader r1447 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1447

def r1448 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1448 : ¬ Reader r1448 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1448

def r1449 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 2) (.var 1))))
theorem reject1449 : ¬ Reader r1449 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1449

def r1450 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.var 1) (.var 2))))
theorem reject1450 : ¬ Reader r1450 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1450

def r1451 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1451 : ¬ Reader r1451 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1451

def r1453 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1453 : ¬ Reader r1453 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1453

def r1454 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1454 : ¬ Reader r1454 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1454

def r1455 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 2) (.var 0))))
theorem reject1455 : ¬ Reader r1455 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1455

def r1456 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.app (.var 0) (.var 2))))
theorem reject1456 : ¬ Reader r1456 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1456

def r1459 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1459 : ¬ Reader r1459 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1459

def r1460 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1460 : ¬ Reader r1460 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1460

def r1461 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1461 : ¬ Reader r1461 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1461

def r1462 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1462 : ¬ Reader r1462 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1462

def r1465 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1465 : ¬ Reader r1465 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1465

def r1466 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)))
theorem reject1466 : ¬ Reader r1466 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1466

def r1468 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.var 2)))
theorem reject1468 : ¬ Reader r1468 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1468

def r1475 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1475 : ¬ Reader r1475 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1475

def r1476 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1476 : ¬ Reader r1476 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1476

def r1477 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject1477 : ¬ Reader r1477 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1477

def r1478 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.var 2)))
theorem reject1478 : ¬ Reader r1478 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1478

def r1479 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))) (.var 2)))
theorem reject1479 : ¬ Reader r1479 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1479

def r1480 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject1480 : ¬ Reader r1480 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1480

def r1482 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.var 2)))
theorem reject1482 : ¬ Reader r1482 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1482

def r1485 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1485 : ¬ Reader r1485 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject1485

def r1486 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1))))) (.var 2)))
theorem reject1486 : ¬ Reader r1486 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1486

def r1487 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1487 : ¬ Reader r1487 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1487

def r1488 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0))) (.var 2)))
theorem reject1488 : ¬ Reader r1488 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1488

def r1491 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1491 : ¬ Reader r1491 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1491

def r1493 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))) (.var 2)))
theorem reject1493 : ¬ Reader r1493 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1493

def r1495 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1495 : ¬ Reader r1495 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1495

def r1497 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1497 : ¬ Reader r1497 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1497

def r1499 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1499 : ¬ Reader r1499 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1499

def r1500 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1500 : ¬ Reader r1500 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1500

def r1501 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1501 : ¬ Reader r1501 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1501

def r1502 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1502 : ¬ Reader r1502 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1502

def r1503 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1503 : ¬ Reader r1503 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1503

def r1504 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1504 : ¬ Reader r1504 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1504

def r1505 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject1505 : ¬ Reader r1505 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1505

def r1506 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.var 2)))
theorem reject1506 : ¬ Reader r1506 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1506

def r1507 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1507 : ¬ Reader r1507 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1507

def r1508 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject1508 : ¬ Reader r1508 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1508

def r1509 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1509 : ¬ Reader r1509 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1509

def r1510 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject1510 : ¬ Reader r1510 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1510

def r1513 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1513 : ¬ Reader r1513 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1513

def r1519 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1519 : ¬ Reader r1519 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject1519

def r1520 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1520 : ¬ Reader r1520 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1520

def r1521 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1521 : ¬ Reader r1521 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1521

def r1523 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1523 : ¬ Reader r1523 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1523

def r1524 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1524 : ¬ Reader r1524 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1524

def r1529 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1529 : ¬ Reader r1529 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1529

def r1530 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1530 : ¬ Reader r1530 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1530

def r1531 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1531 : ¬ Reader r1531 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1531

def r1532 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1532 : ¬ Reader r1532 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1532

def r1533 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1533 : ¬ Reader r1533 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1533

def r1535 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1535 : ¬ Reader r1535 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1535

def r1537 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1537 : ¬ Reader r1537 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1537

def r1538 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1538 : ¬ Reader r1538 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1538

def r1539 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1539 : ¬ Reader r1539 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1539

def r1540 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1540 : ¬ Reader r1540 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1540

def r1543 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1543 : ¬ Reader r1543 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1543

def r1544 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1544 : ¬ Reader r1544 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1544

def r1547 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1547 : ¬ Reader r1547 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1547

def r1548 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1548 : ¬ Reader r1548 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1548

def r1549 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.var 2)))
theorem reject1549 : ¬ Reader r1549 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1549

def r1551 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 2)))
theorem reject1551 : ¬ Reader r1551 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1551

def r1553 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 2)))
theorem reject1553 : ¬ Reader r1553 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1553

def r1555 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.var 2)))
theorem reject1555 : ¬ Reader r1555 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1555

def r1557 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.var 2)))
theorem reject1557 : ¬ Reader r1557 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1557

def r1564 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.var 2)))
theorem reject1564 : ¬ Reader r1564 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1564

def r1566 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2)))))))) (.var 2)))
theorem reject1566 : ¬ Reader r1566 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1566

def r1568 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 2)))
theorem reject1568 : ¬ Reader r1568 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1568

def r1570 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 2)))
theorem reject1570 : ¬ Reader r1570 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1570

def r1572 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1572 : ¬ Reader r1572 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1572

def r1573 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1573 : ¬ Reader r1573 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1573

def r1574 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 2)))
theorem reject1574 : ¬ Reader r1574 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1574

def r1576 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1576 : ¬ Reader r1576 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1576

def r1578 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1578 : ¬ Reader r1578 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1578

def r1580 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1580 : ¬ Reader r1580 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1580

def r1582 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1582 : ¬ Reader r1582 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1582

def r1584 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1584 : ¬ Reader r1584 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1584

def r1586 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1586 : ¬ Reader r1586 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1586

def r1588 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1588 : ¬ Reader r1588 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1588

def r1590 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1590 : ¬ Reader r1590 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1590

def r1592 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 2)))
theorem reject1592 : ¬ Reader r1592 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1592

def r1596 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 2)))
theorem reject1596 : ¬ Reader r1596 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1596

def r1600 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1600 : ¬ Reader r1600 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1600

def r1602 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1602 : ¬ Reader r1602 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1602

def r1604 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))))) (.var 2)))
theorem reject1604 : ¬ Reader r1604 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1604

def r1606 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1606 : ¬ Reader r1606 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1606

def r1608 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1608 : ¬ Reader r1608 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1608

def r1610 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.var 2)))
theorem reject1610 : ¬ Reader r1610 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1610

def r1612 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 2)))
theorem reject1612 : ¬ Reader r1612 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1612

def r1614 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1614 : ¬ Reader r1614 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1614

def r1615 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1615 : ¬ Reader r1615 := by
  exact head_reduct true 11 (3,5) (by decide) (by decide)
#print axioms reject1615

def r1616 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 2)))
theorem reject1616 : ¬ Reader r1616 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1616

def r1618 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1618 : ¬ Reader r1618 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1618

def r1620 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1620 : ¬ Reader r1620 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1620

def r1622 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1622 : ¬ Reader r1622 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1622

def r1624 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1624 : ¬ Reader r1624 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1624

def r1626 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1626 : ¬ Reader r1626 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1626

def r1628 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))))) (.var 2)))
theorem reject1628 : ¬ Reader r1628 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1628

def r1630 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))) (.var 2)))
theorem reject1630 : ¬ Reader r1630 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1630

def r1632 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject1632 : ¬ Reader r1632 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1632

def r1634 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))) (.var 2)))
theorem reject1634 : ¬ Reader r1634 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1634

def r1636 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))))) (.var 2)))
theorem reject1636 : ¬ Reader r1636 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1636

def r1638 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1638 : ¬ Reader r1638 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1638

def r1640 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject1640 : ¬ Reader r1640 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1640

def r1642 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1642 : ¬ Reader r1642 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1642

def r1644 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1644 : ¬ Reader r1644 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1644

def r1646 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject1646 : ¬ Reader r1646 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1646

def r1648 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 2)))
theorem reject1648 : ¬ Reader r1648 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1648

def r1650 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) (.var 2)))
theorem reject1650 : ¬ Reader r1650 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1650

def r1652 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) (.var 2)))
theorem reject1652 : ¬ Reader r1652 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1652

def r1654 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1654 : ¬ Reader r1654 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1654

def r1656 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.var 2)))
theorem reject1656 : ¬ Reader r1656 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1656

def r1658 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1658 : ¬ Reader r1658 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1658

def r1660 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1660 : ¬ Reader r1660 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1660

def r1662 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1662 : ¬ Reader r1662 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1662

def r1664 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1664 : ¬ Reader r1664 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1664

def r1665 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))) (.var 0))) (.var 2)))
theorem reject1665 : ¬ Reader r1665 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1665

def r1666 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1666 : ¬ Reader r1666 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1666

def r1667 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1667 : ¬ Reader r1667 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1667

def r1668 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.var 2)))
theorem reject1668 : ¬ Reader r1668 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1668

def r1670 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1670 : ¬ Reader r1670 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1670

def r1674 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1674 : ¬ Reader r1674 := by
  exact head_reduct true 6 (0,7) (by decide) (by decide)
#print axioms reject1674

def r1675 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1675 : ¬ Reader r1675 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1675

def r1680 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1680 : ¬ Reader r1680 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1680

def r1681 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1681 : ¬ Reader r1681 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1681

def r1688 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1688 : ¬ Reader r1688 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1688

def r1689 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1689 : ¬ Reader r1689 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1689

def r1690 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1690 : ¬ Reader r1690 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1690

def r1691 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1691 : ¬ Reader r1691 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1691

def r1692 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1692 : ¬ Reader r1692 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1692

def r1693 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1693 : ¬ Reader r1693 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1693

def r1694 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1694 : ¬ Reader r1694 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1694

def r1695 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1695 : ¬ Reader r1695 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1695

def r1696 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject1696 : ¬ Reader r1696 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1696

def r1698 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1698 : ¬ Reader r1698 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1698

def r1699 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1699 : ¬ Reader r1699 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1699

def r1700 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 2)))
theorem reject1700 : ¬ Reader r1700 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1700

def r1702 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 2)))
theorem reject1702 : ¬ Reader r1702 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1702

def r1704 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1704 : ¬ Reader r1704 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1704

def r1705 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1705 : ¬ Reader r1705 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1705

def r1706 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 2)))
theorem reject1706 : ¬ Reader r1706 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1706

def r1708 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1708 : ¬ Reader r1708 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1708

def r1710 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1710 : ¬ Reader r1710 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1710

def r1712 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1712 : ¬ Reader r1712 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1712

def r1713 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1713 : ¬ Reader r1713 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1713

def r1714 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1714 : ¬ Reader r1714 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1714

def r1715 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1715 : ¬ Reader r1715 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1715

def r1716 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1716 : ¬ Reader r1716 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1716

def r1717 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1717 : ¬ Reader r1717 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1717

def r1718 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1718 : ¬ Reader r1718 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1718

def r1719 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject1719 : ¬ Reader r1719 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1719

def r1720 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1720 : ¬ Reader r1720 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1720

def r1722 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))) (.var 2)))
theorem reject1722 : ¬ Reader r1722 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1722

def r1724 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1724 : ¬ Reader r1724 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1724

def r1726 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1726 : ¬ Reader r1726 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1726

def r1728 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 2)))
theorem reject1728 : ¬ Reader r1728 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1728

def r1730 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1730 : ¬ Reader r1730 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1730

def r1734 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1734 : ¬ Reader r1734 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject1734

def r1735 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1)))))) (.var 0))) (.var 2)))
theorem reject1735 : ¬ Reader r1735 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1735

def r1746 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1746 : ¬ Reader r1746 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1746

def r1747 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1747 : ¬ Reader r1747 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1747

def r1748 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1748 : ¬ Reader r1748 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1748

def r1749 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1749 : ¬ Reader r1749 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1749

def r1752 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1752 : ¬ Reader r1752 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1752

def r1753 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 2)))
theorem reject1753 : ¬ Reader r1753 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1753

def r1754 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1754 : ¬ Reader r1754 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1754

def r1755 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1755 : ¬ Reader r1755 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1755

def r1756 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1756 : ¬ Reader r1756 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1756

def r1757 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)))
theorem reject1757 : ¬ Reader r1757 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1757

def r1758 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 2)))
theorem reject1758 : ¬ Reader r1758 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1758

def r1759 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.var 0))) (.var 2)))
theorem reject1759 : ¬ Reader r1759 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1759

def r1792 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1792 : ¬ Reader r1792 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1792

def r1794 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1794 : ¬ Reader r1794 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1794

def r1795 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1795 : ¬ Reader r1795 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1795

def r1798 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1798 : ¬ Reader r1798 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1798

def r1799 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1799 : ¬ Reader r1799 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1799

def r1802 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1802 : ¬ Reader r1802 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1802

def r1803 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1803 : ¬ Reader r1803 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1803

def r1806 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 1)))))
theorem reject1806 : ¬ Reader r1806 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1806

def r1807 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 1)) (.var 2))))
theorem reject1807 : ¬ Reader r1807 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1807

def r1810 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.lam (.var 0))))))
theorem reject1810 : ¬ Reader r1810 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1810

def r1811 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject1811 : ¬ Reader r1811 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1811

def r1812 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject1812 : ¬ Reader r1812 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1812

def r1813 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.var 2)))))
theorem reject1813 : ¬ Reader r1813 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1813

def r1814 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 2) (.var 0)) (.var 0))))
theorem reject1814 : ¬ Reader r1814 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1814

def r1815 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 2)) (.var 0))))
theorem reject1815 : ¬ Reader r1815 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1815

def r1816 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.var 0))) (.var 2))))
theorem reject1816 : ¬ Reader r1816 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1816

def r1817 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1817 : ¬ Reader r1817 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1817

def r1826 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1826 : ¬ Reader r1826 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1826

def r1827 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1827 : ¬ Reader r1827 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1827

def r1861 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1861 : ¬ Reader r1861 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1861

def r1862 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1862 : ¬ Reader r1862 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1862

def r1865 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1865 : ¬ Reader r1865 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1865

def r1866 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1866 : ¬ Reader r1866 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1866

def r1867 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject1867 : ¬ Reader r1867 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1867

def r1869 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1869 : ¬ Reader r1869 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1869

def r1871 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject1871 : ¬ Reader r1871 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1871

def r1873 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1873 : ¬ Reader r1873 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1873

def r1875 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1875 : ¬ Reader r1875 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1875

def r1877 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject1877 : ¬ Reader r1877 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1877

def r1878 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject1878 : ¬ Reader r1878 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1878

def r1879 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 2) (.var 0))))
theorem reject1879 : ¬ Reader r1879 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1879

def r1880 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.app (.var 0) (.var 2))))
theorem reject1880 : ¬ Reader r1880 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1880

def r1885 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject1885 : ¬ Reader r1885 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1885

def r1886 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject1886 : ¬ Reader r1886 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1886

def r1887 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 2) (.var 0))))
theorem reject1887 : ¬ Reader r1887 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1887

def r1888 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.var 0) (.var 2))))
theorem reject1888 : ¬ Reader r1888 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1888

def r1889 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject1889 : ¬ Reader r1889 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1889

def r1890 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject1890 : ¬ Reader r1890 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1890

def r1893 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject1893 : ¬ Reader r1893 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1893

def r1894 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject1894 : ¬ Reader r1894 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1894

def r1897 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 2) (.var 0))))
theorem reject1897 : ¬ Reader r1897 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1897

def r1898 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 0) (.var 2))))
theorem reject1898 : ¬ Reader r1898 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1898

def r1901 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1901 : ¬ Reader r1901 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1901

def r1902 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1902 : ¬ Reader r1902 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1902

def r1905 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1905 : ¬ Reader r1905 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1905

def r1906 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1906 : ¬ Reader r1906 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1906

def r1909 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1909 : ¬ Reader r1909 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1909

def r1910 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1910 : ¬ Reader r1910 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1910

def r1913 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1913 : ¬ Reader r1913 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1913

def r1915 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject1915 : ¬ Reader r1915 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1915

def r1917 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1917 : ¬ Reader r1917 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1917

def r1918 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1918 : ¬ Reader r1918 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1918

def r1919 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)))) (.var 2)))
theorem reject1919 : ¬ Reader r1919 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1919

def r1921 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1921 : ¬ Reader r1921 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1921

def r1923 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1923 : ¬ Reader r1923 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1923

def r1925 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) (.var 2)))
theorem reject1925 : ¬ Reader r1925 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1925

def r1927 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1927 : ¬ Reader r1927 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1927

def r1929 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.var 2)))
theorem reject1929 : ¬ Reader r1929 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1929

def r1931 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1931 : ¬ Reader r1931 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1931

def r1932 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1932 : ¬ Reader r1932 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1932

def r1933 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1933 : ¬ Reader r1933 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1933

def r1935 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1935 : ¬ Reader r1935 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1935

def r1936 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 2)))
theorem reject1936 : ¬ Reader r1936 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1936

def r1940 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1940 : ¬ Reader r1940 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1940

def r1942 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1942 : ¬ Reader r1942 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1942

def r1946 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 2)))
theorem reject1946 : ¬ Reader r1946 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1946

def r1948 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))))) (.var 2)))
theorem reject1948 : ¬ Reader r1948 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject1948

def r1950 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1950 : ¬ Reader r1950 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject1950

def r1951 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 2)))
theorem reject1951 : ¬ Reader r1951 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1951

def r1954 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1)))) (.var 2)))
theorem reject1954 : ¬ Reader r1954 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1954

def r1961 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1961 : ¬ Reader r1961 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1961

def r1963 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1963 : ¬ Reader r1963 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1963

def r1965 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1965 : ¬ Reader r1965 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1965

def r1969 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 2)) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1969 : ¬ Reader r1969 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject1969

def r1973 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1973 : ¬ Reader r1973 := by
  exact head_reduct true 4 (0,8) (by decide) (by decide)
#print axioms reject1973

def r1974 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject1974 : ¬ Reader r1974 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1974

def r1975 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject1975 : ¬ Reader r1975 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1975

def r1976 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0))) (.var 2)))
theorem reject1976 : ¬ Reader r1976 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject1976

def r1981 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1981 : ¬ Reader r1981 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1981

def r1982 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject1982 : ¬ Reader r1982 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1982

def r1983 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject1983 : ¬ Reader r1983 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1983

def r1984 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))) (.var 2)))
theorem reject1984 : ¬ Reader r1984 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1984

def r1985 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject1985 : ¬ Reader r1985 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1985

def r1986 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0))) (.var 2)))
theorem reject1986 : ¬ Reader r1986 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1986

def r1989 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1989 : ¬ Reader r1989 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1989

def r1990 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject1990 : ¬ Reader r1990 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1990

def r1993 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject1993 : ¬ Reader r1993 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject1993

def r1994 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 0))) (.var 2)))
theorem reject1994 : ¬ Reader r1994 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1994

def r1997 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1997 : ¬ Reader r1997 := by
  exact head_reduct true 4 (0,8) (by decide) (by decide)
#print axioms reject1997

def r1998 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject1998 : ¬ Reader r1998 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1998

def r2001 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2001 : ¬ Reader r2001 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject2001

def r2002 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject2002 : ¬ Reader r2002 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject2002

def r2005 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2005 : ¬ Reader r2005 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2005

def r2006 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2006 : ¬ Reader r2006 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2006

def r2007 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject2007 : ¬ Reader r2007 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2007

def r2008 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))) (.var 2)))
theorem reject2008 : ¬ Reader r2008 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject2008

def r2009 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject2009 : ¬ Reader r2009 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2009

def r2010 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))) (.var 2)))
theorem reject2010 : ¬ Reader r2010 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2010

def r2011 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))))) (.var 2)))
theorem reject2011 : ¬ Reader r2011 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2011

def r2013 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) (.var 2)))
theorem reject2013 : ¬ Reader r2013 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2013

def r2015 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))))) (.var 2)))
theorem reject2015 : ¬ Reader r2015 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2015

def r2017 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2017 : ¬ Reader r2017 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2017

def r2018 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2018 : ¬ Reader r2018 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject2018

def r2019 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject2019 : ¬ Reader r2019 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2019

def r2021 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2021 : ¬ Reader r2021 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2021

def r2023 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject2023 : ¬ Reader r2023 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2023

def r2025 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject2025 : ¬ Reader r2025 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2025

def r2027 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0)))) (.var 2)))
theorem reject2027 : ¬ Reader r2027 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2027

def r2029 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2029 : ¬ Reader r2029 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2029

def r2031 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject2031 : ¬ Reader r2031 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2031

def r2033 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject2033 : ¬ Reader r2033 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2033

def r2035 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)))) (.var 2)))
theorem reject2035 : ¬ Reader r2035 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2035

def r2037 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))))) (.var 2)))
theorem reject2037 : ¬ Reader r2037 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2037

def r2039 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject2039 : ¬ Reader r2039 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2039

def r2041 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))))) (.var 2)))
theorem reject2041 : ¬ Reader r2041 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2041

def r2043 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1)))) (.var 2)))
theorem reject2043 : ¬ Reader r2043 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2043

def r2045 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0))))) (.var 2)))
theorem reject2045 : ¬ Reader r2045 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2045

def r2047 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject2047 : ¬ Reader r2047 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2047

def r2051 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject2051 : ¬ Reader r2051 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2051

def r2053 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2053 : ¬ Reader r2053 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2053

def r2054 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))) (.var 2)))
theorem reject2054 : ¬ Reader r2054 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2054

def r2055 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject2055 : ¬ Reader r2055 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2055

def r2057 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2057 : ¬ Reader r2057 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2057

def r2059 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject2059 : ¬ Reader r2059 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2059

def r2061 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2061 : ¬ Reader r2061 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2061

def r2062 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))) (.var 2)))
theorem reject2062 : ¬ Reader r2062 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject2062

def r2063 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject2063 : ¬ Reader r2063 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2063

def r2065 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2065 : ¬ Reader r2065 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2065

def r2067 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject2067 : ¬ Reader r2067 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2067

def r2071 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2071 : ¬ Reader r2071 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2071

def r2073 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 2)) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2073 : ¬ Reader r2073 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2073

def r2075 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2075 : ¬ Reader r2075 := by
  exact head_reduct true 4 (0,8) (by decide) (by decide)
#print axioms reject2075

def r2077 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2077 : ¬ Reader r2077 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject2077

def r2079 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2079 : ¬ Reader r2079 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2079

def r2081 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2081 : ¬ Reader r2081 := by
  exact head_reduct true 8 (3,4) (by decide) (by decide)
#print axioms reject2081

def r2083 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2083 : ¬ Reader r2083 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject2083

def r2085 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2085 : ¬ Reader r2085 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject2085

def r2087 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2087 : ¬ Reader r2087 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2087

def r2099 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2099 : ¬ Reader r2099 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2099

def r2101 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2101 : ¬ Reader r2101 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2101

def r2103 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject2103 : ¬ Reader r2103 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2103

def r2104 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject2104 : ¬ Reader r2104 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2104

def r2107 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject2107 : ¬ Reader r2107 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2107

def r2108 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject2108 : ¬ Reader r2108 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2108

def r2113 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2113 : ¬ Reader r2113 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2113

def r2114 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject2114 : ¬ Reader r2114 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2114

def r2117 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2117 : ¬ Reader r2117 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2117

def r2118 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2118 : ¬ Reader r2118 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2118

def r2119 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject2119 : ¬ Reader r2119 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2119

def r2121 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2121 : ¬ Reader r2121 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2121

def r2123 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject2123 : ¬ Reader r2123 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2123

def r2125 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2125 : ¬ Reader r2125 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2125

def r2127 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2127 : ¬ Reader r2127 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2127

def r2129 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2129 : ¬ Reader r2129 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2129

def r2130 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject2130 : ¬ Reader r2130 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2130

def r2133 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2133 : ¬ Reader r2133 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2133

def r2134 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2134 : ¬ Reader r2134 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2134

def r2135 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject2135 : ¬ Reader r2135 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2135

def r2137 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2137 : ¬ Reader r2137 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2137

def r2139 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject2139 : ¬ Reader r2139 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2139

def r2141 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2141 : ¬ Reader r2141 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2141

def r2143 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2143 : ¬ Reader r2143 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2143

def r2145 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2145 : ¬ Reader r2145 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2145

def r2147 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2147 : ¬ Reader r2147 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2147

def r2149 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2149 : ¬ Reader r2149 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2149

def r2151 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2151 : ¬ Reader r2151 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2151

def r2153 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2153 : ¬ Reader r2153 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2153

def r2155 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2155 : ¬ Reader r2155 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2155

def r2157 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2157 : ¬ Reader r2157 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2157

def r2159 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2159 : ¬ Reader r2159 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2159

def r2161 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2161 : ¬ Reader r2161 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2161

def r2163 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2163 : ¬ Reader r2163 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2163

def r2165 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2165 : ¬ Reader r2165 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2165

def r2171 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject2171 : ¬ Reader r2171 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2171

def r2173 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 0))))
theorem reject2173 : ¬ Reader r2173 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2173

def r2174 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 0) (.var 2))))
theorem reject2174 : ¬ Reader r2174 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2174

def r2178 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject2178 : ¬ Reader r2178 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2178

def r2179 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 0))) (.var 2)))
theorem reject2179 : ¬ Reader r2179 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2179

def r2182 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject2182 : ¬ Reader r2182 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2182

def r2183 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2183 : ¬ Reader r2183 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2183

def r2184 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))))) (.var 2)))
theorem reject2184 : ¬ Reader r2184 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2184

def r2186 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject2186 : ¬ Reader r2186 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2186

def r2188 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)))) (.var 2)))
theorem reject2188 : ¬ Reader r2188 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2188

def r2190 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject2190 : ¬ Reader r2190 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2190

def r2192 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject2192 : ¬ Reader r2192 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2192

def r2194 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject2194 : ¬ Reader r2194 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2194

def r2196 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject2196 : ¬ Reader r2196 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2196

def r2198 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject2198 : ¬ Reader r2198 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2198

def r2208 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2208 : ¬ Reader r2208 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2208

def r2210 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2210 : ¬ Reader r2210 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2210

def r2212 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject2212 : ¬ Reader r2212 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2212

def r2213 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject2213 : ¬ Reader r2213 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2213

def r2216 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject2216 : ¬ Reader r2216 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2216

def r2217 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject2217 : ¬ Reader r2217 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2217

def r2222 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2222 : ¬ Reader r2222 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2222

def r2223 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject2223 : ¬ Reader r2223 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2223

def r2226 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2226 : ¬ Reader r2226 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2226

def r2227 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2227 : ¬ Reader r2227 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2227

def r2228 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject2228 : ¬ Reader r2228 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2228

def r2230 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2230 : ¬ Reader r2230 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2230

def r2232 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject2232 : ¬ Reader r2232 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2232

def r2234 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2234 : ¬ Reader r2234 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2234

def r2236 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2236 : ¬ Reader r2236 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2236

def r2238 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject2238 : ¬ Reader r2238 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2238

def r2239 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject2239 : ¬ Reader r2239 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2239

def r2242 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject2242 : ¬ Reader r2242 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2242

def r2243 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2243 : ¬ Reader r2243 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2243

def r2244 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject2244 : ¬ Reader r2244 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2244

def r2246 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject2246 : ¬ Reader r2246 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2246

def r2248 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)))) (.var 2)))
theorem reject2248 : ¬ Reader r2248 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2248

def r2250 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2250 : ¬ Reader r2250 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2250

def r2252 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2252 : ¬ Reader r2252 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2252

def r2254 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2254 : ¬ Reader r2254 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2254

def r2256 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2256 : ¬ Reader r2256 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2256

def r2258 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2258 : ¬ Reader r2258 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2258

def r2260 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2260 : ¬ Reader r2260 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2260

def r2262 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2262 : ¬ Reader r2262 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2262

def r2264 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2264 : ¬ Reader r2264 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2264

def r2266 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2266 : ¬ Reader r2266 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2266

def r2268 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject2268 : ¬ Reader r2268 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2268

def r2270 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2270 : ¬ Reader r2270 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2270

def r2271 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2271 : ¬ Reader r2271 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject2271

def r2273 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.var 2)))
theorem reject2273 : ¬ Reader r2273 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2273

def r2275 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2275 : ¬ Reader r2275 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2275

def r2277 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.var 2)))
theorem reject2277 : ¬ Reader r2277 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2277

def r2279 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 2)))
theorem reject2279 : ¬ Reader r2279 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2279

def r2281 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2281 : ¬ Reader r2281 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2281

def r2283 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 2)))
theorem reject2283 : ¬ Reader r2283 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2283

def r2285 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))) (.var 2)))
theorem reject2285 : ¬ Reader r2285 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2285

def r2287 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 2)))
theorem reject2287 : ¬ Reader r2287 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2287

def r2289 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) (.var 2)))
theorem reject2289 : ¬ Reader r2289 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2289

def r2291 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) (.var 2)))
theorem reject2291 : ¬ Reader r2291 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2291

def r2295 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2295 : ¬ Reader r2295 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject2295

def r2296 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)))
theorem reject2296 : ¬ Reader r2296 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject2296

def r2297 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject2297 : ¬ Reader r2297 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2297

def r2299 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2299 : ¬ Reader r2299 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2299

def r2300 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject2300 : ¬ Reader r2300 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject2300

def r2303 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2303 : ¬ Reader r2303 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject2303

def r2304 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 2)))
theorem reject2304 : ¬ Reader r2304 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject2304

def r2305 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))))) (.var 2)))
theorem reject2305 : ¬ Reader r2305 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2305

def r2307 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))))) (.var 2)))
theorem reject2307 : ¬ Reader r2307 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2307

def r2309 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))) (.var 2)))
theorem reject2309 : ¬ Reader r2309 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2309

def r2311 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject2311 : ¬ Reader r2311 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2311

def r2313 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))))))) (.var 2)))
theorem reject2313 : ¬ Reader r2313 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2313

def r2315 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject2315 : ¬ Reader r2315 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2315

def r2317 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2317 : ¬ Reader r2317 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2317

def r2319 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject2319 : ¬ Reader r2319 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2319

def r2321 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2321 : ¬ Reader r2321 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2321

def r2323 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))))) (.var 2)))
theorem reject2323 : ¬ Reader r2323 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2323

def r2325 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject2325 : ¬ Reader r2325 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2325

def r2331 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2331 : ¬ Reader r2331 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2331

def r2333 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 0))))
theorem reject2333 : ¬ Reader r2333 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2333

def r2334 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 0) (.var 2))))
theorem reject2334 : ¬ Reader r2334 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2334

def r2337 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject2337 : ¬ Reader r2337 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2337

def r2338 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject2338 : ¬ Reader r2338 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2338

def r2341 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject2341 : ¬ Reader r2341 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2341

def r2342 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject2342 : ¬ Reader r2342 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2342

def r2350 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2350 : ¬ Reader r2350 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2350

def r2351 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject2351 : ¬ Reader r2351 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2351

def r2354 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2354 : ¬ Reader r2354 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2354

def r2356 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 2)))
theorem reject2356 : ¬ Reader r2356 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2356

def r2358 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2358 : ¬ Reader r2358 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2358

def r2359 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2359 : ¬ Reader r2359 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2359

def r2360 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) (.var 2)))
theorem reject2360 : ¬ Reader r2360 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2360

def r2362 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2362 : ¬ Reader r2362 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2362

def r2364 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.var 2)))
theorem reject2364 : ¬ Reader r2364 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2364

def r2366 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2366 : ¬ Reader r2366 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2366

def r2368 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2368 : ¬ Reader r2368 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2368

def r2370 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2370 : ¬ Reader r2370 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2370

def r2371 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject2371 : ¬ Reader r2371 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2371

def r2374 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2374 : ¬ Reader r2374 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2374

def r2375 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2375 : ¬ Reader r2375 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject2375

def r2376 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 2)))
theorem reject2376 : ¬ Reader r2376 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2376

def r2378 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2378 : ¬ Reader r2378 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2378

def r2380 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))))) (.var 2)))
theorem reject2380 : ¬ Reader r2380 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2380

def r2382 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2382 : ¬ Reader r2382 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2382

def r2383 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2383 : ¬ Reader r2383 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2383

def r2384 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))) (.var 2)))
theorem reject2384 : ¬ Reader r2384 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2384

def r2386 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2386 : ¬ Reader r2386 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2386

def r2388 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2388 : ¬ Reader r2388 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject2388

def r2389 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 3) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0))) (.var 2)))
theorem reject2389 : ¬ Reader r2389 := by
  exact head_reduct true 4 (0,3) (by decide) (by decide)
#print axioms reject2389

def r2392 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2392 : ¬ Reader r2392 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2392

def r2394 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))))) (.var 2)))
theorem reject2394 : ¬ Reader r2394 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2394

def r2396 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2396 : ¬ Reader r2396 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2396

def r2398 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))))) (.var 2)))
theorem reject2398 : ¬ Reader r2398 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2398

def r2400 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2400 : ¬ Reader r2400 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2400

def r2402 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))))) (.var 2)))
theorem reject2402 : ¬ Reader r2402 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2402

def r2404 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2404 : ¬ Reader r2404 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2404

def r2406 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))))) (.var 2)))
theorem reject2406 : ¬ Reader r2406 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2406

def r2408 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2408 : ¬ Reader r2408 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2408

def r2409 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2409 : ¬ Reader r2409 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2409

def r2410 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2))))) (.var 2)))
theorem reject2410 : ¬ Reader r2410 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2410

def r2412 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2412 : ¬ Reader r2412 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2412

def r2413 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0)))) (.var 2)))
theorem reject2413 : ¬ Reader r2413 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2413

def r2417 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2417 : ¬ Reader r2417 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2417

def r2419 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2419 : ¬ Reader r2419 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2419

def r2421 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2421 : ¬ Reader r2421 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2421

def r2423 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2423 : ¬ Reader r2423 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2423

def r2425 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject2425 : ¬ Reader r2425 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2425

def r2427 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))))) (.var 2)))
theorem reject2427 : ¬ Reader r2427 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2427

def r2429 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2429 : ¬ Reader r2429 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2429

def r2431 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) (.var 2)))
theorem reject2431 : ¬ Reader r2431 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2431

def r2433 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) (.var 2)))
theorem reject2433 : ¬ Reader r2433 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2433

def r2435 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2435 : ¬ Reader r2435 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2435

def r2437 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2437 : ¬ Reader r2437 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2437

def r2439 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))))) (.var 2)))
theorem reject2439 : ¬ Reader r2439 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2439

def r2441 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))))) (.var 2)))
theorem reject2441 : ¬ Reader r2441 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2441

def r2443 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2443 : ¬ Reader r2443 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2443

def r2444 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2444 : ¬ Reader r2444 := by
  exact head_reduct true 6 (0,3) (by decide) (by decide)
#print axioms reject2444

def r2449 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2449 : ¬ Reader r2449 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2449

def r2451 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 2) (.var 0))))
theorem reject2451 : ¬ Reader r2451 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2451

def r2452 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.app (.var 0) (.var 2))))
theorem reject2452 : ¬ Reader r2452 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2452

def r2456 : Term := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2456 : ¬ Reader r2456 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2456

def r2457 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 0))) (.var 2)))
theorem reject2457 : ¬ Reader r2457 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2457

def r2460 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2460 : ¬ Reader r2460 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2460

def r2461 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2461 : ¬ Reader r2461 := by
  exact head_reduct true 5 (3,2) (by decide) (by decide)
#print axioms reject2461

def r2462 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))))) (.var 2)))
theorem reject2462 : ¬ Reader r2462 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2462

def r2464 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2464 : ¬ Reader r2464 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2464

def r2466 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))))) (.var 2)))
theorem reject2466 : ¬ Reader r2466 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2466

def r2468 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2468 : ¬ Reader r2468 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2468

def r2469 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))) (.var 2)))
theorem reject2469 : ¬ Reader r2469 := by
  exact head_reduct true 3 (0,4) (by decide) (by decide)
#print axioms reject2469

def r2470 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))))) (.var 2)))
theorem reject2470 : ¬ Reader r2470 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2470

def r2472 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2472 : ¬ Reader r2472 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2472

def r2474 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)))) (.var 2)))
theorem reject2474 : ¬ Reader r2474 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2474

def r2476 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2476 : ¬ Reader r2476 := by
  exact head_reduct true 3 (0,6) (by decide) (by decide)
#print axioms reject2476

def r2478 : Term := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2478 : ¬ Reader r2478 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject2478

def r2480 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2480 : ¬ Reader r2480 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2480

def r2482 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject2482 : ¬ Reader r2482 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2482

def r2484 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))))) (.var 2)))
theorem reject2484 : ¬ Reader r2484 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2484

def r2486 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2486 : ¬ Reader r2486 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2486

def r2488 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))))) (.var 2)))
theorem reject2488 : ¬ Reader r2488 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2488

def r2490 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) (.var 2)))
theorem reject2490 : ¬ Reader r2490 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2490

def r2492 : Term := (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))))) (.var 2)))
theorem reject2492 : ¬ Reader r2492 := by
  exact head_reduct true 2 (0,4) (by decide) (by decide)
#print axioms reject2492

end Blc.FirstopNonlinear.Q1NestedHead
