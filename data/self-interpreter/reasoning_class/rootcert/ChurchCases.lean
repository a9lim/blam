import Church
namespace Blc.Rootcert.ChurchCases
open Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet RootcertChurch
set_option maxRecDepth 10000

def r56 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject56 : ¬ Reader r56 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1) (.var 0) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 1 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject56

def r57 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject57 : ¬ Reader r57 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject57

def r58 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject58 : ¬ Reader r58 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 1 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject58

def r59 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject59 : ¬ Reader r59 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 0 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject59

def r64 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject64 : ¬ Reader r64 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1) (.var 0) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 1 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject64

def r65 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject65 : ¬ Reader r65 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject65

def r66 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject66 : ¬ Reader r66 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 1 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject66

def r67 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject67 : ¬ Reader r67 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 0 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject67

def r72 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject72 : ¬ Reader r72 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1) (.var 0) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 1 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject72

def r73 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject73 : ¬ Reader r73 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject73

def r74 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject74 : ¬ Reader r74 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 1 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject74

def r75 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject75 : ¬ Reader r75 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 0 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject75

def r80 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject80 : ¬ Reader r80 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1) (.var 0) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 1 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject80

def r81 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject81 : ¬ Reader r81 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject82 : ¬ Reader r82 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 1 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject83 : ¬ Reader r83 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 0 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject83

def r88 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject88 : ¬ Reader r88 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1) (.var 0) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 1 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject89 : ¬ Reader r89 := by
 exact positive_wrong_head [[1, 1, 1]] (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject89

def r90 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject90 : ¬ Reader r90 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 1 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject91 : ¬ Reader r91 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) [] 0 1 (by decide) (by decide) (by decide) (by decide)
#print axioms reject91

def r147 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject147 : ¬ Reader r147 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject147

def r149 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject149 : ¬ Reader r149 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject149

def r151 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject151 : ¬ Reader r151 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject151

def r153 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject153 : ¬ Reader r153 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject153

def r155 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1))
theorem reject155 : ¬ Reader r155 := by
 exact positive_wrong_head [[1, 1]] (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 0) (.var 1) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] 0 0 (by decide) (by decide) (by decide) (by decide)
#print axioms reject155
end Blc.Rootcert.ChurchCases
