import Strict
namespace Blc.RootNLStrict.StrictCases1
open Term SelfintClass
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r80 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject80 : ¬ Reader r80 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject80

def r81 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject81 : ¬ Reader r81 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject81

def r82 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject82 : ¬ Reader r82 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject82

def r83 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject83 : ¬ Reader r83 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject83

def r84 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject84 : ¬ Reader r84 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject84

def r85 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject85 : ¬ Reader r85 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject85

def r86 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject86 : ¬ Reader r86 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject86

def r87 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject87 : ¬ Reader r87 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject87

def r88 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject88 : ¬ Reader r88 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject88

def r89 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject89 : ¬ Reader r89 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject89

def r90 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject90 : ¬ Reader r90 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject90

def r91 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject91 : ¬ Reader r91 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject91

def r92 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject92 : ¬ Reader r92 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject92

def r93 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject93 : ¬ Reader r93 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject93

def r94 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject94 : ¬ Reader r94 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject94

def r95 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject95 : ¬ Reader r95 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject95

def r96 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject96 : ¬ Reader r96 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject96

def r97 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject97 : ¬ Reader r97 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0)))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject97

def r98 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject98 : ¬ Reader r98 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0)))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject98

def r99 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject99 : ¬ Reader r99 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject99

def r100 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject100 : ¬ Reader r100 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject100

def r101 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject101 : ¬ Reader r101 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject101

def r102 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject102 : ¬ Reader r102 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject102

def r103 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject103 : ¬ Reader r103 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject103

def r104 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject104 : ¬ Reader r104 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))
#print axioms reject104

def r105 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject105 : ¬ Reader r105 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject105

def r106 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject106 : ¬ Reader r106 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject106

def r107 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject107 : ¬ Reader r107 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject107

def r108 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject108 : ¬ Reader r108 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject108

def r109 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject109 : ¬ Reader r109 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.var 0)) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject109

def r110 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject110 : ¬ Reader r110 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.var 0)) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject110

def r111 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject111 : ¬ Reader r111 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject111

def r112 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject112 : ¬ Reader r112 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject112

def r113 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject113 : ¬ Reader r113 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject113

def r114 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject114 : ¬ Reader r114 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject114

def r115 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject115 : ¬ Reader r115 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject115

def r116 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject116 : ¬ Reader r116 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.strict [(.app (.var 0) (.lam (.var 1)))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject116

def r117 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject117 : ¬ Reader r117 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject117

def r118 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject118 : ¬ Reader r118 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))))
#print axioms reject118

def r119 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject119 : ¬ Reader r119 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))
#print axioms reject119

def r120 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject120 : ¬ Reader r120 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))
#print axioms reject120

def r121 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject121 : ¬ Reader r121 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))
#print axioms reject121

def r122 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject122 : ¬ Reader r122 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide))))))
#print axioms reject122

def r123 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject123 : ¬ Reader r123 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject123

def r124 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject124 : ¬ Reader r124 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject124

def r125 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject125 : ¬ Reader r125 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject125

def r126 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject126 : ¬ Reader r126 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject126

def r127 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject127 : ¬ Reader r127 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject127

def r128 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject128 : ¬ Reader r128 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.var 0)) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.left (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [[2], [2]] [] (by decide)))))))))
#print axioms reject128

def r129 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject129 : ¬ Reader r129 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [(.app (.app (.var 0) (.lam (.var 0))) (.var 0))] (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject129

def r130 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject130 : ¬ Reader r130 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.app (.var 0) (.lam (.var 0))) (.var 0))] (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject130

def r131 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject131 : ¬ Reader r131 := by
 exact reject [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject131

def r132 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject132 : ¬ Reader r132 := by
 exact reject [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject132

def r133 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject133 : ¬ Reader r133 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject133

def r134 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject134 : ¬ Reader r134 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject134

def r135 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject135 : ¬ Reader r135 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.strict [(.app (.app (.var 0) (.lam (.var 0))) (.var 0))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject135

def r136 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject136 : ¬ Reader r136 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.strict [(.app (.app (.var 0) (.lam (.var 0))) (.var 0))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject136

def r137 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject137 : ¬ Reader r137 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.strict [(.app (.app (.var 0) (.lam (.var 0))) (.var 0))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject137

def r138 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject138 : ¬ Reader r138 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.strict [(.app (.app (.var 0) (.lam (.var 0))) (.var 0))] (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject138

def r139 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject139 : ¬ Reader r139 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.left (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject139

def r140 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject140 : ¬ Reader r140 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.left (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject140

def r141 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject141 : ¬ Reader r141 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject141

def r142 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject142 : ¬ Reader r142 := by
 exact reject [[1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (Bad.left (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide))))))))
#print axioms reject142

def r143 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject143 : ¬ Reader r143 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 0) (Bad.left (.var 1) (Bad.left (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject143

def r144 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject144 : ¬ Reader r144 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] (by decide) (Bad.left (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (Bad.left (.var 1) (Bad.left (.var 0) (Bad.left (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (Bad.replay (t := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] (by decide) (Bad.cycle (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] [] (by decide)))))))
#print axioms reject144
end Blc.RootNLStrict.StrictCases1
