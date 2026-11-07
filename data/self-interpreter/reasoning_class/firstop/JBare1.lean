import LinearCertificates
namespace Blc.Firstop.JBare1
open Term SelfintClass
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r0 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject0 : ¬ Reader r0 :=
  refute_zero r0 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject0
def r1 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1 : ¬ Reader r1 :=
  refute_zero r1 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1
def r2 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2 : ¬ Reader r2 :=
  refute_zero r2 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2
def r3 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3 : ¬ Reader r3 :=
  refute_zero r3 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3
def r4 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject4 : ¬ Reader r4 :=
  refute_zero r4 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4
def r5 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject5 : ¬ Reader r5 :=
  refute_zero r5 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject5
def r6 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject6 : ¬ Reader r6 :=
  refute_zero r6 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject6
def r7 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject7 : ¬ Reader r7 :=
  refute_zero r7 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject7
def r8 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject8 : ¬ Reader r8 :=
  refute_zero r8 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject8
def r9 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject9 : ¬ Reader r9 :=
  refute_zero r9 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject9
def r10 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject10 : ¬ Reader r10 :=
  refute_zero r10 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject10
def r11 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject11 : ¬ Reader r11 :=
  refute_zero r11 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject11
def r12 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject12 : ¬ Reader r12 :=
  refute_zero r12 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject12
def r13 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject13 : ¬ Reader r13 :=
  refute_zero r13 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject13
def r14 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject14 : ¬ Reader r14 :=
  refute_zero r14 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject14
def r15 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject15 : ¬ Reader r15 :=
  refute_zero r15 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject15
def r16 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject16 : ¬ Reader r16 :=
  refute_zero r16 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject16
def r17 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject17 : ¬ Reader r17 :=
  refute_zero r17 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject17
def r18 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject18 : ¬ Reader r18 :=
  refute_zero r18 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject18
def r19 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject19 : ¬ Reader r19 :=
  refute_zero r19 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject19
def r20 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject20 : ¬ Reader r20 :=
  refute_zero r20 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0))))) 5 (by decide) (by decide) (by decide)
#print axioms reject20
def r21 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject21 : ¬ Reader r21 :=
  refute_zero r21 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject21
def r22 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject22 : ¬ Reader r22 :=
  refute_zero r22 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject22
def r23 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject23 : ¬ Reader r23 :=
  refute_zero r23 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject23
def r24 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject24 : ¬ Reader r24 :=
  refute_zero r24 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject24
def r25 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject25 : ¬ Reader r25 :=
  refute_zero r25 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject25
def r26 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject26 : ¬ Reader r26 :=
  refute_zero r26 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject26
def r27 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject27 : ¬ Reader r27 :=
  refute_zero r27 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject27
def r28 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject28 : ¬ Reader r28 :=
  refute_zero r28 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject28
def r29 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject29 : ¬ Reader r29 :=
  refute_zero r29 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject29
def r30 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject30 : ¬ Reader r30 :=
  refute_zero r30 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject30
def r31 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject31 : ¬ Reader r31 :=
  refute_zero r31 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))))) 5 (by decide) (by decide) (by decide)
#print axioms reject31
def r32 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject32 : ¬ Reader r32 :=
  refute_zero r32 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject32
def r33 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))))
theorem reject33 : ¬ Reader r33 :=
  refute_zero r33 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject33
def r34 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))
theorem reject34 : ¬ Reader r34 :=
  refute_zero r34 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))))) 5 (by decide) (by decide) (by decide)
#print axioms reject34
def r35 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))
theorem reject35 : ¬ Reader r35 :=
  refute_zero r35 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))))) 5 (by decide) (by decide) (by decide)
#print axioms reject35
def r36 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))
theorem reject36 : ¬ Reader r36 :=
  refute_zero r36 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))))) 5 (by decide) (by decide) (by decide)
#print axioms reject36
def r37 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))
theorem reject37 : ¬ Reader r37 :=
  refute_zero r37 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject37
def r38 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))
theorem reject38 : ¬ Reader r38 :=
  refute_zero r38 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject38
def r39 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))
theorem reject39 : ¬ Reader r39 :=
  refute_zero r39 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject39
def r40 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))
theorem reject40 : ¬ Reader r40 :=
  refute_zero r40 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject40
def r41 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))))
theorem reject41 : ¬ Reader r41 :=
  refute_zero r41 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) 5 (by decide) (by decide) (by decide)
#print axioms reject41
def r42 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))))
theorem reject42 : ¬ Reader r42 :=
  refute_zero r42 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject42
def r43 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))
theorem reject43 : ¬ Reader r43 :=
  refute_zero r43 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject43
def r44 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))
theorem reject44 : ¬ Reader r44 :=
  refute_zero r44 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject44
def r45 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))
theorem reject45 : ¬ Reader r45 :=
  refute_zero r45 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject45
def r46 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))
theorem reject46 : ¬ Reader r46 :=
  refute_zero r46 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject46
def r47 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))))
theorem reject47 : ¬ Reader r47 :=
  refute_zero r47 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject47
def r48 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))))
theorem reject48 : ¬ Reader r48 :=
  refute_zero r48 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject48
def r49 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject49 : ¬ Reader r49 :=
  refute_zero r49 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject49
def r50 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject50 : ¬ Reader r50 :=
  refute_zero r50 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject50
def r51 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject51 : ¬ Reader r51 :=
  refute_zero r51 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject51
def r52 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject52 : ¬ Reader r52 :=
  refute_zero r52 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject52
def r53 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject53 : ¬ Reader r53 :=
  refute_zero r53 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) 5 (by decide) (by decide) (by decide)
#print axioms reject53
def r54 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject54 : ¬ Reader r54 :=
  refute_zero r54 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject54
def r55 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject55 : ¬ Reader r55 :=
  refute_zero r55 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject55
def r56 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject56 : ¬ Reader r56 :=
  refute_zero r56 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject56
def r57 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject57 : ¬ Reader r57 :=
  refute_zero r57 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject57
def r58 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject58 : ¬ Reader r58 :=
  refute_zero r58 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject58
def r59 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject59 : ¬ Reader r59 :=
  refute_zero r59 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject59
def r60 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject60 : ¬ Reader r60 :=
  refute_zero r60 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject60
def r61 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1)))))
theorem reject61 : ¬ Reader r61 :=
  refute_zero r61 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject61
def r62 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject62 : ¬ Reader r62 :=
  refute_zero r62 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject62
def r63 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0)))))
theorem reject63 : ¬ Reader r63 :=
  refute_zero r63 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject63
def r64 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject64 : ¬ Reader r64 :=
  refute_zero r64 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject64
def r65 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject65 : ¬ Reader r65 :=
  refute_zero r65 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject65
def r66 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1))))
theorem reject66 : ¬ Reader r66 :=
  refute_zero r66 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject66
def r67 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject67 : ¬ Reader r67 :=
  refute_zero r67 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject67
def r68 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject68 : ¬ Reader r68 :=
  refute_zero r68 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject68
def r69 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1))))
theorem reject69 : ¬ Reader r69 :=
  refute_zero r69 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject69
def r70 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1))))
theorem reject70 : ¬ Reader r70 :=
  refute_zero r70 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject70
def r71 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject71 : ¬ Reader r71 :=
  refute_zero r71 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject71
def r72 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject72 : ¬ Reader r72 :=
  refute_zero r72 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject72
def r73 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject73 : ¬ Reader r73 :=
  refute_zero r73 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject73
def r74 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 1))))
theorem reject74 : ¬ Reader r74 :=
  refute_zero r74 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject74
def r75 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 1))))
theorem reject75 : ¬ Reader r75 :=
  refute_zero r75 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject75
def r76 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 1))))
theorem reject76 : ¬ Reader r76 :=
  refute_zero r76 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject76
def r77 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 1))))
theorem reject77 : ¬ Reader r77 :=
  refute_zero r77 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject77
def r78 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 1))))
theorem reject78 : ¬ Reader r78 :=
  refute_zero r78 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject78
def r79 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 1))))
theorem reject79 : ¬ Reader r79 :=
  refute_zero r79 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject79
def r80 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0))))
theorem reject80 : ¬ Reader r80 :=
  refute_zero r80 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject80
def r81 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0))))
theorem reject81 : ¬ Reader r81 :=
  refute_zero r81 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject81
def r82 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject82 : ¬ Reader r82 :=
  refute_zero r82 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject82
def r83 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0))))
theorem reject83 : ¬ Reader r83 :=
  refute_zero r83 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject83
def r84 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0))))
theorem reject84 : ¬ Reader r84 :=
  refute_zero r84 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject84
def r85 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))))
theorem reject85 : ¬ Reader r85 :=
  refute_zero r85 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject85
def r86 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2))))))
theorem reject86 : ¬ Reader r86 :=
  refute_zero r86 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject86
def r87 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1))))
theorem reject87 : ¬ Reader r87 :=
  refute_zero r87 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject87
def r88 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))))
theorem reject88 : ¬ Reader r88 :=
  refute_zero r88 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject88
def r89 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))))
theorem reject89 : ¬ Reader r89 :=
  refute_zero r89 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject89
def r90 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject90 : ¬ Reader r90 :=
  refute_zero r90 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject90
def r91 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject91 : ¬ Reader r91 :=
  refute_zero r91 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject91
def r92 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject92 : ¬ Reader r92 :=
  refute_zero r92 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject92
def r93 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject93 : ¬ Reader r93 :=
  refute_zero r93 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject93
def r94 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject94 : ¬ Reader r94 :=
  refute_zero r94 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject94
def r95 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject95 : ¬ Reader r95 :=
  refute_zero r95 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject95
def r96 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject96 : ¬ Reader r96 :=
  refute_zero r96 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject96
def r97 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject97 : ¬ Reader r97 :=
  refute_zero r97 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject97
def r98 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject98 : ¬ Reader r98 :=
  refute_zero r98 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject98
def r99 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject99 : ¬ Reader r99 :=
  refute_zero r99 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject99
def r100 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject100 : ¬ Reader r100 :=
  refute_zero r100 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject100
def r101 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject101 : ¬ Reader r101 :=
  refute_zero r101 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject101
def r102 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject102 : ¬ Reader r102 :=
  refute_zero r102 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject102
def r103 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject103 : ¬ Reader r103 :=
  refute_zero r103 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject103
def r104 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 2) (.var 2)))))))
theorem reject104 : ¬ Reader r104 :=
  refute_zero r104 (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject104
def r105 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.var 2) (.app (.app (.var 2) (.var 2)) (.var 2))))))
theorem reject105 : ¬ Reader r105 :=
  refute_zero r105 (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject105
def r106 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 2) (.var 2))))))
theorem reject106 : ¬ Reader r106 :=
  refute_zero r106 (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject106
def r107 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 2))) (.var 2)))))
theorem reject107 : ¬ Reader r107 :=
  refute_zero r107 (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject107
def r108 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 2)) (.var 2)))))
theorem reject108 : ¬ Reader r108 :=
  refute_zero r108 (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject108
def r109 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))))
theorem reject109 : ¬ Reader r109 :=
  refute_zero r109 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject109
def r110 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))))
theorem reject110 : ¬ Reader r110 :=
  refute_zero r110 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject110
def r111 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))))
theorem reject111 : ¬ Reader r111 :=
  refute_zero r111 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject111
def r112 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))))
theorem reject112 : ¬ Reader r112 :=
  refute_zero r112 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject112
def r113 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject113 : ¬ Reader r113 :=
  refute_zero r113 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject113
def r114 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2))))))
theorem reject114 : ¬ Reader r114 :=
  refute_zero r114 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject114
def r115 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3))))))
theorem reject115 : ¬ Reader r115 :=
  refute_zero r115 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject115
def r116 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject116 : ¬ Reader r116 :=
  refute_zero r116 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject116
def r117 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1)))))
theorem reject117 : ¬ Reader r117 :=
  refute_zero r117 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject117
def r118 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2)))))
theorem reject118 : ¬ Reader r118 :=
  refute_zero r118 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject118
def r119 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject119 : ¬ Reader r119 :=
  refute_zero r119 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject119
def r120 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 2)))))
theorem reject120 : ¬ Reader r120 :=
  refute_zero r120 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject120
def r121 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1))))
theorem reject121 : ¬ Reader r121 :=
  refute_zero r121 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject121
def r122 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject122 : ¬ Reader r122 :=
  refute_zero r122 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject122
def r123 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 1))))
theorem reject123 : ¬ Reader r123 :=
  refute_zero r123 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject123
def r124 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 1))))
theorem reject124 : ¬ Reader r124 :=
  refute_zero r124 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject124
def r125 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))
theorem reject125 : ¬ Reader r125 :=
  refute_zero r125 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject125
def r126 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))
theorem reject126 : ¬ Reader r126 :=
  refute_zero r126 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject126
def r127 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))))
theorem reject127 : ¬ Reader r127 :=
  refute_zero r127 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject127
def r128 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))))
theorem reject128 : ¬ Reader r128 :=
  refute_zero r128 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject128
def r129 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))))
theorem reject129 : ¬ Reader r129 :=
  refute_zero r129 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject129
def r130 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))))
theorem reject130 : ¬ Reader r130 :=
  refute_zero r130 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject130
def r131 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))))
theorem reject131 : ¬ Reader r131 :=
  refute_zero r131 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject131
def r132 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))))
theorem reject132 : ¬ Reader r132 :=
  refute_zero r132 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject132
def r133 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))))
theorem reject133 : ¬ Reader r133 :=
  refute_zero r133 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject133
def r134 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))))
theorem reject134 : ¬ Reader r134 :=
  refute_zero r134 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject134
def r135 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject135 : ¬ Reader r135 :=
  refute_zero r135 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject135
def r136 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject136 : ¬ Reader r136 :=
  refute_zero r136 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject136
def r137 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject137 : ¬ Reader r137 :=
  refute_zero r137 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject137
def r138 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject138 : ¬ Reader r138 :=
  refute_zero r138 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject138
def r139 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject139 : ¬ Reader r139 :=
  refute_zero r139 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject139
def r140 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0))))))
theorem reject140 : ¬ Reader r140 :=
  refute_zero r140 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject140
def r141 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject141 : ¬ Reader r141 :=
  refute_zero r141 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject141
def r142 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1)))))
theorem reject142 : ¬ Reader r142 :=
  refute_zero r142 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject142
def r143 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject143 : ¬ Reader r143 :=
  refute_zero r143 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject143
def r144 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject144 : ¬ Reader r144 :=
  refute_zero r144 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject144
def r145 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0)))))
theorem reject145 : ¬ Reader r145 :=
  refute_zero r145 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject145
def r146 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0)))))
theorem reject146 : ¬ Reader r146 :=
  refute_zero r146 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject146
def r147 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject147 : ¬ Reader r147 :=
  refute_zero r147 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject147
def r148 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0)))))
theorem reject148 : ¬ Reader r148 :=
  refute_zero r148 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject148
def r149 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject149 : ¬ Reader r149 :=
  refute_zero r149 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject149
def r150 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1))))
theorem reject150 : ¬ Reader r150 :=
  refute_zero r150 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject150
def r151 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1))))
theorem reject151 : ¬ Reader r151 :=
  refute_zero r151 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject151
def r152 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1))))
theorem reject152 : ¬ Reader r152 :=
  refute_zero r152 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject152
def r153 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject153 : ¬ Reader r153 :=
  refute_zero r153 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject153
def r154 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject154 : ¬ Reader r154 :=
  refute_zero r154 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject154
def r155 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1))))
theorem reject155 : ¬ Reader r155 :=
  refute_zero r155 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject155
def r156 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject156 : ¬ Reader r156 :=
  refute_zero r156 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject156
def r157 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1))))
theorem reject157 : ¬ Reader r157 :=
  refute_zero r157 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject157
def r158 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject158 : ¬ Reader r158 :=
  refute_zero r158 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject158
def r159 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1))))
theorem reject159 : ¬ Reader r159 :=
  refute_zero r159 (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject159
def r160 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject160 : ¬ Reader r160 :=
  refute_zero r160 (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 5 (by decide) (by decide) (by decide)
#print axioms reject160
def r161 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject161 : ¬ Reader r161 :=
  refute_zero r161 (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject161
def r162 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject162 : ¬ Reader r162 :=
  refute_zero r162 (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject162
def r163 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject163 : ¬ Reader r163 :=
  refute_zero r163 (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject163
def r164 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject164 : ¬ Reader r164 :=
  refute_zero r164 (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject164
def r165 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject165 : ¬ Reader r165 :=
  refute_zero r165 (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) 5 (by decide) (by decide) (by decide)
#print axioms reject165
def r166 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject166 : ¬ Reader r166 :=
  refute_zero r166 (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) 5 (by decide) (by decide) (by decide)
#print axioms reject166
def r167 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject167 : ¬ Reader r167 :=
  refute_zero r167 (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject167
def r168 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject168 : ¬ Reader r168 :=
  refute_zero r168 (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) 5 (by decide) (by decide) (by decide)
#print axioms reject168
def r169 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject169 : ¬ Reader r169 :=
  refute_zero r169 (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject169
def r170 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject170 : ¬ Reader r170 :=
  refute_zero r170 (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject170
def r171 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject171 : ¬ Reader r171 :=
  refute_zero r171 (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject171
def r172 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject172 : ¬ Reader r172 :=
  refute_zero r172 (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject172
def r173 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject173 : ¬ Reader r173 :=
  refute_zero r173 (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject173
def r174 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject174 : ¬ Reader r174 :=
  refute_zero r174 (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject174
def r175 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject175 : ¬ Reader r175 :=
  refute_zero r175 (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 6 (by decide) (by decide) (by decide)
#print axioms reject175
def r176 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject176 : ¬ Reader r176 :=
  refute_zero r176 (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject176
def r177 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject177 : ¬ Reader r177 :=
  refute_zero r177 (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject177
def r178 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject178 : ¬ Reader r178 :=
  refute_zero r178 (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject178
def r179 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject179 : ¬ Reader r179 :=
  refute_zero r179 (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject179
def r180 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject180 : ¬ Reader r180 :=
  refute_zero r180 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject180
def r181 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject181 : ¬ Reader r181 :=
  refute_zero r181 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject181
def r182 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject182 : ¬ Reader r182 :=
  refute_zero r182 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject182
def r183 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject183 : ¬ Reader r183 :=
  refute_zero r183 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject183
def r184 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject184 : ¬ Reader r184 :=
  refute_zero r184 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject184
def r185 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject185 : ¬ Reader r185 :=
  refute_zero r185 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject185
def r186 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject186 : ¬ Reader r186 :=
  refute_zero r186 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject186
def r187 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject187 : ¬ Reader r187 :=
  refute_zero r187 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject187
def r188 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject188 : ¬ Reader r188 :=
  refute_zero r188 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject188
def r189 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject189 : ¬ Reader r189 :=
  refute_zero r189 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject189
def r190 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject190 : ¬ Reader r190 :=
  refute_zero r190 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject190
def r191 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject191 : ¬ Reader r191 :=
  refute_zero r191 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject191
def r192 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject192 : ¬ Reader r192 :=
  refute_zero r192 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject192
def r193 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject193 : ¬ Reader r193 :=
  refute_zero r193 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject193
def r194 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))
theorem reject194 : ¬ Reader r194 :=
  refute_zero r194 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject194
def r195 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))))
theorem reject195 : ¬ Reader r195 :=
  refute_zero r195 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject195
def r196 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject196 : ¬ Reader r196 :=
  refute_zero r196 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject196
def r197 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject197 : ¬ Reader r197 :=
  refute_zero r197 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject197
def r198 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject198 : ¬ Reader r198 :=
  refute_zero r198 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) 5 (by decide) (by decide) (by decide)
#print axioms reject198
def r199 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject199 : ¬ Reader r199 :=
  refute_zero r199 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject199
def r200 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject200 : ¬ Reader r200 :=
  refute_zero r200 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject200
def r201 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject201 : ¬ Reader r201 :=
  refute_zero r201 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject201
def r202 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject202 : ¬ Reader r202 :=
  refute_zero r202 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject202
def r203 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject203 : ¬ Reader r203 :=
  refute_zero r203 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject203
def r204 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject204 : ¬ Reader r204 :=
  refute_zero r204 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject204
def r205 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject205 : ¬ Reader r205 :=
  refute_zero r205 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject205
def r206 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject206 : ¬ Reader r206 :=
  refute_zero r206 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject206
def r207 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))
theorem reject207 : ¬ Reader r207 :=
  refute_zero r207 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject207
def r208 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))
theorem reject208 : ¬ Reader r208 :=
  refute_zero r208 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject208
def r209 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject209 : ¬ Reader r209 :=
  refute_zero r209 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject209
def r210 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))))
theorem reject210 : ¬ Reader r210 :=
  refute_zero r210 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject210
def r211 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))))
theorem reject211 : ¬ Reader r211 :=
  refute_zero r211 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject211
def r212 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))))
theorem reject212 : ¬ Reader r212 :=
  refute_zero r212 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject212
def r213 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject213 : ¬ Reader r213 :=
  refute_zero r213 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject213
def r214 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject214 : ¬ Reader r214 :=
  refute_zero r214 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject214
def r215 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject215 : ¬ Reader r215 :=
  refute_zero r215 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject215
def r216 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject216 : ¬ Reader r216 :=
  refute_zero r216 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject216
def r217 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject217 : ¬ Reader r217 :=
  refute_zero r217 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject217
def r218 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject218 : ¬ Reader r218 :=
  refute_zero r218 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject218
def r219 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject219 : ¬ Reader r219 :=
  refute_zero r219 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject219
def r220 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject220 : ¬ Reader r220 :=
  refute_zero r220 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject220
def r221 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject221 : ¬ Reader r221 :=
  refute_zero r221 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject221
def r222 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject222 : ¬ Reader r222 :=
  refute_zero r222 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject222
def r223 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject223 : ¬ Reader r223 :=
  refute_zero r223 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject223
def r224 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject224 : ¬ Reader r224 :=
  refute_zero r224 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject224
def r225 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject225 : ¬ Reader r225 :=
  refute_zero r225 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject225
def r226 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject226 : ¬ Reader r226 :=
  refute_zero r226 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject226
def r227 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject227 : ¬ Reader r227 :=
  refute_zero r227 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject227
def r228 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject228 : ¬ Reader r228 :=
  refute_zero r228 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject228
def r229 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject229 : ¬ Reader r229 :=
  refute_zero r229 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject229
def r230 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject230 : ¬ Reader r230 :=
  refute_zero r230 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject230
def r231 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject231 : ¬ Reader r231 :=
  refute_zero r231 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject231
def r232 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject232 : ¬ Reader r232 :=
  refute_zero r232 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject232
def r233 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject233 : ¬ Reader r233 :=
  refute_zero r233 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject233
def r234 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject234 : ¬ Reader r234 :=
  refute_zero r234 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject234
def r235 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject235 : ¬ Reader r235 :=
  refute_zero r235 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject235
def r236 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject236 : ¬ Reader r236 :=
  refute_zero r236 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject236
def r237 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject237 : ¬ Reader r237 :=
  refute_zero r237 (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject237
def r238 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject238 : ¬ Reader r238 :=
  refute_zero r238 (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject238
def r239 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject239 : ¬ Reader r239 :=
  refute_zero r239 (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject239
def r240 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject240 : ¬ Reader r240 :=
  refute_zero r240 (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject240
def r241 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject241 : ¬ Reader r241 :=
  refute_zero r241 (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject241
def r242 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject242 : ¬ Reader r242 :=
  refute_zero r242 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject242
def r243 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject243 : ¬ Reader r243 :=
  refute_zero r243 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject243
def r244 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject244 : ¬ Reader r244 :=
  refute_zero r244 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject244
def r245 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject245 : ¬ Reader r245 :=
  refute_zero r245 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject245
def r246 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject246 : ¬ Reader r246 :=
  refute_zero r246 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject246
def r247 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject247 : ¬ Reader r247 :=
  refute_zero r247 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject247
def r248 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject248 : ¬ Reader r248 :=
  refute_zero r248 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject248
def r249 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject249 : ¬ Reader r249 :=
  refute_zero r249 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject249
def r250 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject250 : ¬ Reader r250 :=
  refute_zero r250 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject250
def r251 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject251 : ¬ Reader r251 :=
  refute_zero r251 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject251
def r252 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject252 : ¬ Reader r252 :=
  refute_zero r252 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject252
def r253 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject253 : ¬ Reader r253 :=
  refute_zero r253 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject253
def r254 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject254 : ¬ Reader r254 :=
  refute_zero r254 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject254
def r255 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject255 : ¬ Reader r255 :=
  refute_zero r255 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject255
def r256 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject256 : ¬ Reader r256 :=
  refute_zero r256 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject256
def r257 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject257 : ¬ Reader r257 :=
  refute_zero r257 (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject257
def r258 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject258 : ¬ Reader r258 :=
  refute_zero r258 (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject258
def r259 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject259 : ¬ Reader r259 :=
  refute_zero r259 (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject259
def r260 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject260 : ¬ Reader r260 :=
  refute_zero r260 (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject260
def r261 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject261 : ¬ Reader r261 :=
  refute_zero r261 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject261
def r262 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject262 : ¬ Reader r262 :=
  refute_zero r262 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject262
def r263 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject263 : ¬ Reader r263 :=
  refute_zero r263 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject263
def r264 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject264 : ¬ Reader r264 :=
  refute_zero r264 (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject264
def r265 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject265 : ¬ Reader r265 :=
  refute_zero r265 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject265
def r266 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject266 : ¬ Reader r266 :=
  refute_zero r266 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject266
def r267 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject267 : ¬ Reader r267 :=
  refute_zero r267 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject267
def r268 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject268 : ¬ Reader r268 :=
  refute_zero r268 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject268
def r269 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject269 : ¬ Reader r269 :=
  refute_zero r269 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject269
def r270 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject270 : ¬ Reader r270 :=
  refute_zero r270 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject270
def r271 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject271 : ¬ Reader r271 :=
  refute_zero r271 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject271
def r272 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject272 : ¬ Reader r272 :=
  refute_zero r272 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject272
def r273 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject273 : ¬ Reader r273 :=
  refute_zero r273 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject273
def r274 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject274 : ¬ Reader r274 :=
  refute_zero r274 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject274
def r275 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.app (.var 2) (.var 2)))))
theorem reject275 : ¬ Reader r275 :=
  refute_zero r275 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject275
def r276 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject276 : ¬ Reader r276 :=
  refute_zero r276 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject276
def r277 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject277 : ¬ Reader r277 :=
  refute_zero r277 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject277
def r278 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject278 : ¬ Reader r278 :=
  refute_zero r278 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject278
def r279 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject279 : ¬ Reader r279 :=
  refute_zero r279 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject279
def r280 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject280 : ¬ Reader r280 :=
  refute_zero r280 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject280
def r281 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject281 : ¬ Reader r281 :=
  refute_zero r281 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject281
def r282 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.lam (.app (.var 2) (.var 2)))))
theorem reject282 : ¬ Reader r282 :=
  refute_zero r282 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject282
def r283 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject283 : ¬ Reader r283 :=
  refute_zero r283 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject283
def r284 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject284 : ¬ Reader r284 :=
  refute_zero r284 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject284
def r285 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject285 : ¬ Reader r285 :=
  refute_zero r285 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject285
def r286 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject286 : ¬ Reader r286 :=
  refute_zero r286 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject286
def r287 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject287 : ¬ Reader r287 :=
  refute_zero r287 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject287
def r288 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject288 : ¬ Reader r288 :=
  refute_zero r288 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject288
def r289 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject289 : ¬ Reader r289 :=
  refute_zero r289 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject289
def r290 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject290 : ¬ Reader r290 :=
  refute_zero r290 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject290
def r291 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject291 : ¬ Reader r291 :=
  refute_zero r291 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject291
def r292 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject292 : ¬ Reader r292 :=
  refute_zero r292 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject292
def r293 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject293 : ¬ Reader r293 :=
  refute_zero r293 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject293
def r294 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject294 : ¬ Reader r294 :=
  refute_zero r294 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject294
def r295 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject295 : ¬ Reader r295 :=
  refute_zero r295 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject295
def r296 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject296 : ¬ Reader r296 :=
  refute_zero r296 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject296
def r297 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject297 : ¬ Reader r297 :=
  refute_zero r297 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject297
def r298 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject298 : ¬ Reader r298 :=
  refute_zero r298 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject298
def r299 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject299 : ¬ Reader r299 :=
  refute_zero r299 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject299
def r300 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject300 : ¬ Reader r300 :=
  refute_zero r300 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject300
def r301 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject301 : ¬ Reader r301 :=
  refute_zero r301 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject301
def r302 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject302 : ¬ Reader r302 :=
  refute_zero r302 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject302
def r303 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject303 : ¬ Reader r303 :=
  refute_zero r303 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject303
def r304 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject304 : ¬ Reader r304 :=
  refute_zero r304 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject304
def r305 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject305 : ¬ Reader r305 :=
  refute_zero r305 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject305
def r306 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject306 : ¬ Reader r306 :=
  refute_zero r306 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject306
def r307 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject307 : ¬ Reader r307 :=
  refute_zero r307 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject307
def r308 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject308 : ¬ Reader r308 :=
  refute_zero r308 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject308
def r309 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject309 : ¬ Reader r309 :=
  refute_zero r309 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject309
def r310 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject310 : ¬ Reader r310 :=
  refute_zero r310 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject310
def r311 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject311 : ¬ Reader r311 :=
  refute_zero r311 (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject311
def r312 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject312 : ¬ Reader r312 :=
  refute_zero r312 (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject312
def r313 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject313 : ¬ Reader r313 :=
  refute_zero r313 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject313
def r314 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject314 : ¬ Reader r314 :=
  refute_zero r314 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject314
def r315 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject315 : ¬ Reader r315 :=
  refute_zero r315 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject315
def r316 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject316 : ¬ Reader r316 :=
  refute_zero r316 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject316
def r317 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject317 : ¬ Reader r317 :=
  refute_zero r317 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject317
def r318 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject318 : ¬ Reader r318 :=
  refute_zero r318 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject318
def r319 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject319 : ¬ Reader r319 :=
  refute_zero r319 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject319
def r320 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject320 : ¬ Reader r320 :=
  refute_zero r320 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject320
def r321 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject321 : ¬ Reader r321 :=
  refute_zero r321 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject321
def r322 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject322 : ¬ Reader r322 :=
  refute_zero r322 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject322
def r323 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject323 : ¬ Reader r323 :=
  refute_zero r323 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject323
def r324 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject324 : ¬ Reader r324 :=
  refute_zero r324 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject324
def r325 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject325 : ¬ Reader r325 :=
  refute_zero r325 (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject325
def r326 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject326 : ¬ Reader r326 :=
  refute_zero r326 (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject326
def r327 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject327 : ¬ Reader r327 :=
  refute_zero r327 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject327
def r328 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject328 : ¬ Reader r328 :=
  refute_zero r328 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject328
def r329 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject329 : ¬ Reader r329 :=
  refute_zero r329 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject329
def r330 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject330 : ¬ Reader r330 :=
  refute_zero r330 (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject330
def r331 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject331 : ¬ Reader r331 :=
  refute_zero r331 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject331
def r332 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject332 : ¬ Reader r332 :=
  refute_zero r332 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject332
def r333 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject333 : ¬ Reader r333 :=
  refute_zero r333 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject333
def r334 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject334 : ¬ Reader r334 :=
  refute_zero r334 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject334
def r335 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject335 : ¬ Reader r335 :=
  refute_zero r335 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject335
def r336 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject336 : ¬ Reader r336 :=
  refute_zero r336 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject336
def r337 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject337 : ¬ Reader r337 :=
  refute_zero r337 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject337
def r338 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject338 : ¬ Reader r338 :=
  refute_zero r338 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject338
def r339 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject339 : ¬ Reader r339 :=
  refute_zero r339 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject339
def r340 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject340 : ¬ Reader r340 :=
  refute_zero r340 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject340
def r341 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject341 : ¬ Reader r341 :=
  refute_zero r341 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject341
def r342 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject342 : ¬ Reader r342 :=
  refute_zero r342 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject342
def r343 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject343 : ¬ Reader r343 :=
  refute_zero r343 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject343
def r344 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject344 : ¬ Reader r344 :=
  refute_zero r344 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject344
def r345 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject345 : ¬ Reader r345 :=
  refute_zero r345 (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject345
def r346 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject346 : ¬ Reader r346 :=
  refute_zero r346 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject346
def r347 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject347 : ¬ Reader r347 :=
  refute_zero r347 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject347
def r348 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject348 : ¬ Reader r348 :=
  refute_zero r348 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject348
def r349 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject349 : ¬ Reader r349 :=
  refute_zero r349 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject349
def r350 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject350 : ¬ Reader r350 :=
  refute_zero r350 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject350
def r351 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject351 : ¬ Reader r351 :=
  refute_zero r351 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject351
def r352 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject352 : ¬ Reader r352 :=
  refute_zero r352 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject352
def r353 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject353 : ¬ Reader r353 :=
  refute_zero r353 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject353
def r354 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject354 : ¬ Reader r354 :=
  refute_zero r354 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject354
def r355 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject355 : ¬ Reader r355 :=
  refute_zero r355 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject355
def r356 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject356 : ¬ Reader r356 :=
  refute_zero r356 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject356
def r357 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject357 : ¬ Reader r357 :=
  refute_zero r357 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject357
def r358 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject358 : ¬ Reader r358 :=
  refute_zero r358 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject358
def r359 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject359 : ¬ Reader r359 :=
  refute_zero r359 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject359
def r360 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject360 : ¬ Reader r360 :=
  refute_zero r360 (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject360
def r361 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject361 : ¬ Reader r361 :=
  refute_zero r361 (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject361
def r362 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject362 : ¬ Reader r362 :=
  refute_zero r362 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject362
def r363 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject363 : ¬ Reader r363 :=
  refute_zero r363 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject363
def r364 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject364 : ¬ Reader r364 :=
  refute_zero r364 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject364
def r365 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject365 : ¬ Reader r365 :=
  refute_zero r365 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject365
def r366 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject366 : ¬ Reader r366 :=
  refute_zero r366 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject366
def r367 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.lam (.var 2))))
theorem reject367 : ¬ Reader r367 :=
  refute_zero r367 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject367
def r368 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.lam (.var 2))))
theorem reject368 : ¬ Reader r368 :=
  refute_zero r368 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject368
def r369 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 2))))
theorem reject369 : ¬ Reader r369 :=
  refute_zero r369 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject369
def r370 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.lam (.var 2))))
theorem reject370 : ¬ Reader r370 :=
  refute_zero r370 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject370
def r371 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 2))))
theorem reject371 : ¬ Reader r371 :=
  refute_zero r371 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject371
def r372 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.app (.var 0) (.var 1))))
theorem reject372 : ¬ Reader r372 :=
  refute_zero r372 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject372
def r373 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.app (.var 1) (.var 0))))
theorem reject373 : ¬ Reader r373 :=
  refute_zero r373 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject373
def r374 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.app (.var 0) (.var 1))))
theorem reject374 : ¬ Reader r374 :=
  refute_zero r374 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject374
def r375 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.app (.var 1) (.var 0))))
theorem reject375 : ¬ Reader r375 :=
  refute_zero r375 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject375
def r376 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 0) (.var 1))))
theorem reject376 : ¬ Reader r376 :=
  refute_zero r376 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject376
def r377 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 0))))
theorem reject377 : ¬ Reader r377 :=
  refute_zero r377 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject377
def r378 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.app (.var 0) (.var 1))))
theorem reject378 : ¬ Reader r378 :=
  refute_zero r378 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject378
def r379 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 0))))
theorem reject379 : ¬ Reader r379 :=
  refute_zero r379 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject379
def r380 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 0) (.var 1))))
theorem reject380 : ¬ Reader r380 :=
  refute_zero r380 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject380
def r381 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 0))))
theorem reject381 : ¬ Reader r381 :=
  refute_zero r381 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject381
def r382 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject382 : ¬ Reader r382 :=
  refute_zero r382 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject382
def r383 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject383 : ¬ Reader r383 :=
  refute_zero r383 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject383
def r384 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject384 : ¬ Reader r384 :=
  refute_zero r384 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject384
def r385 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject385 : ¬ Reader r385 :=
  refute_zero r385 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject385
def r386 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject386 : ¬ Reader r386 :=
  refute_zero r386 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject386
def r387 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject387 : ¬ Reader r387 :=
  refute_zero r387 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject387
def r388 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.app (.var 1) (.lam (.var 0)))))
theorem reject388 : ¬ Reader r388 :=
  refute_zero r388 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject388
def r389 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject389 : ¬ Reader r389 :=
  refute_zero r389 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject389
def r390 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.app (.var 1) (.lam (.var 0)))))
theorem reject390 : ¬ Reader r390 :=
  refute_zero r390 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject390
def r391 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject391 : ¬ Reader r391 :=
  refute_zero r391 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject391
def r392 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.lam (.var 0)))))
theorem reject392 : ¬ Reader r392 :=
  refute_zero r392 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject392
def r393 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject393 : ¬ Reader r393 :=
  refute_zero r393 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject393
def r394 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 0)))))
theorem reject394 : ¬ Reader r394 :=
  refute_zero r394 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject394
def r395 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.lam (.lam (.var 3)))))
theorem reject395 : ¬ Reader r395 :=
  refute_zero r395 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject395
def r396 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 0)))))
theorem reject396 : ¬ Reader r396 :=
  refute_zero r396 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject396
def r397 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject397 : ¬ Reader r397 :=
  refute_zero r397 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject397
def r398 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject398 : ¬ Reader r398 :=
  refute_zero r398 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject398
def r399 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject399 : ¬ Reader r399 :=
  refute_zero r399 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject399
def r400 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject400 : ¬ Reader r400 :=
  refute_zero r400 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject400
def r401 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject401 : ¬ Reader r401 :=
  refute_zero r401 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject401
def r402 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject402 : ¬ Reader r402 :=
  refute_zero r402 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject402
def r403 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject403 : ¬ Reader r403 :=
  refute_zero r403 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject403
def r404 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject404 : ¬ Reader r404 :=
  refute_zero r404 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject404
def r405 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject405 : ¬ Reader r405 :=
  refute_zero r405 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject405
def r406 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject406 : ¬ Reader r406 :=
  refute_zero r406 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject406
def r407 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject407 : ¬ Reader r407 :=
  refute_zero r407 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject407
def r408 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject408 : ¬ Reader r408 :=
  refute_zero r408 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject408
def r409 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject409 : ¬ Reader r409 :=
  refute_zero r409 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject409
def r410 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject410 : ¬ Reader r410 :=
  refute_zero r410 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject410
def r411 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject411 : ¬ Reader r411 :=
  refute_zero r411 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject411
def r412 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))))
theorem reject412 : ¬ Reader r412 :=
  refute_zero r412 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject412
def r413 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))) (.var 2))) (.var 1)))
theorem reject413 : ¬ Reader r413 :=
  refute_zero r413 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject413
def r414 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))) (.var 2))) (.var 1)))
theorem reject414 : ¬ Reader r414 :=
  refute_zero r414 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject414
def r415 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject415 : ¬ Reader r415 :=
  refute_zero r415 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject415
def r416 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.var 1)))
theorem reject416 : ¬ Reader r416 :=
  refute_zero r416 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject416
def r417 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject417 : ¬ Reader r417 :=
  refute_zero r417 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject417
def r418 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))))) (.var 2))) (.var 1)))
theorem reject418 : ¬ Reader r418 :=
  refute_zero r418 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject418
def r419 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))))) (.var 2))) (.var 1)))
theorem reject419 : ¬ Reader r419 :=
  refute_zero r419 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject419
def r420 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject420 : ¬ Reader r420 :=
  refute_zero r420 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject420
def r421 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject421 : ¬ Reader r421 :=
  refute_zero r421 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject421
def r422 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject422 : ¬ Reader r422 :=
  refute_zero r422 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject422
def r423 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))) (.var 2))) (.lam (.var 2))))
theorem reject423 : ¬ Reader r423 :=
  refute_zero r423 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject423
def r424 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))) (.var 2))) (.lam (.var 2))))
theorem reject424 : ¬ Reader r424 :=
  refute_zero r424 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject424
def r425 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))) (.var 2))) (.lam (.var 2))))
theorem reject425 : ¬ Reader r425 :=
  refute_zero r425 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject425
def r426 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.lam (.var 2))))
theorem reject426 : ¬ Reader r426 :=
  refute_zero r426 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject426
def r427 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 2))))
theorem reject427 : ¬ Reader r427 :=
  refute_zero r427 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject427
def r428 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))))) (.var 2))) (.lam (.var 2))))
theorem reject428 : ¬ Reader r428 :=
  refute_zero r428 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject428
def r429 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))))) (.var 2))) (.lam (.var 2))))
theorem reject429 : ¬ Reader r429 :=
  refute_zero r429 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject429
def r430 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)))) (.var 2))) (.lam (.var 2))))
theorem reject430 : ¬ Reader r430 :=
  refute_zero r430 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject430
def r431 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)))) (.var 2))) (.lam (.var 2))))
theorem reject431 : ¬ Reader r431 :=
  refute_zero r431 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject431
def r432 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 2))))
theorem reject432 : ¬ Reader r432 :=
  refute_zero r432 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject432
def r433 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2))) (.var 1)))
theorem reject433 : ¬ Reader r433 :=
  refute_zero r433 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject433
def r434 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject434 : ¬ Reader r434 :=
  refute_zero r434 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject434
def r435 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject435 : ¬ Reader r435 :=
  refute_zero r435 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject435
def r436 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2))) (.var 1)))
theorem reject436 : ¬ Reader r436 :=
  refute_zero r436 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject436
def r437 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject437 : ¬ Reader r437 :=
  refute_zero r437 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject437
def r438 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject438 : ¬ Reader r438 :=
  refute_zero r438 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject438
def r439 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject439 : ¬ Reader r439 :=
  refute_zero r439 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject439
def r440 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject440 : ¬ Reader r440 :=
  refute_zero r440 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject440
def r441 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject441 : ¬ Reader r441 :=
  refute_zero r441 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject441
def r442 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject442 : ¬ Reader r442 :=
  refute_zero r442 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject442
def r443 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject443 : ¬ Reader r443 :=
  refute_zero r443 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject443
def r444 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject444 : ¬ Reader r444 :=
  refute_zero r444 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject444
def r445 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject445 : ¬ Reader r445 :=
  refute_zero r445 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject445
def r446 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject446 : ¬ Reader r446 :=
  refute_zero r446 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject446
def r447 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject447 : ¬ Reader r447 :=
  refute_zero r447 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject447
def r448 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject448 : ¬ Reader r448 :=
  refute_zero r448 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject448
def r449 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject449 : ¬ Reader r449 :=
  refute_zero r449 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject449
def r450 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject450 : ¬ Reader r450 :=
  refute_zero r450 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject450
def r451 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject451 : ¬ Reader r451 :=
  refute_zero r451 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject451
def r452 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject452 : ¬ Reader r452 :=
  refute_zero r452 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject452
def r453 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject453 : ¬ Reader r453 :=
  refute_zero r453 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject453
def r454 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject454 : ¬ Reader r454 :=
  refute_zero r454 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject454
def r455 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject455 : ¬ Reader r455 :=
  refute_zero r455 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject455
def r456 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject456 : ¬ Reader r456 :=
  refute_zero r456 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject456
def r457 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject457 : ¬ Reader r457 :=
  refute_zero r457 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject457
def r458 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject458 : ¬ Reader r458 :=
  refute_zero r458 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject458
def r459 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject459 : ¬ Reader r459 :=
  refute_zero r459 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject459
def r460 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject460 : ¬ Reader r460 :=
  refute_zero r460 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject460
def r461 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2))) (.var 1)))
theorem reject461 : ¬ Reader r461 :=
  refute_zero r461 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject461
def r462 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject462 : ¬ Reader r462 :=
  refute_zero r462 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject462
def r463 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject463 : ¬ Reader r463 :=
  refute_zero r463 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject463
def r464 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject464 : ¬ Reader r464 :=
  refute_zero r464 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject464
def r465 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject465 : ¬ Reader r465 :=
  refute_zero r465 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject465
def r466 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject466 : ¬ Reader r466 :=
  refute_zero r466 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject466
def r467 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject467 : ¬ Reader r467 :=
  refute_zero r467 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject467
def r468 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject468 : ¬ Reader r468 :=
  refute_zero r468 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject468
def r469 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject469 : ¬ Reader r469 :=
  refute_zero r469 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject469
def r470 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject470 : ¬ Reader r470 :=
  refute_zero r470 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject470
def r471 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject471 : ¬ Reader r471 :=
  refute_zero r471 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject471
def r472 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject472 : ¬ Reader r472 :=
  refute_zero r472 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject472
def r473 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject473 : ¬ Reader r473 :=
  refute_zero r473 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject473
def r474 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject474 : ¬ Reader r474 :=
  refute_zero r474 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject474
def r475 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2))) (.lam (.var 2))))
theorem reject475 : ¬ Reader r475 :=
  refute_zero r475 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject475
def r476 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2))) (.lam (.var 2))))
theorem reject476 : ¬ Reader r476 :=
  refute_zero r476 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject476
def r477 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2))) (.lam (.var 2))))
theorem reject477 : ¬ Reader r477 :=
  refute_zero r477 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject477
def r478 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject478 : ¬ Reader r478 :=
  refute_zero r478 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject478
def r479 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject479 : ¬ Reader r479 :=
  refute_zero r479 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject479
def r480 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.lam (.var 2))))
theorem reject480 : ¬ Reader r480 :=
  refute_zero r480 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject480
def r481 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject481 : ¬ Reader r481 :=
  refute_zero r481 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject481
def r482 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject482 : ¬ Reader r482 :=
  refute_zero r482 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject482
def r483 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject483 : ¬ Reader r483 :=
  refute_zero r483 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject483
def r484 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject484 : ¬ Reader r484 :=
  refute_zero r484 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject484
def r485 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject485 : ¬ Reader r485 :=
  refute_zero r485 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject485
def r486 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject486 : ¬ Reader r486 :=
  refute_zero r486 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject486
def r487 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject487 : ¬ Reader r487 :=
  refute_zero r487 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject487
def r488 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject488 : ¬ Reader r488 :=
  refute_zero r488 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject488
def r489 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.lam (.var 2))))
theorem reject489 : ¬ Reader r489 :=
  refute_zero r489 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject489
def r490 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject490 : ¬ Reader r490 :=
  refute_zero r490 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject490
def r491 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject491 : ¬ Reader r491 :=
  refute_zero r491 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject491
def r492 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject492 : ¬ Reader r492 :=
  refute_zero r492 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject492
def r493 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject493 : ¬ Reader r493 :=
  refute_zero r493 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject493
def r494 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject494 : ¬ Reader r494 :=
  refute_zero r494 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject494
def r495 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject495 : ¬ Reader r495 :=
  refute_zero r495 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject495
def r496 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.lam (.var 2))))
theorem reject496 : ¬ Reader r496 :=
  refute_zero r496 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject496
def r497 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject497 : ¬ Reader r497 :=
  refute_zero r497 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject497
def r498 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject498 : ¬ Reader r498 :=
  refute_zero r498 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject498
def r499 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject499 : ¬ Reader r499 :=
  refute_zero r499 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject499
def r500 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject500 : ¬ Reader r500 :=
  refute_zero r500 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject500
def r501 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject501 : ¬ Reader r501 :=
  refute_zero r501 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject501
def r502 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.lam (.var 2))))
theorem reject502 : ¬ Reader r502 :=
  refute_zero r502 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject502
def r503 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject503 : ¬ Reader r503 :=
  refute_zero r503 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject503
def r504 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject504 : ¬ Reader r504 :=
  refute_zero r504 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject504
def r505 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject505 : ¬ Reader r505 :=
  refute_zero r505 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject505
def r506 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject506 : ¬ Reader r506 :=
  refute_zero r506 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject506
def r507 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject507 : ¬ Reader r507 :=
  refute_zero r507 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject507
def r508 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject508 : ¬ Reader r508 :=
  refute_zero r508 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject508
def r509 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject509 : ¬ Reader r509 :=
  refute_zero r509 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject509
def r510 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject510 : ¬ Reader r510 :=
  refute_zero r510 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject510
def r511 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject511 : ¬ Reader r511 :=
  refute_zero r511 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject511
def r512 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject512 : ¬ Reader r512 :=
  refute_zero r512 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject512
def r513 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject513 : ¬ Reader r513 :=
  refute_zero r513 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject513
def r514 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject514 : ¬ Reader r514 :=
  refute_zero r514 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject514
def r515 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject515 : ¬ Reader r515 :=
  refute_zero r515 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject515
def r516 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.lam (.var 2))))
theorem reject516 : ¬ Reader r516 :=
  refute_zero r516 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject516
def r517 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2))) (.var 1)))
theorem reject517 : ¬ Reader r517 :=
  refute_zero r517 (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject517
def r518 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject518 : ¬ Reader r518 :=
  refute_zero r518 (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject518
def r519 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject519 : ¬ Reader r519 :=
  refute_zero r519 (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject519
def r520 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject520 : ¬ Reader r520 :=
  refute_zero r520 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject520
def r521 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject521 : ¬ Reader r521 :=
  refute_zero r521 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject521
def r522 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject522 : ¬ Reader r522 :=
  refute_zero r522 (.app (.app (.var 1) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject522
def r523 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject523 : ¬ Reader r523 :=
  refute_zero r523 (.app (.app (.var 1) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject523
def r524 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject524 : ¬ Reader r524 :=
  refute_zero r524 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject524
def r525 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject525 : ¬ Reader r525 :=
  refute_zero r525 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject525
def r526 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject526 : ¬ Reader r526 :=
  refute_zero r526 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject526
def r527 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject527 : ¬ Reader r527 :=
  refute_zero r527 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject527
def r528 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject528 : ¬ Reader r528 :=
  refute_zero r528 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject528
def r529 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject529 : ¬ Reader r529 :=
  refute_zero r529 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject529
def r530 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject530 : ¬ Reader r530 :=
  refute_zero r530 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject530
def r531 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2))) (.var 1)))
theorem reject531 : ¬ Reader r531 :=
  refute_zero r531 (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject531
def r532 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject532 : ¬ Reader r532 :=
  refute_zero r532 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject532
def r533 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject533 : ¬ Reader r533 :=
  refute_zero r533 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject533
def r534 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject534 : ¬ Reader r534 :=
  refute_zero r534 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject534
def r535 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject535 : ¬ Reader r535 :=
  refute_zero r535 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject535
def r536 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 2))) (.var 1)))
theorem reject536 : ¬ Reader r536 :=
  refute_zero r536 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject536
def r537 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject537 : ¬ Reader r537 :=
  refute_zero r537 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject537
def r538 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 2))) (.var 1)))
theorem reject538 : ¬ Reader r538 :=
  refute_zero r538 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject538
def r539 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 2))) (.var 1)))
theorem reject539 : ¬ Reader r539 :=
  refute_zero r539 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject539
def r540 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject540 : ¬ Reader r540 :=
  refute_zero r540 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject540
def r541 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject541 : ¬ Reader r541 :=
  refute_zero r541 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject541
def r542 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject542 : ¬ Reader r542 :=
  refute_zero r542 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject542
def r543 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject543 : ¬ Reader r543 :=
  refute_zero r543 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject543
def r544 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject544 : ¬ Reader r544 :=
  refute_zero r544 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject544
def r545 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject545 : ¬ Reader r545 :=
  refute_zero r545 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject545
def r546 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject546 : ¬ Reader r546 :=
  refute_zero r546 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject546
def r547 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject547 : ¬ Reader r547 :=
  refute_zero r547 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject547
def r548 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject548 : ¬ Reader r548 :=
  refute_zero r548 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject548
def r549 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))))) (.var 2))) (.var 1)))
theorem reject549 : ¬ Reader r549 :=
  refute_zero r549 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject549
def r550 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject550 : ¬ Reader r550 :=
  refute_zero r550 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject550
def r551 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject551 : ¬ Reader r551 :=
  refute_zero r551 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject551
def r552 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject552 : ¬ Reader r552 :=
  refute_zero r552 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject552
def r553 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject553 : ¬ Reader r553 :=
  refute_zero r553 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject553
def r554 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject554 : ¬ Reader r554 :=
  refute_zero r554 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject554
def r555 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject555 : ¬ Reader r555 :=
  refute_zero r555 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject555
def r556 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject556 : ¬ Reader r556 :=
  refute_zero r556 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject556
def r557 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject557 : ¬ Reader r557 :=
  refute_zero r557 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject557
def r558 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject558 : ¬ Reader r558 :=
  refute_zero r558 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject558
def r559 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject559 : ¬ Reader r559 :=
  refute_zero r559 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject559
def r560 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject560 : ¬ Reader r560 :=
  refute_zero r560 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject560
def r561 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject561 : ¬ Reader r561 :=
  refute_zero r561 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject561
def r562 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject562 : ¬ Reader r562 :=
  refute_zero r562 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject562
def r563 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))))) (.var 2))) (.var 1)))
theorem reject563 : ¬ Reader r563 :=
  refute_zero r563 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject563
def r564 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2))) (.var 1)))
theorem reject564 : ¬ Reader r564 :=
  refute_zero r564 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject564
def r565 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))))) (.var 2))) (.var 1)))
theorem reject565 : ¬ Reader r565 :=
  refute_zero r565 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject565
def r566 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2))) (.var 1)))
theorem reject566 : ¬ Reader r566 :=
  refute_zero r566 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject566
def r567 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject567 : ¬ Reader r567 :=
  refute_zero r567 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1)) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject567
def r568 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject568 : ¬ Reader r568 :=
  refute_zero r568 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject568
def r569 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject569 : ¬ Reader r569 :=
  refute_zero r569 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject569
def r570 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject570 : ¬ Reader r570 :=
  refute_zero r570 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject570
def r571 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject571 : ¬ Reader r571 :=
  refute_zero r571 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject571
def r572 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject572 : ¬ Reader r572 :=
  refute_zero r572 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject572
def r573 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject573 : ¬ Reader r573 :=
  refute_zero r573 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject573
def r574 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject574 : ¬ Reader r574 :=
  refute_zero r574 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject574
def r575 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject575 : ¬ Reader r575 :=
  refute_zero r575 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject575
def r576 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject576 : ¬ Reader r576 :=
  refute_zero r576 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject576
def r577 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject577 : ¬ Reader r577 :=
  refute_zero r577 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject577
def r578 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject578 : ¬ Reader r578 :=
  refute_zero r578 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject578
def r579 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject579 : ¬ Reader r579 :=
  refute_zero r579 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject579
def r580 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject580 : ¬ Reader r580 :=
  refute_zero r580 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject580
def r581 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject581 : ¬ Reader r581 :=
  refute_zero r581 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject581
def r582 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject582 : ¬ Reader r582 :=
  refute_zero r582 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject582
def r583 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject583 : ¬ Reader r583 :=
  refute_zero r583 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject583
def r584 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject584 : ¬ Reader r584 :=
  refute_zero r584 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject584
def r585 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject585 : ¬ Reader r585 :=
  refute_zero r585 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject585
def r586 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject586 : ¬ Reader r586 :=
  refute_zero r586 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject586
def r587 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))))) (.var 2))) (.var 1)))
theorem reject587 : ¬ Reader r587 :=
  refute_zero r587 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject587
def r588 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2)))))) (.var 2))) (.var 1)))
theorem reject588 : ¬ Reader r588 :=
  refute_zero r588 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject588
def r589 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject589 : ¬ Reader r589 :=
  refute_zero r589 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject589
def r590 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject590 : ¬ Reader r590 :=
  refute_zero r590 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject590
def r591 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject591 : ¬ Reader r591 :=
  refute_zero r591 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject591
def r592 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject592 : ¬ Reader r592 :=
  refute_zero r592 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject592
def r593 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject593 : ¬ Reader r593 :=
  refute_zero r593 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject593
def r594 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject594 : ¬ Reader r594 :=
  refute_zero r594 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject594
def r595 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject595 : ¬ Reader r595 :=
  refute_zero r595 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject595
def r596 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject596 : ¬ Reader r596 :=
  refute_zero r596 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject596
def r597 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))))) (.var 2))) (.var 1)))
theorem reject597 : ¬ Reader r597 :=
  refute_zero r597 (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject597
def r598 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))))) (.var 2))) (.var 1)))
theorem reject598 : ¬ Reader r598 :=
  refute_zero r598 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject598
def r599 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject599 : ¬ Reader r599 :=
  refute_zero r599 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject599
def r600 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject600 : ¬ Reader r600 :=
  refute_zero r600 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject600
def r601 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject601 : ¬ Reader r601 :=
  refute_zero r601 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject601
def r602 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject602 : ¬ Reader r602 :=
  refute_zero r602 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject602
def r603 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject603 : ¬ Reader r603 :=
  refute_zero r603 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject603
def r604 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject604 : ¬ Reader r604 :=
  refute_zero r604 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject604
def r605 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject605 : ¬ Reader r605 :=
  refute_zero r605 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject605
def r606 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject606 : ¬ Reader r606 :=
  refute_zero r606 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject606
def r607 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject607 : ¬ Reader r607 :=
  refute_zero r607 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject607
def r608 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject608 : ¬ Reader r608 :=
  refute_zero r608 (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject608
def r609 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject609 : ¬ Reader r609 :=
  refute_zero r609 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject609
def r610 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject610 : ¬ Reader r610 :=
  refute_zero r610 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject610
def r611 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 2) (.var 2))))))) (.var 2))) (.var 1)))
theorem reject611 : ¬ Reader r611 :=
  refute_zero r611 (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject611
def r612 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 2)) (.var 2)))))) (.var 2))) (.var 1)))
theorem reject612 : ¬ Reader r612 :=
  refute_zero r612 (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject612
def r613 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 2) (.var 2)))))) (.var 2))) (.var 1)))
theorem reject613 : ¬ Reader r613 :=
  refute_zero r613 (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject613
def r614 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 2))) (.var 2))))) (.var 2))) (.var 1)))
theorem reject614 : ¬ Reader r614 :=
  refute_zero r614 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject614
def r615 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 2)) (.var 2))))) (.var 2))) (.var 1)))
theorem reject615 : ¬ Reader r615 :=
  refute_zero r615 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject615
def r616 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))))) (.var 2))) (.var 1)))
theorem reject616 : ¬ Reader r616 :=
  refute_zero r616 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject616
def r617 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))))) (.var 2))) (.var 1)))
theorem reject617 : ¬ Reader r617 :=
  refute_zero r617 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject617
def r618 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))))) (.var 2))) (.var 1)))
theorem reject618 : ¬ Reader r618 :=
  refute_zero r618 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject618
def r619 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject619 : ¬ Reader r619 :=
  refute_zero r619 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject619
def r620 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2))) (.var 1)))
theorem reject620 : ¬ Reader r620 :=
  refute_zero r620 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject620
def r621 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.var 1)))
theorem reject621 : ¬ Reader r621 :=
  refute_zero r621 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject621
def r622 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))))) (.var 2))) (.var 1)))
theorem reject622 : ¬ Reader r622 :=
  refute_zero r622 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject622
def r623 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2))) (.var 1)))
theorem reject623 : ¬ Reader r623 :=
  refute_zero r623 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject623
def r624 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject624 : ¬ Reader r624 :=
  refute_zero r624 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject624
def r625 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))))) (.var 2))) (.var 1)))
theorem reject625 : ¬ Reader r625 :=
  refute_zero r625 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject625
def r626 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 2))))) (.var 2))) (.var 1)))
theorem reject626 : ¬ Reader r626 :=
  refute_zero r626 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 2))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject626
def r627 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 2))))) (.var 2))) (.var 1)))
theorem reject627 : ¬ Reader r627 :=
  refute_zero r627 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 2))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject627
def r628 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject628 : ¬ Reader r628 :=
  refute_zero r628 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject628
def r629 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject629 : ¬ Reader r629 :=
  refute_zero r629 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject629
def r630 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject630 : ¬ Reader r630 :=
  refute_zero r630 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject630
def r631 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject631 : ¬ Reader r631 :=
  refute_zero r631 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject631
def r632 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))) (.var 2))) (.var 1)))
theorem reject632 : ¬ Reader r632 :=
  refute_zero r632 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject632
def r633 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 2))) (.var 1)))
theorem reject633 : ¬ Reader r633 :=
  refute_zero r633 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject633
def r634 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject634 : ¬ Reader r634 :=
  refute_zero r634 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject634
def r635 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))))) (.var 2))) (.var 1)))
theorem reject635 : ¬ Reader r635 :=
  refute_zero r635 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject635
def r636 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject636 : ¬ Reader r636 :=
  refute_zero r636 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject636
def r637 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))))) (.var 2))) (.var 1)))
theorem reject637 : ¬ Reader r637 :=
  refute_zero r637 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject637
def r638 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))))) (.var 2))) (.var 1)))
theorem reject638 : ¬ Reader r638 :=
  refute_zero r638 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject638
def r639 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject639 : ¬ Reader r639 :=
  refute_zero r639 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject639
def r640 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject640 : ¬ Reader r640 :=
  refute_zero r640 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject640
def r641 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject641 : ¬ Reader r641 :=
  refute_zero r641 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject641
def r642 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2))) (.var 1)))
theorem reject642 : ¬ Reader r642 :=
  refute_zero r642 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject642
def r643 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2))) (.var 1)))
theorem reject643 : ¬ Reader r643 :=
  refute_zero r643 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject643
def r644 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2))) (.var 1)))
theorem reject644 : ¬ Reader r644 :=
  refute_zero r644 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject644
def r645 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)))
theorem reject645 : ¬ Reader r645 :=
  refute_zero r645 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject645
def r646 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)))
theorem reject646 : ¬ Reader r646 :=
  refute_zero r646 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject646
def r647 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.var 1)))
theorem reject647 : ¬ Reader r647 :=
  refute_zero r647 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject647
def r648 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.var 1)))
theorem reject648 : ¬ Reader r648 :=
  refute_zero r648 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject648
def r649 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject649 : ¬ Reader r649 :=
  refute_zero r649 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject649
def r650 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject650 : ¬ Reader r650 :=
  refute_zero r650 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject650
def r651 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)))
theorem reject651 : ¬ Reader r651 :=
  refute_zero r651 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject651
def r652 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 2))) (.var 1)))
theorem reject652 : ¬ Reader r652 :=
  refute_zero r652 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject652
def r653 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))))) (.var 2))) (.var 1)))
theorem reject653 : ¬ Reader r653 :=
  refute_zero r653 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject653
def r654 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2))) (.var 1)))
theorem reject654 : ¬ Reader r654 :=
  refute_zero r654 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject654
def r655 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))))) (.var 2))) (.var 1)))
theorem reject655 : ¬ Reader r655 :=
  refute_zero r655 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject655
def r656 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2))) (.var 1)))
theorem reject656 : ¬ Reader r656 :=
  refute_zero r656 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject656
def r657 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject657 : ¬ Reader r657 :=
  refute_zero r657 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject657
def r658 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject658 : ¬ Reader r658 :=
  refute_zero r658 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject658
def r659 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject659 : ¬ Reader r659 :=
  refute_zero r659 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject659
def r660 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject660 : ¬ Reader r660 :=
  refute_zero r660 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject660
def r661 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject661 : ¬ Reader r661 :=
  refute_zero r661 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject661
def r662 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject662 : ¬ Reader r662 :=
  refute_zero r662 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject662
def r663 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2))) (.var 1)))
theorem reject663 : ¬ Reader r663 :=
  refute_zero r663 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject663
def r664 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject664 : ¬ Reader r664 :=
  refute_zero r664 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject664
def r665 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject665 : ¬ Reader r665 :=
  refute_zero r665 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject665
def r666 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)))
theorem reject666 : ¬ Reader r666 :=
  refute_zero r666 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject666
def r667 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 2))) (.var 1)))
theorem reject667 : ¬ Reader r667 :=
  refute_zero r667 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject667
def r668 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.var 2))) (.var 1)))
theorem reject668 : ¬ Reader r668 :=
  refute_zero r668 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject668
def r669 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject669 : ¬ Reader r669 :=
  refute_zero r669 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject669
def r670 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))) (.var 2))) (.var 1)))
theorem reject670 : ¬ Reader r670 :=
  refute_zero r670 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject670
def r671 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject671 : ¬ Reader r671 :=
  refute_zero r671 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject671
def r672 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject672 : ¬ Reader r672 :=
  refute_zero r672 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject672
def r673 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject673 : ¬ Reader r673 :=
  refute_zero r673 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject673
def r674 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.var 2))) (.var 1)))
theorem reject674 : ¬ Reader r674 :=
  refute_zero r674 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject674
def r675 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))))) (.var 2))) (.var 1)))
theorem reject675 : ¬ Reader r675 :=
  refute_zero r675 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject675
def r676 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject676 : ¬ Reader r676 :=
  refute_zero r676 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject676
def r677 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2))) (.var 1)))
theorem reject677 : ¬ Reader r677 :=
  refute_zero r677 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject677
def r678 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject678 : ¬ Reader r678 :=
  refute_zero r678 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject678
def r679 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 2))) (.var 1)))
theorem reject679 : ¬ Reader r679 :=
  refute_zero r679 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject679
def r680 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject680 : ¬ Reader r680 :=
  refute_zero r680 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject680
def r681 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject681 : ¬ Reader r681 :=
  refute_zero r681 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject681
def r682 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject682 : ¬ Reader r682 :=
  refute_zero r682 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject682
def r683 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject683 : ¬ Reader r683 :=
  refute_zero r683 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject683
def r684 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject684 : ¬ Reader r684 :=
  refute_zero r684 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject684
def r685 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject685 : ¬ Reader r685 :=
  refute_zero r685 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject685
def r686 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject686 : ¬ Reader r686 :=
  refute_zero r686 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject686
def r687 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject687 : ¬ Reader r687 :=
  refute_zero r687 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject687
def r688 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject688 : ¬ Reader r688 :=
  refute_zero r688 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject688
def r689 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject689 : ¬ Reader r689 :=
  refute_zero r689 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject689
def r690 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject690 : ¬ Reader r690 :=
  refute_zero r690 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject690
def r691 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject691 : ¬ Reader r691 :=
  refute_zero r691 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject691
def r692 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject692 : ¬ Reader r692 :=
  refute_zero r692 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject692
def r693 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject693 : ¬ Reader r693 :=
  refute_zero r693 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject693
def r694 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject694 : ¬ Reader r694 :=
  refute_zero r694 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject694
def r695 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject695 : ¬ Reader r695 :=
  refute_zero r695 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject695
def r696 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject696 : ¬ Reader r696 :=
  refute_zero r696 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject696
def r697 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject697 : ¬ Reader r697 :=
  refute_zero r697 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject697
def r698 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject698 : ¬ Reader r698 :=
  refute_zero r698 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject698
def r699 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject699 : ¬ Reader r699 :=
  refute_zero r699 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject699
def r700 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject700 : ¬ Reader r700 :=
  refute_zero r700 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject700
def r701 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject701 : ¬ Reader r701 :=
  refute_zero r701 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject701
def r702 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2))) (.var 1)))
theorem reject702 : ¬ Reader r702 :=
  refute_zero r702 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject702
def r703 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject703 : ¬ Reader r703 :=
  refute_zero r703 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject703
def r704 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 2))) (.var 1)))
theorem reject704 : ¬ Reader r704 :=
  refute_zero r704 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject704
def r705 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject705 : ¬ Reader r705 :=
  refute_zero r705 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject705
def r706 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject706 : ¬ Reader r706 :=
  refute_zero r706 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject706
def r707 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject707 : ¬ Reader r707 :=
  refute_zero r707 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject707
def r708 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject708 : ¬ Reader r708 :=
  refute_zero r708 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject708
def r709 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject709 : ¬ Reader r709 :=
  refute_zero r709 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject709
def r710 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject710 : ¬ Reader r710 :=
  refute_zero r710 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject710
def r711 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject711 : ¬ Reader r711 :=
  refute_zero r711 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject711
def r712 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)))
theorem reject712 : ¬ Reader r712 :=
  refute_zero r712 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject712
def r713 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.var 1)))
theorem reject713 : ¬ Reader r713 :=
  refute_zero r713 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject713
def r714 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject714 : ¬ Reader r714 :=
  refute_zero r714 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject714
def r715 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject715 : ¬ Reader r715 :=
  refute_zero r715 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject715
def r716 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject716 : ¬ Reader r716 :=
  refute_zero r716 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject716
def r717 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject717 : ¬ Reader r717 :=
  refute_zero r717 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject717
def r718 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject718 : ¬ Reader r718 :=
  refute_zero r718 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject718
def r719 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject719 : ¬ Reader r719 :=
  refute_zero r719 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject719
def r720 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 2))) (.var 1)))
theorem reject720 : ¬ Reader r720 :=
  refute_zero r720 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject720
def r721 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject721 : ¬ Reader r721 :=
  refute_zero r721 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject721
def r722 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 2))) (.var 1)))
theorem reject722 : ¬ Reader r722 :=
  refute_zero r722 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject722
def r723 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject723 : ¬ Reader r723 :=
  refute_zero r723 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject723
def r724 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject724 : ¬ Reader r724 :=
  refute_zero r724 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject724
def r725 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject725 : ¬ Reader r725 :=
  refute_zero r725 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject725
def r726 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject726 : ¬ Reader r726 :=
  refute_zero r726 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject726
def r727 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)))
theorem reject727 : ¬ Reader r727 :=
  refute_zero r727 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject727
def r728 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)))
theorem reject728 : ¬ Reader r728 :=
  refute_zero r728 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject728
def r729 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject729 : ¬ Reader r729 :=
  refute_zero r729 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject729
def r730 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject730 : ¬ Reader r730 :=
  refute_zero r730 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject730
def r731 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject731 : ¬ Reader r731 :=
  refute_zero r731 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject731
def r732 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject732 : ¬ Reader r732 :=
  refute_zero r732 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject732
def r733 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.var 2))) (.var 1)))
theorem reject733 : ¬ Reader r733 :=
  refute_zero r733 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject733
def r734 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject734 : ¬ Reader r734 :=
  refute_zero r734 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject734
def r735 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject735 : ¬ Reader r735 :=
  refute_zero r735 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject735
def r736 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject736 : ¬ Reader r736 :=
  refute_zero r736 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject736
def r737 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject737 : ¬ Reader r737 :=
  refute_zero r737 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject737
def r738 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject738 : ¬ Reader r738 :=
  refute_zero r738 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject738
def r739 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject739 : ¬ Reader r739 :=
  refute_zero r739 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject739
def r740 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject740 : ¬ Reader r740 :=
  refute_zero r740 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject740
def r741 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject741 : ¬ Reader r741 :=
  refute_zero r741 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject741
def r742 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject742 : ¬ Reader r742 :=
  refute_zero r742 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject742
def r743 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)))
theorem reject743 : ¬ Reader r743 :=
  refute_zero r743 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject743
def r744 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject744 : ¬ Reader r744 :=
  refute_zero r744 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject744
def r745 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject745 : ¬ Reader r745 :=
  refute_zero r745 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject745
def r746 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject746 : ¬ Reader r746 :=
  refute_zero r746 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject746
def r747 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject747 : ¬ Reader r747 :=
  refute_zero r747 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject747
def r748 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject748 : ¬ Reader r748 :=
  refute_zero r748 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject748
def r749 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject749 : ¬ Reader r749 :=
  refute_zero r749 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject749
def r750 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject750 : ¬ Reader r750 :=
  refute_zero r750 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject750
def r751 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject751 : ¬ Reader r751 :=
  refute_zero r751 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject751
def r752 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject752 : ¬ Reader r752 :=
  refute_zero r752 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject752
def r753 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject753 : ¬ Reader r753 :=
  refute_zero r753 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject753
def r754 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject754 : ¬ Reader r754 :=
  refute_zero r754 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject754
def r755 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject755 : ¬ Reader r755 :=
  refute_zero r755 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject755
def r756 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject756 : ¬ Reader r756 :=
  refute_zero r756 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject756
def r757 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1)))) (.var 2))) (.var 1)))
theorem reject757 : ¬ Reader r757 :=
  refute_zero r757 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject757
def r758 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.var 2))) (.var 1)))
theorem reject758 : ¬ Reader r758 :=
  refute_zero r758 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject758
def r759 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0))) (.var 2))) (.var 1)))
theorem reject759 : ¬ Reader r759 :=
  refute_zero r759 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject759
def r760 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject760 : ¬ Reader r760 :=
  refute_zero r760 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject760
def r761 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.var 2))) (.var 1)))
theorem reject761 : ¬ Reader r761 :=
  refute_zero r761 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject761
def r762 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject762 : ¬ Reader r762 :=
  refute_zero r762 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject762
def r763 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject763 : ¬ Reader r763 :=
  refute_zero r763 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject763
def r764 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject764 : ¬ Reader r764 :=
  refute_zero r764 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject764
def r765 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject765 : ¬ Reader r765 :=
  refute_zero r765 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject765
def r766 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject766 : ¬ Reader r766 :=
  refute_zero r766 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject766
def r767 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject767 : ¬ Reader r767 :=
  refute_zero r767 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject767
def r768 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.var 2))) (.var 1)))
theorem reject768 : ¬ Reader r768 :=
  refute_zero r768 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject768
def r769 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject769 : ¬ Reader r769 :=
  refute_zero r769 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject769
def r770 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject770 : ¬ Reader r770 :=
  refute_zero r770 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject770
def r771 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject771 : ¬ Reader r771 :=
  refute_zero r771 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject771
def r772 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject772 : ¬ Reader r772 :=
  refute_zero r772 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject772
def r773 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject773 : ¬ Reader r773 :=
  refute_zero r773 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject773
def r774 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.var 2))) (.var 1)))
theorem reject774 : ¬ Reader r774 :=
  refute_zero r774 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject774
def r775 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject775 : ¬ Reader r775 :=
  refute_zero r775 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject775
def r776 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject776 : ¬ Reader r776 :=
  refute_zero r776 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject776
def r777 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)))
theorem reject777 : ¬ Reader r777 :=
  refute_zero r777 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject777
def r778 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.var 2))) (.var 1)))
theorem reject778 : ¬ Reader r778 :=
  refute_zero r778 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject778
def r779 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.var 2))) (.var 1)))
theorem reject779 : ¬ Reader r779 :=
  refute_zero r779 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject779
def r780 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0))) (.var 2))) (.var 1)))
theorem reject780 : ¬ Reader r780 :=
  refute_zero r780 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject780
def r781 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1))) (.var 0))) (.var 2))) (.var 1)))
theorem reject781 : ¬ Reader r781 :=
  refute_zero r781 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject781
def r782 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0))) (.var 2))) (.var 1)))
theorem reject782 : ¬ Reader r782 :=
  refute_zero r782 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject782
def r783 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject783 : ¬ Reader r783 :=
  refute_zero r783 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject783
def r784 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject784 : ¬ Reader r784 :=
  refute_zero r784 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject784
def r785 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject785 : ¬ Reader r785 :=
  refute_zero r785 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject785
def r786 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject786 : ¬ Reader r786 :=
  refute_zero r786 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject786
def r787 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject787 : ¬ Reader r787 :=
  refute_zero r787 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject787
def r788 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject788 : ¬ Reader r788 :=
  refute_zero r788 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject788
def r789 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject789 : ¬ Reader r789 :=
  refute_zero r789 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject789
def r790 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject790 : ¬ Reader r790 :=
  refute_zero r790 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject790
def r791 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject791 : ¬ Reader r791 :=
  refute_zero r791 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject791
def r792 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)))
theorem reject792 : ¬ Reader r792 :=
  refute_zero r792 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject792
def r793 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject793 : ¬ Reader r793 :=
  refute_zero r793 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject793
def r794 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject794 : ¬ Reader r794 :=
  refute_zero r794 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject794
def r795 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject795 : ¬ Reader r795 :=
  refute_zero r795 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject795
def r796 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject796 : ¬ Reader r796 :=
  refute_zero r796 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject796
def r797 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject797 : ¬ Reader r797 :=
  refute_zero r797 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject797
def r798 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))))
theorem reject798 : ¬ Reader r798 :=
  refute_zero r798 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject798
def r799 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))))
theorem reject799 : ¬ Reader r799 :=
  refute_zero r799 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject799
def r800 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))))
theorem reject800 : ¬ Reader r800 :=
  refute_zero r800 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject800
def r801 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))))))
theorem reject801 : ¬ Reader r801 :=
  refute_zero r801 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject801
def r802 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))))))
theorem reject802 : ¬ Reader r802 :=
  refute_zero r802 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject802
def r803 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))))))
theorem reject803 : ¬ Reader r803 :=
  refute_zero r803 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject803
def r804 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))))))
theorem reject804 : ¬ Reader r804 :=
  refute_zero r804 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject804
def r805 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)))))
theorem reject805 : ¬ Reader r805 :=
  refute_zero r805 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject805
def r806 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)))))
theorem reject806 : ¬ Reader r806 :=
  refute_zero r806 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject806
def r807 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)))))
theorem reject807 : ¬ Reader r807 :=
  refute_zero r807 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject807
def r808 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))))
theorem reject808 : ¬ Reader r808 :=
  refute_zero r808 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject808
def r809 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))))
theorem reject809 : ¬ Reader r809 :=
  refute_zero r809 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject809
def r810 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))))
theorem reject810 : ¬ Reader r810 :=
  refute_zero r810 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject810
def r811 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))))
theorem reject811 : ¬ Reader r811 :=
  refute_zero r811 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject811
def r812 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))))
theorem reject812 : ¬ Reader r812 :=
  refute_zero r812 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject812
def r813 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject813 : ¬ Reader r813 :=
  refute_zero r813 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject813
def r814 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject814 : ¬ Reader r814 :=
  refute_zero r814 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject814
def r815 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))))
theorem reject815 : ¬ Reader r815 :=
  refute_zero r815 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject815
def r816 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject816 : ¬ Reader r816 :=
  refute_zero r816 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject816
def r817 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))))
theorem reject817 : ¬ Reader r817 :=
  refute_zero r817 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject817
def r818 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))))
theorem reject818 : ¬ Reader r818 :=
  refute_zero r818 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject818
def r819 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject819 : ¬ Reader r819 :=
  refute_zero r819 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject819
def r820 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))))
theorem reject820 : ¬ Reader r820 :=
  refute_zero r820 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject820
def r821 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 1)))))
theorem reject821 : ¬ Reader r821 :=
  refute_zero r821 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject821
def r822 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))))))
theorem reject822 : ¬ Reader r822 :=
  refute_zero r822 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject822
def r823 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))))
theorem reject823 : ¬ Reader r823 :=
  refute_zero r823 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject823
def r824 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))))
theorem reject824 : ¬ Reader r824 :=
  refute_zero r824 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject824
def r825 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))))
theorem reject825 : ¬ Reader r825 :=
  refute_zero r825 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject825
def r826 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))))
theorem reject826 : ¬ Reader r826 :=
  refute_zero r826 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject826
def r827 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))))
theorem reject827 : ¬ Reader r827 :=
  refute_zero r827 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject827
def r828 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
theorem reject828 : ¬ Reader r828 :=
  refute_zero r828 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject828
def r829 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))))
theorem reject829 : ¬ Reader r829 :=
  refute_zero r829 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject829
def r830 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))))
theorem reject830 : ¬ Reader r830 :=
  refute_zero r830 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject830
def r831 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
theorem reject831 : ¬ Reader r831 :=
  refute_zero r831 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject831
def r832 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
theorem reject832 : ¬ Reader r832 :=
  refute_zero r832 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject832
def r833 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))))
theorem reject833 : ¬ Reader r833 :=
  refute_zero r833 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject833
def r834 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))))
theorem reject834 : ¬ Reader r834 :=
  refute_zero r834 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject834
def r835 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))))
theorem reject835 : ¬ Reader r835 :=
  refute_zero r835 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject835
def r836 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))))
theorem reject836 : ¬ Reader r836 :=
  refute_zero r836 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject836
def r837 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))))
theorem reject837 : ¬ Reader r837 :=
  refute_zero r837 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject837
def r838 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))))
theorem reject838 : ¬ Reader r838 :=
  refute_zero r838 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject838
def r839 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))))
theorem reject839 : ¬ Reader r839 :=
  refute_zero r839 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject839
def r840 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))))))
theorem reject840 : ¬ Reader r840 :=
  refute_zero r840 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject840
def r841 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))))))
theorem reject841 : ¬ Reader r841 :=
  refute_zero r841 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject841
def r842 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject842 : ¬ Reader r842 :=
  refute_zero r842 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject842
def r843 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject843 : ¬ Reader r843 :=
  refute_zero r843 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject843
def r844 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))))))
theorem reject844 : ¬ Reader r844 :=
  refute_zero r844 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject844
def r845 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))))))
theorem reject845 : ¬ Reader r845 :=
  refute_zero r845 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject845
def r846 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))))))
theorem reject846 : ¬ Reader r846 :=
  refute_zero r846 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject846
def r847 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))))))
theorem reject847 : ¬ Reader r847 :=
  refute_zero r847 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject847
def r848 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))))))
theorem reject848 : ¬ Reader r848 :=
  refute_zero r848 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject848
def r849 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))))))
theorem reject849 : ¬ Reader r849 :=
  refute_zero r849 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject849
def r850 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))))))
theorem reject850 : ¬ Reader r850 :=
  refute_zero r850 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject850
def r851 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))))))
theorem reject851 : ¬ Reader r851 :=
  refute_zero r851 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject851
def r852 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject852 : ¬ Reader r852 :=
  refute_zero r852 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject852
def r853 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))))))
theorem reject853 : ¬ Reader r853 :=
  refute_zero r853 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject853
def r854 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))))))
theorem reject854 : ¬ Reader r854 :=
  refute_zero r854 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject854
def r855 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))))))
theorem reject855 : ¬ Reader r855 :=
  refute_zero r855 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject855
def r856 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))))))
theorem reject856 : ¬ Reader r856 :=
  refute_zero r856 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject856
def r857 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))))))
theorem reject857 : ¬ Reader r857 :=
  refute_zero r857 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject857
def r858 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)))))
theorem reject858 : ¬ Reader r858 :=
  refute_zero r858 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject858
def r859 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)))))
theorem reject859 : ¬ Reader r859 :=
  refute_zero r859 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject859
def r860 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)))))
theorem reject860 : ¬ Reader r860 :=
  refute_zero r860 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject860
def r861 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)))))
theorem reject861 : ¬ Reader r861 :=
  refute_zero r861 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject861
def r862 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)))))
theorem reject862 : ¬ Reader r862 :=
  refute_zero r862 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject862
def r863 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)))))
theorem reject863 : ¬ Reader r863 :=
  refute_zero r863 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject863
def r864 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject864 : ¬ Reader r864 :=
  refute_zero r864 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject864
def r865 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)))))
theorem reject865 : ¬ Reader r865 :=
  refute_zero r865 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject865
def r866 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)))))
theorem reject866 : ¬ Reader r866 :=
  refute_zero r866 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject866
def r867 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)))))
theorem reject867 : ¬ Reader r867 :=
  refute_zero r867 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject867
def r868 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)))))
theorem reject868 : ¬ Reader r868 :=
  refute_zero r868 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject868
def r869 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 1)))))
theorem reject869 : ¬ Reader r869 :=
  refute_zero r869 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject869
def r870 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 1)))))
theorem reject870 : ¬ Reader r870 :=
  refute_zero r870 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject870
def r871 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)))))
theorem reject871 : ¬ Reader r871 :=
  refute_zero r871 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject871
def r872 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 1)))))
theorem reject872 : ¬ Reader r872 :=
  refute_zero r872 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject872
def r873 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))))
theorem reject873 : ¬ Reader r873 :=
  refute_zero r873 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject873
def r874 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))))
theorem reject874 : ¬ Reader r874 :=
  refute_zero r874 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject874
def r875 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))))
theorem reject875 : ¬ Reader r875 :=
  refute_zero r875 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject875
def r876 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))))
theorem reject876 : ¬ Reader r876 :=
  refute_zero r876 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject876
def r877 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)))))
theorem reject877 : ¬ Reader r877 :=
  refute_zero r877 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject877
def r878 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))))))
theorem reject878 : ¬ Reader r878 :=
  refute_zero r878 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject878
def r879 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2)))))))
theorem reject879 : ¬ Reader r879 :=
  refute_zero r879 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject879
def r880 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1)))))
theorem reject880 : ¬ Reader r880 :=
  refute_zero r880 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject880
def r881 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))))))
theorem reject881 : ¬ Reader r881 :=
  refute_zero r881 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject881
def r882 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))))))
theorem reject882 : ¬ Reader r882 :=
  refute_zero r882 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject882
def r883 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))))
theorem reject883 : ¬ Reader r883 :=
  refute_zero r883 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject883
def r884 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))))
theorem reject884 : ¬ Reader r884 :=
  refute_zero r884 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject884
def r885 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))))
theorem reject885 : ¬ Reader r885 :=
  refute_zero r885 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject885
def r886 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))))
theorem reject886 : ¬ Reader r886 :=
  refute_zero r886 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject886
def r887 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))))
theorem reject887 : ¬ Reader r887 :=
  refute_zero r887 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject887
def r888 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject888 : ¬ Reader r888 :=
  refute_zero r888 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject888
def r889 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject889 : ¬ Reader r889 :=
  refute_zero r889 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject889
def r890 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))))
theorem reject890 : ¬ Reader r890 :=
  refute_zero r890 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject890
def r891 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject891 : ¬ Reader r891 :=
  refute_zero r891 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject891
def r892 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))))
theorem reject892 : ¬ Reader r892 :=
  refute_zero r892 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject892
def r893 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))))
theorem reject893 : ¬ Reader r893 :=
  refute_zero r893 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject893
def r894 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject894 : ¬ Reader r894 :=
  refute_zero r894 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject894
def r895 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))))
theorem reject895 : ¬ Reader r895 :=
  refute_zero r895 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject895
def r896 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)))))
theorem reject896 : ¬ Reader r896 :=
  refute_zero r896 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject896
def r897 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 2) (.var 2))))))))
theorem reject897 : ¬ Reader r897 :=
  refute_zero r897 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject897
def r898 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.app (.app (.var 2) (.var 2)) (.var 2)))))))
theorem reject898 : ¬ Reader r898 :=
  refute_zero r898 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject898
def r899 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 2) (.var 2)))))))
theorem reject899 : ¬ Reader r899 :=
  refute_zero r899 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject899
def r900 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 2))) (.var 2))))))
theorem reject900 : ¬ Reader r900 :=
  refute_zero r900 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject900
def r901 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 2)) (.var 2))))))
theorem reject901 : ¬ Reader r901 :=
  refute_zero r901 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject901
def r902 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))))))
theorem reject902 : ¬ Reader r902 :=
  refute_zero r902 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject902
def r903 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))))))
theorem reject903 : ¬ Reader r903 :=
  refute_zero r903 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject903
def r904 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))))))
theorem reject904 : ¬ Reader r904 :=
  refute_zero r904 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject904
def r905 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))))))
theorem reject905 : ¬ Reader r905 :=
  refute_zero r905 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject905
def r906 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))))))
theorem reject906 : ¬ Reader r906 :=
  refute_zero r906 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject906
def r907 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))))))
theorem reject907 : ¬ Reader r907 :=
  refute_zero r907 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject907
def r908 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))))))
theorem reject908 : ¬ Reader r908 :=
  refute_zero r908 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject908
def r909 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))))))
theorem reject909 : ¬ Reader r909 :=
  refute_zero r909 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject909
def r910 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))))))
theorem reject910 : ¬ Reader r910 :=
  refute_zero r910 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject910
def r911 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))))))
theorem reject911 : ¬ Reader r911 :=
  refute_zero r911 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject911
def r912 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 2))))))
theorem reject912 : ¬ Reader r912 :=
  refute_zero r912 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject912
def r913 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 2))))))
theorem reject913 : ¬ Reader r913 :=
  refute_zero r913 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject913
def r914 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)))))
theorem reject914 : ¬ Reader r914 :=
  refute_zero r914 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject914
def r915 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)))))
theorem reject915 : ¬ Reader r915 :=
  refute_zero r915 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject915
def r916 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 1)))))
theorem reject916 : ¬ Reader r916 :=
  refute_zero r916 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject916
def r917 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)))))
theorem reject917 : ¬ Reader r917 :=
  refute_zero r917 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject917
def r918 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))))
theorem reject918 : ¬ Reader r918 :=
  refute_zero r918 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject918
def r919 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))))
theorem reject919 : ¬ Reader r919 :=
  refute_zero r919 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject919
def r920 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))))
theorem reject920 : ¬ Reader r920 :=
  refute_zero r920 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject920
def r921 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))))))
theorem reject921 : ¬ Reader r921 :=
  refute_zero r921 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject921
def r922 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))))))
theorem reject922 : ¬ Reader r922 :=
  refute_zero r922 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject922
def r923 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))))))
theorem reject923 : ¬ Reader r923 :=
  refute_zero r923 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject923
def r924 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))))))
theorem reject924 : ¬ Reader r924 :=
  refute_zero r924 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject924
def r925 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))))))
theorem reject925 : ¬ Reader r925 :=
  refute_zero r925 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject925
def r926 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))))))
theorem reject926 : ¬ Reader r926 :=
  refute_zero r926 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject926
def r927 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))))))
theorem reject927 : ¬ Reader r927 :=
  refute_zero r927 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject927
def r928 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))
theorem reject928 : ¬ Reader r928 :=
  refute_zero r928 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject928
def r929 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))
theorem reject929 : ¬ Reader r929 :=
  refute_zero r929 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject929
def r930 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))))
theorem reject930 : ¬ Reader r930 :=
  refute_zero r930 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject930
def r931 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject931 : ¬ Reader r931 :=
  refute_zero r931 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject931
def r932 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject932 : ¬ Reader r932 :=
  refute_zero r932 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject932
def r933 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))))))
theorem reject933 : ¬ Reader r933 :=
  refute_zero r933 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject933
def r934 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))))
theorem reject934 : ¬ Reader r934 :=
  refute_zero r934 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject934
def r935 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))))))
theorem reject935 : ¬ Reader r935 :=
  refute_zero r935 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject935
def r936 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))))))
theorem reject936 : ¬ Reader r936 :=
  refute_zero r936 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject936
def r937 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject937 : ¬ Reader r937 :=
  refute_zero r937 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject937
def r938 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))))))
theorem reject938 : ¬ Reader r938 :=
  refute_zero r938 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject938
def r939 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))))))
theorem reject939 : ¬ Reader r939 :=
  refute_zero r939 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject939
def r940 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))))))
theorem reject940 : ¬ Reader r940 :=
  refute_zero r940 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject940
def r941 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))))))
theorem reject941 : ¬ Reader r941 :=
  refute_zero r941 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject941
def r942 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))))))
theorem reject942 : ¬ Reader r942 :=
  refute_zero r942 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject942
def r943 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)))))
theorem reject943 : ¬ Reader r943 :=
  refute_zero r943 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject943
def r944 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)))))
theorem reject944 : ¬ Reader r944 :=
  refute_zero r944 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject944
def r945 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)))))
theorem reject945 : ¬ Reader r945 :=
  refute_zero r945 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject945
def r946 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))))
theorem reject946 : ¬ Reader r946 :=
  refute_zero r946 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject946
def r947 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject947 : ¬ Reader r947 :=
  refute_zero r947 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject947
def r948 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)))))
theorem reject948 : ¬ Reader r948 :=
  refute_zero r948 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject948
def r949 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)))))
theorem reject949 : ¬ Reader r949 :=
  refute_zero r949 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject949
def r950 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)))))
theorem reject950 : ¬ Reader r950 :=
  refute_zero r950 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject950
def r951 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)))))
theorem reject951 : ¬ Reader r951 :=
  refute_zero r951 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject951
def r952 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)))))
theorem reject952 : ¬ Reader r952 :=
  refute_zero r952 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject952
def r953 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject953 : ¬ Reader r953 :=
  refute_zero r953 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject953
def r954 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject954 : ¬ Reader r954 :=
  refute_zero r954 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject954
def r955 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject955 : ¬ Reader r955 :=
  refute_zero r955 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject955
def r956 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject956 : ¬ Reader r956 :=
  refute_zero r956 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject956
def r957 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject957 : ¬ Reader r957 :=
  refute_zero r957 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject957
def r958 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))))
theorem reject958 : ¬ Reader r958 :=
  refute_zero r958 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject958
def r959 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))))
theorem reject959 : ¬ Reader r959 :=
  refute_zero r959 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject959
def r960 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))))
theorem reject960 : ¬ Reader r960 :=
  refute_zero r960 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject960
def r961 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))))))
theorem reject961 : ¬ Reader r961 :=
  refute_zero r961 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject961
def r962 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))))))
theorem reject962 : ¬ Reader r962 :=
  refute_zero r962 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject962
def r963 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))))))
theorem reject963 : ¬ Reader r963 :=
  refute_zero r963 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject963
def r964 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))))))
theorem reject964 : ¬ Reader r964 :=
  refute_zero r964 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject964
def r965 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)))))
theorem reject965 : ¬ Reader r965 :=
  refute_zero r965 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject965
def r966 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)))))
theorem reject966 : ¬ Reader r966 :=
  refute_zero r966 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject966
def r967 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)))))
theorem reject967 : ¬ Reader r967 :=
  refute_zero r967 (.app (.var 1) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject967
def r968 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject968 : ¬ Reader r968 :=
  refute_zero r968 (.app (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject968
def r969 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject969 : ¬ Reader r969 :=
  refute_zero r969 (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject969
def r970 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject970 : ¬ Reader r970 :=
  refute_zero r970 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject970
def r971 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject971 : ¬ Reader r971 :=
  refute_zero r971 (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject971
def r972 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject972 : ¬ Reader r972 :=
  refute_zero r972 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject972
def r973 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject973 : ¬ Reader r973 :=
  refute_zero r973 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject973
def r974 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject974 : ¬ Reader r974 :=
  refute_zero r974 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject974
def r975 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject975 : ¬ Reader r975 :=
  refute_zero r975 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject975
def r976 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject976 : ¬ Reader r976 :=
  refute_zero r976 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject976
def r977 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject977 : ¬ Reader r977 :=
  refute_zero r977 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject977
def r978 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject978 : ¬ Reader r978 :=
  refute_zero r978 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject978
def r979 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject979 : ¬ Reader r979 :=
  refute_zero r979 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject979
def r980 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject980 : ¬ Reader r980 :=
  refute_zero r980 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject980
def r981 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject981 : ¬ Reader r981 :=
  refute_zero r981 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject981
def r982 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject982 : ¬ Reader r982 :=
  refute_zero r982 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject982
def r983 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject983 : ¬ Reader r983 :=
  refute_zero r983 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject983
def r984 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject984 : ¬ Reader r984 :=
  refute_zero r984 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject984
def r985 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject985 : ¬ Reader r985 :=
  refute_zero r985 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject985
def r986 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject986 : ¬ Reader r986 :=
  refute_zero r986 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject986
def r987 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))))
theorem reject987 : ¬ Reader r987 :=
  refute_zero r987 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject987
def r988 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))))
theorem reject988 : ¬ Reader r988 :=
  refute_zero r988 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject988
def r989 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))
theorem reject989 : ¬ Reader r989 :=
  refute_zero r989 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject989
def r990 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))
theorem reject990 : ¬ Reader r990 :=
  refute_zero r990 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject990
def r991 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))
theorem reject991 : ¬ Reader r991 :=
  refute_zero r991 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject991
def r992 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))
theorem reject992 : ¬ Reader r992 :=
  refute_zero r992 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject992
def r993 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))
theorem reject993 : ¬ Reader r993 :=
  refute_zero r993 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject993
def r994 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))
theorem reject994 : ¬ Reader r994 :=
  refute_zero r994 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject994
def r995 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))
theorem reject995 : ¬ Reader r995 :=
  refute_zero r995 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject995
def r996 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))))
theorem reject996 : ¬ Reader r996 :=
  refute_zero r996 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject996
def r997 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))))
theorem reject997 : ¬ Reader r997 :=
  refute_zero r997 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject997
def r998 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))
theorem reject998 : ¬ Reader r998 :=
  refute_zero r998 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject998
def r999 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))
theorem reject999 : ¬ Reader r999 :=
  refute_zero r999 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject999
def r1000 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))
theorem reject1000 : ¬ Reader r1000 :=
  refute_zero r1000 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1000
def r1001 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))
theorem reject1001 : ¬ Reader r1001 :=
  refute_zero r1001 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1001
def r1002 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))))
theorem reject1002 : ¬ Reader r1002 :=
  refute_zero r1002 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1002
def r1003 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))))
theorem reject1003 : ¬ Reader r1003 :=
  refute_zero r1003 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1003
def r1004 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))))
theorem reject1004 : ¬ Reader r1004 :=
  refute_zero r1004 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1004
def r1005 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))))
theorem reject1005 : ¬ Reader r1005 :=
  refute_zero r1005 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1005
def r1006 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject1006 : ¬ Reader r1006 :=
  refute_zero r1006 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1006
def r1007 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject1007 : ¬ Reader r1007 :=
  refute_zero r1007 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1007
def r1008 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject1008 : ¬ Reader r1008 :=
  refute_zero r1008 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1008
def r1009 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject1009 : ¬ Reader r1009 :=
  refute_zero r1009 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1009
def r1010 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject1010 : ¬ Reader r1010 :=
  refute_zero r1010 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1010
def r1011 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))))
theorem reject1011 : ¬ Reader r1011 :=
  refute_zero r1011 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1011
def r1012 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))))
theorem reject1012 : ¬ Reader r1012 :=
  refute_zero r1012 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1012
def r1013 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))))
theorem reject1013 : ¬ Reader r1013 :=
  refute_zero r1013 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1013
def r1014 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))))
theorem reject1014 : ¬ Reader r1014 :=
  refute_zero r1014 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1014
def r1015 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))
theorem reject1015 : ¬ Reader r1015 :=
  refute_zero r1015 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1015
def r1016 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))
theorem reject1016 : ¬ Reader r1016 :=
  refute_zero r1016 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1016
def r1017 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))))
theorem reject1017 : ¬ Reader r1017 :=
  refute_zero r1017 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1017
def r1018 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))))
theorem reject1018 : ¬ Reader r1018 :=
  refute_zero r1018 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1018
def r1019 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))))
theorem reject1019 : ¬ Reader r1019 :=
  refute_zero r1019 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1019
def r1020 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))))
theorem reject1020 : ¬ Reader r1020 :=
  refute_zero r1020 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1020
def r1021 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))))
theorem reject1021 : ¬ Reader r1021 :=
  refute_zero r1021 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1021
def r1022 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))))
theorem reject1022 : ¬ Reader r1022 :=
  refute_zero r1022 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1022
def r1023 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))))
theorem reject1023 : ¬ Reader r1023 :=
  refute_zero r1023 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1023
def r1024 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))))
theorem reject1024 : ¬ Reader r1024 :=
  refute_zero r1024 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1024
def r1025 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject1025 : ¬ Reader r1025 :=
  refute_zero r1025 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject1025
def r1026 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject1026 : ¬ Reader r1026 :=
  refute_zero r1026 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject1026
def r1027 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject1027 : ¬ Reader r1027 :=
  refute_zero r1027 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject1027
def r1028 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject1028 : ¬ Reader r1028 :=
  refute_zero r1028 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject1028
def r1029 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject1029 : ¬ Reader r1029 :=
  refute_zero r1029 (.var 1) 6 (by decide) (by decide) (by decide)
#print axioms reject1029
def r1030 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject1030 : ¬ Reader r1030 :=
  refute_zero r1030 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1030
def r1031 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject1031 : ¬ Reader r1031 :=
  refute_zero r1031 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1031
def r1032 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject1032 : ¬ Reader r1032 :=
  refute_zero r1032 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1032
def r1033 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject1033 : ¬ Reader r1033 :=
  refute_zero r1033 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1033
def r1034 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject1034 : ¬ Reader r1034 :=
  refute_zero r1034 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1034
def r1035 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject1035 : ¬ Reader r1035 :=
  refute_zero r1035 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1035
def r1036 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject1036 : ¬ Reader r1036 :=
  refute_zero r1036 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1036
def r1037 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject1037 : ¬ Reader r1037 :=
  refute_zero r1037 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1037
def r1038 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject1038 : ¬ Reader r1038 :=
  refute_zero r1038 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1038
def r1039 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject1039 : ¬ Reader r1039 :=
  refute_zero r1039 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1039
def r1040 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject1040 : ¬ Reader r1040 :=
  refute_zero r1040 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1040
def r1041 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject1041 : ¬ Reader r1041 :=
  refute_zero r1041 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1041
def r1042 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject1042 : ¬ Reader r1042 :=
  refute_zero r1042 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1042
def r1043 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject1043 : ¬ Reader r1043 :=
  refute_zero r1043 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1043
def r1044 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject1044 : ¬ Reader r1044 :=
  refute_zero r1044 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1044
def r1045 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1045 : ¬ Reader r1045 :=
  refute_zero r1045 (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1045
def r1046 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1046 : ¬ Reader r1046 :=
  refute_zero r1046 (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1046
def r1047 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject1047 : ¬ Reader r1047 :=
  refute_zero r1047 (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1047
def r1048 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject1048 : ¬ Reader r1048 :=
  refute_zero r1048 (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1048
def r1049 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject1049 : ¬ Reader r1049 :=
  refute_zero r1049 (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1049
def r1050 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1050 : ¬ Reader r1050 :=
  refute_zero r1050 (.app (.app (.var 1) (.var 1)) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1050
def r1051 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1051 : ¬ Reader r1051 :=
  refute_zero r1051 (.app (.app (.var 1) (.var 1)) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1051
def r1052 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1052 : ¬ Reader r1052 :=
  refute_zero r1052 (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1052
def r1053 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1053 : ¬ Reader r1053 :=
  refute_zero r1053 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1053
def r1054 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1054 : ¬ Reader r1054 :=
  refute_zero r1054 (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1054
def r1055 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1055 : ¬ Reader r1055 :=
  refute_zero r1055 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1055
def r1056 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1056 : ¬ Reader r1056 :=
  refute_zero r1056 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1056
def r1057 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1057 : ¬ Reader r1057 :=
  refute_zero r1057 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1057
def r1058 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1058 : ¬ Reader r1058 :=
  refute_zero r1058 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1058
def r1059 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1059 : ¬ Reader r1059 :=
  refute_zero r1059 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1059
def r1060 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1060 : ¬ Reader r1060 :=
  refute_zero r1060 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1060
def r1061 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1061 : ¬ Reader r1061 :=
  refute_zero r1061 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1061
def r1062 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1062 : ¬ Reader r1062 :=
  refute_zero r1062 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1062
def r1063 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1063 : ¬ Reader r1063 :=
  refute_zero r1063 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1063
def r1064 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1064 : ¬ Reader r1064 :=
  refute_zero r1064 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1064
def r1065 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1065 : ¬ Reader r1065 :=
  refute_zero r1065 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1065
def r1066 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.lam (.var 2))))))
theorem reject1066 : ¬ Reader r1066 :=
  refute_zero r1066 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1066
def r1067 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 2))))))
theorem reject1067 : ¬ Reader r1067 :=
  refute_zero r1067 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1067
def r1068 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.app (.var 2) (.var 2))))))
theorem reject1068 : ¬ Reader r1068 :=
  refute_zero r1068 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1068
def r1069 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject1069 : ¬ Reader r1069 :=
  refute_zero r1069 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1069
def r1070 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject1070 : ¬ Reader r1070 :=
  refute_zero r1070 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1070
def r1071 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject1071 : ¬ Reader r1071 :=
  refute_zero r1071 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1071
def r1072 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject1072 : ¬ Reader r1072 :=
  refute_zero r1072 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1072
def r1073 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject1073 : ¬ Reader r1073 :=
  refute_zero r1073 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1073
def r1074 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject1074 : ¬ Reader r1074 :=
  refute_zero r1074 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1074
def r1075 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.app (.var 2) (.var 2))))))
theorem reject1075 : ¬ Reader r1075 :=
  refute_zero r1075 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1075
def r1076 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject1076 : ¬ Reader r1076 :=
  refute_zero r1076 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1076
def r1077 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject1077 : ¬ Reader r1077 :=
  refute_zero r1077 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1077
def r1078 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject1078 : ¬ Reader r1078 :=
  refute_zero r1078 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1078
def r1079 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject1079 : ¬ Reader r1079 :=
  refute_zero r1079 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1079
def r1080 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject1080 : ¬ Reader r1080 :=
  refute_zero r1080 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1080
def r1081 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject1081 : ¬ Reader r1081 :=
  refute_zero r1081 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1081
def r1082 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1082 : ¬ Reader r1082 :=
  refute_zero r1082 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1082
def r1083 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1083 : ¬ Reader r1083 :=
  refute_zero r1083 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1083
def r1084 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1084 : ¬ Reader r1084 :=
  refute_zero r1084 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1084
def r1085 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1085 : ¬ Reader r1085 :=
  refute_zero r1085 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1085
def r1086 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject1086 : ¬ Reader r1086 :=
  refute_zero r1086 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1086
def r1087 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject1087 : ¬ Reader r1087 :=
  refute_zero r1087 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1087
def r1088 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject1088 : ¬ Reader r1088 :=
  refute_zero r1088 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1088
def r1089 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject1089 : ¬ Reader r1089 :=
  refute_zero r1089 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1089
def r1090 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject1090 : ¬ Reader r1090 :=
  refute_zero r1090 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1090
def r1091 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject1091 : ¬ Reader r1091 :=
  refute_zero r1091 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1091
def r1092 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject1092 : ¬ Reader r1092 :=
  refute_zero r1092 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1092
def r1093 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject1093 : ¬ Reader r1093 :=
  refute_zero r1093 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1093
def r1094 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1094 : ¬ Reader r1094 :=
  refute_zero r1094 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1094
def r1095 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1095 : ¬ Reader r1095 :=
  refute_zero r1095 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1095
def r1096 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1096 : ¬ Reader r1096 :=
  refute_zero r1096 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1096
def r1097 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1097 : ¬ Reader r1097 :=
  refute_zero r1097 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1097
def r1098 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1098 : ¬ Reader r1098 :=
  refute_zero r1098 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1098
def r1099 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1099 : ¬ Reader r1099 :=
  refute_zero r1099 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1099
def r1100 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1100 : ¬ Reader r1100 :=
  refute_zero r1100 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1100
def r1101 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1101 : ¬ Reader r1101 :=
  refute_zero r1101 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1101
def r1102 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1102 : ¬ Reader r1102 :=
  refute_zero r1102 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1102
def r1103 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1103 : ¬ Reader r1103 :=
  refute_zero r1103 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1103
def r1104 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1104 : ¬ Reader r1104 :=
  refute_zero r1104 (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1104
def r1105 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1105 : ¬ Reader r1105 :=
  refute_zero r1105 (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1105
def r1106 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1106 : ¬ Reader r1106 :=
  refute_zero r1106 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1106
def r1107 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1107 : ¬ Reader r1107 :=
  refute_zero r1107 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1107
def r1108 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1108 : ¬ Reader r1108 :=
  refute_zero r1108 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1108
def r1109 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1109 : ¬ Reader r1109 :=
  refute_zero r1109 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1109
def r1110 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1110 : ¬ Reader r1110 :=
  refute_zero r1110 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1110
def r1111 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1111 : ¬ Reader r1111 :=
  refute_zero r1111 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1111
def r1112 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1112 : ¬ Reader r1112 :=
  refute_zero r1112 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1112
def r1113 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1113 : ¬ Reader r1113 :=
  refute_zero r1113 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1113
def r1114 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1114 : ¬ Reader r1114 :=
  refute_zero r1114 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1114
def r1115 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.app (.var 1) (.lam (.var 2))))))
theorem reject1115 : ¬ Reader r1115 :=
  refute_zero r1115 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1115
def r1116 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.lam (.var 2))))))
theorem reject1116 : ¬ Reader r1116 :=
  refute_zero r1116 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1116
def r1117 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 2))))))
theorem reject1117 : ¬ Reader r1117 :=
  refute_zero r1117 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1117
def r1118 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1118 : ¬ Reader r1118 :=
  refute_zero r1118 (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1118
def r1119 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1119 : ¬ Reader r1119 :=
  refute_zero r1119 (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1119
def r1120 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1120 : ¬ Reader r1120 :=
  refute_zero r1120 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1120
def r1121 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1121 : ¬ Reader r1121 :=
  refute_zero r1121 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1121
def r1122 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1122 : ¬ Reader r1122 :=
  refute_zero r1122 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1122
def r1123 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1123 : ¬ Reader r1123 :=
  refute_zero r1123 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1123
def r1124 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1124 : ¬ Reader r1124 :=
  refute_zero r1124 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1124
def r1125 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1125 : ¬ Reader r1125 :=
  refute_zero r1125 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1125
def r1126 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1126 : ¬ Reader r1126 :=
  refute_zero r1126 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1126
def r1127 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1127 : ¬ Reader r1127 :=
  refute_zero r1127 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1127
def r1128 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1128 : ¬ Reader r1128 :=
  refute_zero r1128 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1128
def r1129 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1129 : ¬ Reader r1129 :=
  refute_zero r1129 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1129
def r1130 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1130 : ¬ Reader r1130 :=
  refute_zero r1130 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1130
def r1131 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1131 : ¬ Reader r1131 :=
  refute_zero r1131 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1131
def r1132 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1132 : ¬ Reader r1132 :=
  refute_zero r1132 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1132
def r1133 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1133 : ¬ Reader r1133 :=
  refute_zero r1133 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1133
def r1134 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1134 : ¬ Reader r1134 :=
  refute_zero r1134 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1134
def r1135 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1135 : ¬ Reader r1135 :=
  refute_zero r1135 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1135
def r1136 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1136 : ¬ Reader r1136 :=
  refute_zero r1136 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1136
def r1137 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1137 : ¬ Reader r1137 :=
  refute_zero r1137 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1137
def r1138 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1138 : ¬ Reader r1138 :=
  refute_zero r1138 (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1138
def r1139 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1139 : ¬ Reader r1139 :=
  refute_zero r1139 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1139
def r1140 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1140 : ¬ Reader r1140 :=
  refute_zero r1140 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1140
def r1141 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1141 : ¬ Reader r1141 :=
  refute_zero r1141 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1141
def r1142 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1142 : ¬ Reader r1142 :=
  refute_zero r1142 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1142
def r1143 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1143 : ¬ Reader r1143 :=
  refute_zero r1143 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1143
def r1144 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1144 : ¬ Reader r1144 :=
  refute_zero r1144 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1144
def r1145 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1145 : ¬ Reader r1145 :=
  refute_zero r1145 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1145
def r1146 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1146 : ¬ Reader r1146 :=
  refute_zero r1146 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1146
def r1147 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1147 : ¬ Reader r1147 :=
  refute_zero r1147 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1147
def r1148 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1148 : ¬ Reader r1148 :=
  refute_zero r1148 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1148
def r1149 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1149 : ¬ Reader r1149 :=
  refute_zero r1149 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1149
def r1150 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1150 : ¬ Reader r1150 :=
  refute_zero r1150 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1150
def r1151 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1151 : ¬ Reader r1151 :=
  refute_zero r1151 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1151
def r1152 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1152 : ¬ Reader r1152 :=
  refute_zero r1152 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1152
def r1153 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1153 : ¬ Reader r1153 :=
  refute_zero r1153 (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1153
def r1154 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1154 : ¬ Reader r1154 :=
  refute_zero r1154 (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1154
def r1155 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1155 : ¬ Reader r1155 :=
  refute_zero r1155 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1155
def r1156 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1156 : ¬ Reader r1156 :=
  refute_zero r1156 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1156
def r1157 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1157 : ¬ Reader r1157 :=
  refute_zero r1157 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1157
def r1158 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1158 : ¬ Reader r1158 :=
  refute_zero r1158 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1158
def r1159 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1159 : ¬ Reader r1159 :=
  refute_zero r1159 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1159
def r1160 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1160 : ¬ Reader r1160 :=
  refute_zero r1160 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1160
def r1161 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.lam (.var 2)))))
theorem reject1161 : ¬ Reader r1161 :=
  refute_zero r1161 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1161
def r1162 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 2)))))
theorem reject1162 : ¬ Reader r1162 :=
  refute_zero r1162 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1162
def r1163 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.lam (.var 2)))))
theorem reject1163 : ¬ Reader r1163 :=
  refute_zero r1163 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1163
def r1164 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 2)))))
theorem reject1164 : ¬ Reader r1164 :=
  refute_zero r1164 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1164
def r1165 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject1165 : ¬ Reader r1165 :=
  refute_zero r1165 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1165
def r1166 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject1166 : ¬ Reader r1166 :=
  refute_zero r1166 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1166
def r1167 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject1167 : ¬ Reader r1167 :=
  refute_zero r1167 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1167
def r1168 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject1168 : ¬ Reader r1168 :=
  refute_zero r1168 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1168
def r1169 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject1169 : ¬ Reader r1169 :=
  refute_zero r1169 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1169
def r1170 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject1170 : ¬ Reader r1170 :=
  refute_zero r1170 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1170
def r1171 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject1171 : ¬ Reader r1171 :=
  refute_zero r1171 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1171
def r1172 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject1172 : ¬ Reader r1172 :=
  refute_zero r1172 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1172
def r1173 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1)))))
theorem reject1173 : ¬ Reader r1173 :=
  refute_zero r1173 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1173
def r1174 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0)))))
theorem reject1174 : ¬ Reader r1174 :=
  refute_zero r1174 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1174
def r1175 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1175 : ¬ Reader r1175 :=
  refute_zero r1175 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1175
def r1176 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1176 : ¬ Reader r1176 :=
  refute_zero r1176 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1176
def r1177 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1177 : ¬ Reader r1177 :=
  refute_zero r1177 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1177
def r1178 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1178 : ¬ Reader r1178 :=
  refute_zero r1178 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1178
def r1179 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1179 : ¬ Reader r1179 :=
  refute_zero r1179 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1179
def r1180 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject1180 : ¬ Reader r1180 :=
  refute_zero r1180 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1180
def r1181 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject1181 : ¬ Reader r1181 :=
  refute_zero r1181 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1181
def r1182 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject1182 : ¬ Reader r1182 :=
  refute_zero r1182 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1182
def r1183 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject1183 : ¬ Reader r1183 :=
  refute_zero r1183 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1183
def r1184 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject1184 : ¬ Reader r1184 :=
  refute_zero r1184 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1184
def r1185 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject1185 : ¬ Reader r1185 :=
  refute_zero r1185 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1185
def r1186 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject1186 : ¬ Reader r1186 :=
  refute_zero r1186 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1186
def r1187 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject1187 : ¬ Reader r1187 :=
  refute_zero r1187 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1187
def r1188 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.lam (.lam (.var 3))))))
theorem reject1188 : ¬ Reader r1188 :=
  refute_zero r1188 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1188
def r1189 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem reject1189 : ¬ Reader r1189 :=
  refute_zero r1189 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1189
def r1190 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1190 : ¬ Reader r1190 :=
  refute_zero r1190 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1190
def r1191 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1191 : ¬ Reader r1191 :=
  refute_zero r1191 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1191
def r1192 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1192 : ¬ Reader r1192 :=
  refute_zero r1192 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1192
def r1193 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1193 : ¬ Reader r1193 :=
  refute_zero r1193 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1193
def r1194 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1194 : ¬ Reader r1194 :=
  refute_zero r1194 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1194
def r1195 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1195 : ¬ Reader r1195 :=
  refute_zero r1195 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1195
def r1196 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1196 : ¬ Reader r1196 :=
  refute_zero r1196 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1196
def r1197 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1197 : ¬ Reader r1197 :=
  refute_zero r1197 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1197
def r1198 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1198 : ¬ Reader r1198 :=
  refute_zero r1198 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1198
def r1199 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1199 : ¬ Reader r1199 :=
  refute_zero r1199 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1199
def r1200 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1200 : ¬ Reader r1200 :=
  refute_zero r1200 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1200
def r1201 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1201 : ¬ Reader r1201 :=
  refute_zero r1201 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1201
def r1202 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1202 : ¬ Reader r1202 :=
  refute_zero r1202 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1202
def r1203 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1203 : ¬ Reader r1203 :=
  refute_zero r1203 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1203
def r1204 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1204 : ¬ Reader r1204 :=
  refute_zero r1204 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1204
def r1205 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))))
theorem reject1205 : ¬ Reader r1205 :=
  refute_zero r1205 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1205
def r1206 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))) (.var 2)) (.var 1))))
theorem reject1206 : ¬ Reader r1206 :=
  refute_zero r1206 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1206
def r1207 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1207 : ¬ Reader r1207 :=
  refute_zero r1207 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1207
def r1208 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1208 : ¬ Reader r1208 :=
  refute_zero r1208 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1208
def r1209 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1209 : ¬ Reader r1209 :=
  refute_zero r1209 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1209
def r1210 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1210 : ¬ Reader r1210 :=
  refute_zero r1210 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1210
def r1211 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))))) (.var 2)) (.var 1))))
theorem reject1211 : ¬ Reader r1211 :=
  refute_zero r1211 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1211
def r1212 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))))) (.var 2)) (.var 1))))
theorem reject1212 : ¬ Reader r1212 :=
  refute_zero r1212 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1212
def r1213 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1213 : ¬ Reader r1213 :=
  refute_zero r1213 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1213
def r1214 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1214 : ¬ Reader r1214 :=
  refute_zero r1214 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1214
def r1215 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1215 : ¬ Reader r1215 :=
  refute_zero r1215 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1215
def r1216 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))) (.var 2)) (.lam (.var 2)))))
theorem reject1216 : ¬ Reader r1216 :=
  refute_zero r1216 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1216
def r1217 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1217 : ¬ Reader r1217 :=
  refute_zero r1217 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1217
def r1218 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))) (.var 2)) (.lam (.var 2)))))
theorem reject1218 : ¬ Reader r1218 :=
  refute_zero r1218 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1218
def r1219 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1219 : ¬ Reader r1219 :=
  refute_zero r1219 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1219
def r1220 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 2)))))
theorem reject1220 : ¬ Reader r1220 :=
  refute_zero r1220 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1220
def r1221 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))))) (.var 2)) (.lam (.var 2)))))
theorem reject1221 : ¬ Reader r1221 :=
  refute_zero r1221 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1221
def r1222 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))))) (.var 2)) (.lam (.var 2)))))
theorem reject1222 : ¬ Reader r1222 :=
  refute_zero r1222 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1222
def r1223 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)))) (.var 2)) (.lam (.var 2)))))
theorem reject1223 : ¬ Reader r1223 :=
  refute_zero r1223 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1223
def r1224 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)))) (.var 2)) (.lam (.var 2)))))
theorem reject1224 : ¬ Reader r1224 :=
  refute_zero r1224 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1224
def r1225 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 2)))))
theorem reject1225 : ¬ Reader r1225 :=
  refute_zero r1225 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1225
def r1226 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1))))
theorem reject1226 : ¬ Reader r1226 :=
  refute_zero r1226 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1226
def r1227 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1227 : ¬ Reader r1227 :=
  refute_zero r1227 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1227
def r1228 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1228 : ¬ Reader r1228 :=
  refute_zero r1228 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1228
def r1229 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1229 : ¬ Reader r1229 :=
  refute_zero r1229 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1229
def r1230 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1230 : ¬ Reader r1230 :=
  refute_zero r1230 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1230
def r1231 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1231 : ¬ Reader r1231 :=
  refute_zero r1231 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1231
def r1232 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1232 : ¬ Reader r1232 :=
  refute_zero r1232 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1232
def r1233 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1233 : ¬ Reader r1233 :=
  refute_zero r1233 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1233
def r1234 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1234 : ¬ Reader r1234 :=
  refute_zero r1234 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1234
def r1235 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1235 : ¬ Reader r1235 :=
  refute_zero r1235 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1235
def r1236 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1236 : ¬ Reader r1236 :=
  refute_zero r1236 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1236
def r1237 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1237 : ¬ Reader r1237 :=
  refute_zero r1237 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1237
def r1238 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1238 : ¬ Reader r1238 :=
  refute_zero r1238 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1238
def r1239 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1239 : ¬ Reader r1239 :=
  refute_zero r1239 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1239
def r1240 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1240 : ¬ Reader r1240 :=
  refute_zero r1240 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1240
def r1241 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1241 : ¬ Reader r1241 :=
  refute_zero r1241 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1241
def r1242 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1242 : ¬ Reader r1242 :=
  refute_zero r1242 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1242
def r1243 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1243 : ¬ Reader r1243 :=
  refute_zero r1243 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1243
def r1244 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1244 : ¬ Reader r1244 :=
  refute_zero r1244 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1244
def r1245 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1245 : ¬ Reader r1245 :=
  refute_zero r1245 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1245
def r1246 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1246 : ¬ Reader r1246 :=
  refute_zero r1246 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1246
def r1247 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1247 : ¬ Reader r1247 :=
  refute_zero r1247 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1247
def r1248 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1248 : ¬ Reader r1248 :=
  refute_zero r1248 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1248
def r1249 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1249 : ¬ Reader r1249 :=
  refute_zero r1249 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1249
def r1250 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1250 : ¬ Reader r1250 :=
  refute_zero r1250 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1250
def r1251 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1251 : ¬ Reader r1251 :=
  refute_zero r1251 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1251
def r1252 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1252 : ¬ Reader r1252 :=
  refute_zero r1252 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1252
def r1253 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1253 : ¬ Reader r1253 :=
  refute_zero r1253 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1253
def r1254 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1254 : ¬ Reader r1254 :=
  refute_zero r1254 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1254
def r1255 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1255 : ¬ Reader r1255 :=
  refute_zero r1255 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1255
def r1256 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1256 : ¬ Reader r1256 :=
  refute_zero r1256 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1256
def r1257 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1257 : ¬ Reader r1257 :=
  refute_zero r1257 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1257
def r1258 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1258 : ¬ Reader r1258 :=
  refute_zero r1258 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1258
def r1259 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1259 : ¬ Reader r1259 :=
  refute_zero r1259 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1259
def r1260 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1260 : ¬ Reader r1260 :=
  refute_zero r1260 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1260
def r1261 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1261 : ¬ Reader r1261 :=
  refute_zero r1261 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1261
def r1262 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1262 : ¬ Reader r1262 :=
  refute_zero r1262 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1262
def r1263 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1263 : ¬ Reader r1263 :=
  refute_zero r1263 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1263
def r1264 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1264 : ¬ Reader r1264 :=
  refute_zero r1264 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1264
def r1265 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1265 : ¬ Reader r1265 :=
  refute_zero r1265 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1265
def r1266 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1266 : ¬ Reader r1266 :=
  refute_zero r1266 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1266
def r1267 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1267 : ¬ Reader r1267 :=
  refute_zero r1267 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1267
def r1268 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 2)))))
theorem reject1268 : ¬ Reader r1268 :=
  refute_zero r1268 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1268
def r1269 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1269 : ¬ Reader r1269 :=
  refute_zero r1269 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1269
def r1270 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1270 : ¬ Reader r1270 :=
  refute_zero r1270 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1270
def r1271 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1271 : ¬ Reader r1271 :=
  refute_zero r1271 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1271
def r1272 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1272 : ¬ Reader r1272 :=
  refute_zero r1272 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1272
def r1273 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1273 : ¬ Reader r1273 :=
  refute_zero r1273 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1273
def r1274 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1274 : ¬ Reader r1274 :=
  refute_zero r1274 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1274
def r1275 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1275 : ¬ Reader r1275 :=
  refute_zero r1275 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1275
def r1276 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1276 : ¬ Reader r1276 :=
  refute_zero r1276 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1276
def r1277 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1277 : ¬ Reader r1277 :=
  refute_zero r1277 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1277
def r1278 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1278 : ¬ Reader r1278 :=
  refute_zero r1278 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1278
def r1279 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1279 : ¬ Reader r1279 :=
  refute_zero r1279 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1279
def r1280 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1280 : ¬ Reader r1280 :=
  refute_zero r1280 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1280
def r1281 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1281 : ¬ Reader r1281 :=
  refute_zero r1281 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1281
def r1282 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 2)))))
theorem reject1282 : ¬ Reader r1282 :=
  refute_zero r1282 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1282
def r1283 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1283 : ¬ Reader r1283 :=
  refute_zero r1283 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1283
def r1284 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1284 : ¬ Reader r1284 :=
  refute_zero r1284 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1284
def r1285 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1285 : ¬ Reader r1285 :=
  refute_zero r1285 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1285
def r1286 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1286 : ¬ Reader r1286 :=
  refute_zero r1286 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1286
def r1287 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1287 : ¬ Reader r1287 :=
  refute_zero r1287 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1287
def r1288 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1288 : ¬ Reader r1288 :=
  refute_zero r1288 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1288
def r1289 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.lam (.var 2)))))
theorem reject1289 : ¬ Reader r1289 :=
  refute_zero r1289 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1289
def r1290 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1290 : ¬ Reader r1290 :=
  refute_zero r1290 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1290
def r1291 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1291 : ¬ Reader r1291 :=
  refute_zero r1291 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1291
def r1292 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1292 : ¬ Reader r1292 :=
  refute_zero r1292 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1292
def r1293 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1293 : ¬ Reader r1293 :=
  refute_zero r1293 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1293
def r1294 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1294 : ¬ Reader r1294 :=
  refute_zero r1294 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1294
def r1295 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 2)))))
theorem reject1295 : ¬ Reader r1295 :=
  refute_zero r1295 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1295
def r1296 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1296 : ¬ Reader r1296 :=
  refute_zero r1296 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1296
def r1297 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1297 : ¬ Reader r1297 :=
  refute_zero r1297 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1297
def r1298 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1298 : ¬ Reader r1298 :=
  refute_zero r1298 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1298
def r1299 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1299 : ¬ Reader r1299 :=
  refute_zero r1299 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1299
def r1300 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1300 : ¬ Reader r1300 :=
  refute_zero r1300 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1300
def r1301 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1301 : ¬ Reader r1301 :=
  refute_zero r1301 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1301
def r1302 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1302 : ¬ Reader r1302 :=
  refute_zero r1302 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1302
def r1303 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1303 : ¬ Reader r1303 :=
  refute_zero r1303 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1303
def r1304 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1304 : ¬ Reader r1304 :=
  refute_zero r1304 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1304
def r1305 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1305 : ¬ Reader r1305 :=
  refute_zero r1305 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1305
def r1306 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1306 : ¬ Reader r1306 :=
  refute_zero r1306 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1306
def r1307 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1307 : ¬ Reader r1307 :=
  refute_zero r1307 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1307
def r1308 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1308 : ¬ Reader r1308 :=
  refute_zero r1308 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1308
def r1309 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.lam (.var 2)))))
theorem reject1309 : ¬ Reader r1309 :=
  refute_zero r1309 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1309
def r1310 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1310 : ¬ Reader r1310 :=
  refute_zero r1310 (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1310
def r1311 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1311 : ¬ Reader r1311 :=
  refute_zero r1311 (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1311
def r1312 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1312 : ¬ Reader r1312 :=
  refute_zero r1312 (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1312
def r1313 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1313 : ¬ Reader r1313 :=
  refute_zero r1313 (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1313
def r1314 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1314 : ¬ Reader r1314 :=
  refute_zero r1314 (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1314
def r1315 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1315 : ¬ Reader r1315 :=
  refute_zero r1315 (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1315
def r1316 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1316 : ¬ Reader r1316 :=
  refute_zero r1316 (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1316
def r1317 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1317 : ¬ Reader r1317 :=
  refute_zero r1317 (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1317
def r1318 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1318 : ¬ Reader r1318 :=
  refute_zero r1318 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1318
def r1319 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1319 : ¬ Reader r1319 :=
  refute_zero r1319 (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1319
def r1320 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1320 : ¬ Reader r1320 :=
  refute_zero r1320 (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1320
def r1321 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1321 : ¬ Reader r1321 :=
  refute_zero r1321 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1321
def r1322 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1322 : ¬ Reader r1322 :=
  refute_zero r1322 (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1322
def r1323 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1323 : ¬ Reader r1323 :=
  refute_zero r1323 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1323
def r1324 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1324 : ¬ Reader r1324 :=
  refute_zero r1324 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1324
def r1325 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1325 : ¬ Reader r1325 :=
  refute_zero r1325 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1325
def r1326 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1326 : ¬ Reader r1326 :=
  refute_zero r1326 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1326
def r1327 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1327 : ¬ Reader r1327 :=
  refute_zero r1327 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1327
def r1328 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1328 : ¬ Reader r1328 :=
  refute_zero r1328 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1328
def r1329 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1329 : ¬ Reader r1329 :=
  refute_zero r1329 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1329
def r1330 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1330 : ¬ Reader r1330 :=
  refute_zero r1330 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1330
def r1331 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1331 : ¬ Reader r1331 :=
  refute_zero r1331 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1331
def r1332 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 2)) (.var 1))))
theorem reject1332 : ¬ Reader r1332 :=
  refute_zero r1332 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1332
def r1333 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1333 : ¬ Reader r1333 :=
  refute_zero r1333 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1333
def r1334 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1334 : ¬ Reader r1334 :=
  refute_zero r1334 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1334
def r1335 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1335 : ¬ Reader r1335 :=
  refute_zero r1335 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1335
def r1336 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1336 : ¬ Reader r1336 :=
  refute_zero r1336 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1336
def r1337 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1337 : ¬ Reader r1337 :=
  refute_zero r1337 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1337
def r1338 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1338 : ¬ Reader r1338 :=
  refute_zero r1338 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1338
def r1339 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1339 : ¬ Reader r1339 :=
  refute_zero r1339 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1339
def r1340 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1340 : ¬ Reader r1340 :=
  refute_zero r1340 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1340
def r1341 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1341 : ¬ Reader r1341 :=
  refute_zero r1341 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1341
def r1342 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1342 : ¬ Reader r1342 :=
  refute_zero r1342 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1342
def r1343 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1343 : ¬ Reader r1343 :=
  refute_zero r1343 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1343
def r1344 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1344 : ¬ Reader r1344 :=
  refute_zero r1344 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1344
def r1345 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1345 : ¬ Reader r1345 :=
  refute_zero r1345 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1345
def r1346 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1346 : ¬ Reader r1346 :=
  refute_zero r1346 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1346
def r1347 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1347 : ¬ Reader r1347 :=
  refute_zero r1347 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1347
def r1348 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1348 : ¬ Reader r1348 :=
  refute_zero r1348 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1348
def r1349 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1349 : ¬ Reader r1349 :=
  refute_zero r1349 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1349
def r1350 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1350 : ¬ Reader r1350 :=
  refute_zero r1350 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1350
def r1351 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1351 : ¬ Reader r1351 :=
  refute_zero r1351 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1351
def r1352 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1352 : ¬ Reader r1352 :=
  refute_zero r1352 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1352
def r1353 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1353 : ¬ Reader r1353 :=
  refute_zero r1353 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1353
def r1354 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1354 : ¬ Reader r1354 :=
  refute_zero r1354 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1354
def r1355 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1355 : ¬ Reader r1355 :=
  refute_zero r1355 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1355
def r1356 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1356 : ¬ Reader r1356 :=
  refute_zero r1356 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1356
def r1357 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1357 : ¬ Reader r1357 :=
  refute_zero r1357 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1357
def r1358 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1358 : ¬ Reader r1358 :=
  refute_zero r1358 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1358
def r1359 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1359 : ¬ Reader r1359 :=
  refute_zero r1359 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1359
def r1360 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1360 : ¬ Reader r1360 :=
  refute_zero r1360 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1360
def r1361 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1361 : ¬ Reader r1361 :=
  refute_zero r1361 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1361
def r1362 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1362 : ¬ Reader r1362 :=
  refute_zero r1362 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1362
def r1363 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1363 : ¬ Reader r1363 :=
  refute_zero r1363 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1363
def r1364 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1364 : ¬ Reader r1364 :=
  refute_zero r1364 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1364
def r1365 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1365 : ¬ Reader r1365 :=
  refute_zero r1365 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1365
def r1366 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1366 : ¬ Reader r1366 :=
  refute_zero r1366 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1366
def r1367 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1367 : ¬ Reader r1367 :=
  refute_zero r1367 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1367
def r1368 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1368 : ¬ Reader r1368 :=
  refute_zero r1368 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1368
def r1369 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1369 : ¬ Reader r1369 :=
  refute_zero r1369 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1369
def r1370 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1370 : ¬ Reader r1370 :=
  refute_zero r1370 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1370
def r1371 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1371 : ¬ Reader r1371 :=
  refute_zero r1371 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1371
def r1372 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1372 : ¬ Reader r1372 :=
  refute_zero r1372 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1372
def r1373 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1373 : ¬ Reader r1373 :=
  refute_zero r1373 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1373
def r1374 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1374 : ¬ Reader r1374 :=
  refute_zero r1374 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1374
def r1375 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1375 : ¬ Reader r1375 :=
  refute_zero r1375 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1375
def r1376 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1376 : ¬ Reader r1376 :=
  refute_zero r1376 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1376
def r1377 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1377 : ¬ Reader r1377 :=
  refute_zero r1377 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1377
def r1378 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1378 : ¬ Reader r1378 :=
  refute_zero r1378 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1378
def r1379 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1379 : ¬ Reader r1379 :=
  refute_zero r1379 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1379
def r1380 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))))) (.var 2)) (.var 1))))
theorem reject1380 : ¬ Reader r1380 :=
  refute_zero r1380 (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1380
def r1381 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1381 : ¬ Reader r1381 :=
  refute_zero r1381 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1381
def r1382 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1382 : ¬ Reader r1382 :=
  refute_zero r1382 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1382
def r1383 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1383 : ¬ Reader r1383 :=
  refute_zero r1383 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1383
def r1384 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1384 : ¬ Reader r1384 :=
  refute_zero r1384 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1384
def r1385 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1385 : ¬ Reader r1385 :=
  refute_zero r1385 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1385
def r1386 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1386 : ¬ Reader r1386 :=
  refute_zero r1386 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1386
def r1387 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1387 : ¬ Reader r1387 :=
  refute_zero r1387 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1387
def r1388 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1388 : ¬ Reader r1388 :=
  refute_zero r1388 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1388
def r1389 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1389 : ¬ Reader r1389 :=
  refute_zero r1389 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1389
def r1390 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))))) (.var 2)) (.var 1))))
theorem reject1390 : ¬ Reader r1390 :=
  refute_zero r1390 (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1390
def r1391 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1391 : ¬ Reader r1391 :=
  refute_zero r1391 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1391
def r1392 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1392 : ¬ Reader r1392 :=
  refute_zero r1392 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1392
def r1393 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1393 : ¬ Reader r1393 :=
  refute_zero r1393 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1393
def r1394 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1394 : ¬ Reader r1394 :=
  refute_zero r1394 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1394
def r1395 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1395 : ¬ Reader r1395 :=
  refute_zero r1395 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1395
def r1396 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1396 : ¬ Reader r1396 :=
  refute_zero r1396 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1396
def r1397 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1397 : ¬ Reader r1397 :=
  refute_zero r1397 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1397
def r1398 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1398 : ¬ Reader r1398 :=
  refute_zero r1398 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1398
def r1399 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1399 : ¬ Reader r1399 :=
  refute_zero r1399 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1399
def r1400 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1400 : ¬ Reader r1400 :=
  refute_zero r1400 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1400
def r1401 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1401 : ¬ Reader r1401 :=
  refute_zero r1401 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1401
def r1402 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1402 : ¬ Reader r1402 :=
  refute_zero r1402 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1402
def r1403 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1403 : ¬ Reader r1403 :=
  refute_zero r1403 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1403
def r1404 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1404 : ¬ Reader r1404 :=
  refute_zero r1404 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1404
def r1405 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1405 : ¬ Reader r1405 :=
  refute_zero r1405 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1405
def r1406 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1406 : ¬ Reader r1406 :=
  refute_zero r1406 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1406
def r1407 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1407 : ¬ Reader r1407 :=
  refute_zero r1407 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1407
def r1408 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1408 : ¬ Reader r1408 :=
  refute_zero r1408 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1408
def r1409 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1409 : ¬ Reader r1409 :=
  refute_zero r1409 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1409
def r1410 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1410 : ¬ Reader r1410 :=
  refute_zero r1410 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1410
def r1411 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1411 : ¬ Reader r1411 :=
  refute_zero r1411 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1411
def r1412 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1412 : ¬ Reader r1412 :=
  refute_zero r1412 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1412
def r1413 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1413 : ¬ Reader r1413 :=
  refute_zero r1413 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1413
def r1414 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1414 : ¬ Reader r1414 :=
  refute_zero r1414 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1414
def r1415 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1415 : ¬ Reader r1415 :=
  refute_zero r1415 (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1415
def r1416 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1416 : ¬ Reader r1416 :=
  refute_zero r1416 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1416
def r1417 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1417 : ¬ Reader r1417 :=
  refute_zero r1417 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1417
def r1418 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 2) (.var 2))))))) (.var 2)) (.var 1))))
theorem reject1418 : ¬ Reader r1418 :=
  refute_zero r1418 (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1418
def r1419 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 2)) (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1419 : ¬ Reader r1419 :=
  refute_zero r1419 (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1419
def r1420 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 2) (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1420 : ¬ Reader r1420 :=
  refute_zero r1420 (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1420
def r1421 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 2))) (.var 2))))) (.var 2)) (.var 1))))
theorem reject1421 : ¬ Reader r1421 :=
  refute_zero r1421 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1421
def r1422 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 2)) (.var 2))))) (.var 2)) (.var 1))))
theorem reject1422 : ¬ Reader r1422 :=
  refute_zero r1422 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1422
def r1423 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))))) (.var 2)) (.var 1))))
theorem reject1423 : ¬ Reader r1423 :=
  refute_zero r1423 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1423
def r1424 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))))) (.var 2)) (.var 1))))
theorem reject1424 : ¬ Reader r1424 :=
  refute_zero r1424 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1424
def r1425 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1425 : ¬ Reader r1425 :=
  refute_zero r1425 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1425
def r1426 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1426 : ¬ Reader r1426 :=
  refute_zero r1426 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1426
def r1427 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2)) (.var 1))))
theorem reject1427 : ¬ Reader r1427 :=
  refute_zero r1427 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1427
def r1428 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.var 1))))
theorem reject1428 : ¬ Reader r1428 :=
  refute_zero r1428 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1428
def r1429 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1))))
theorem reject1429 : ¬ Reader r1429 :=
  refute_zero r1429 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1429
def r1430 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1))))
theorem reject1430 : ¬ Reader r1430 :=
  refute_zero r1430 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1430
def r1431 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1431 : ¬ Reader r1431 :=
  refute_zero r1431 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1431
def r1432 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))))) (.var 2)) (.var 1))))
theorem reject1432 : ¬ Reader r1432 :=
  refute_zero r1432 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1432
def r1433 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 2))))) (.var 2)) (.var 1))))
theorem reject1433 : ¬ Reader r1433 :=
  refute_zero r1433 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1433
def r1434 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 2))))) (.var 2)) (.var 1))))
theorem reject1434 : ¬ Reader r1434 :=
  refute_zero r1434 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1434
def r1435 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1435 : ¬ Reader r1435 :=
  refute_zero r1435 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1435
def r1436 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1436 : ¬ Reader r1436 :=
  refute_zero r1436 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1436
def r1437 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1437 : ¬ Reader r1437 :=
  refute_zero r1437 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1437
def r1438 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1438 : ¬ Reader r1438 :=
  refute_zero r1438 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1438
def r1439 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))) (.var 2)) (.var 1))))
theorem reject1439 : ¬ Reader r1439 :=
  refute_zero r1439 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1439
def r1440 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 2)) (.var 1))))
theorem reject1440 : ¬ Reader r1440 :=
  refute_zero r1440 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1440
def r1441 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1441 : ¬ Reader r1441 :=
  refute_zero r1441 (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1441
def r1442 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))))) (.var 2)) (.var 1))))
theorem reject1442 : ¬ Reader r1442 :=
  refute_zero r1442 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1442
def r1443 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1443 : ¬ Reader r1443 :=
  refute_zero r1443 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1443
def r1444 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1444 : ¬ Reader r1444 :=
  refute_zero r1444 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1444
def r1445 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1445 : ¬ Reader r1445 :=
  refute_zero r1445 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1445
def r1446 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1446 : ¬ Reader r1446 :=
  refute_zero r1446 (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1446
def r1447 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1447 : ¬ Reader r1447 :=
  refute_zero r1447 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1447
def r1448 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1448 : ¬ Reader r1448 :=
  refute_zero r1448 (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1448
def r1449 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2)) (.var 1))))
theorem reject1449 : ¬ Reader r1449 :=
  refute_zero r1449 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1449
def r1450 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1450 : ¬ Reader r1450 :=
  refute_zero r1450 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1450
def r1451 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1451 : ¬ Reader r1451 :=
  refute_zero r1451 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1451
def r1452 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1452 : ¬ Reader r1452 :=
  refute_zero r1452 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1452
def r1453 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1453 : ¬ Reader r1453 :=
  refute_zero r1453 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1453
def r1454 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1454 : ¬ Reader r1454 :=
  refute_zero r1454 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1454
def r1455 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1455 : ¬ Reader r1455 :=
  refute_zero r1455 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1455
def r1456 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1456 : ¬ Reader r1456 :=
  refute_zero r1456 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1456
def r1457 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1457 : ¬ Reader r1457 :=
  refute_zero r1457 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1457
def r1458 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))))
theorem reject1458 : ¬ Reader r1458 :=
  refute_zero r1458 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1458
def r1459 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 2)) (.var 1))))
theorem reject1459 : ¬ Reader r1459 :=
  refute_zero r1459 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1459
def r1460 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))))) (.var 2)) (.var 1))))
theorem reject1460 : ¬ Reader r1460 :=
  refute_zero r1460 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1460
def r1461 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2)) (.var 1))))
theorem reject1461 : ¬ Reader r1461 :=
  refute_zero r1461 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1461
def r1462 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1))))
theorem reject1462 : ¬ Reader r1462 :=
  refute_zero r1462 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1462
def r1463 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1))))
theorem reject1463 : ¬ Reader r1463 :=
  refute_zero r1463 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1463
def r1464 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1464 : ¬ Reader r1464 :=
  refute_zero r1464 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1464
def r1465 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1465 : ¬ Reader r1465 :=
  refute_zero r1465 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1465
def r1466 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1466 : ¬ Reader r1466 :=
  refute_zero r1466 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1466
def r1467 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1467 : ¬ Reader r1467 :=
  refute_zero r1467 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1467
def r1468 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1468 : ¬ Reader r1468 :=
  refute_zero r1468 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1468
def r1469 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1469 : ¬ Reader r1469 :=
  refute_zero r1469 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1469
def r1470 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1470 : ¬ Reader r1470 :=
  refute_zero r1470 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1470
def r1471 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1471 : ¬ Reader r1471 :=
  refute_zero r1471 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1471
def r1472 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1472 : ¬ Reader r1472 :=
  refute_zero r1472 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1472
def r1473 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))))
theorem reject1473 : ¬ Reader r1473 :=
  refute_zero r1473 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1473
def r1474 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 2)) (.var 1))))
theorem reject1474 : ¬ Reader r1474 :=
  refute_zero r1474 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1474
def r1475 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1475 : ¬ Reader r1475 :=
  refute_zero r1475 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1475
def r1476 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1476 : ¬ Reader r1476 :=
  refute_zero r1476 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1476
def r1477 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1477 : ¬ Reader r1477 :=
  refute_zero r1477 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1477
def r1478 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1478 : ¬ Reader r1478 :=
  refute_zero r1478 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1478
def r1479 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1479 : ¬ Reader r1479 :=
  refute_zero r1479 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1479
def r1480 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1480 : ¬ Reader r1480 :=
  refute_zero r1480 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1480
def r1481 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1481 : ¬ Reader r1481 :=
  refute_zero r1481 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1481
def r1482 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1482 : ¬ Reader r1482 :=
  refute_zero r1482 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1482
def r1483 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1483 : ¬ Reader r1483 :=
  refute_zero r1483 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1483
def r1484 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1484 : ¬ Reader r1484 :=
  refute_zero r1484 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1484
def r1485 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1485 : ¬ Reader r1485 :=
  refute_zero r1485 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1485
def r1486 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1486 : ¬ Reader r1486 :=
  refute_zero r1486 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1486
def r1487 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1487 : ¬ Reader r1487 :=
  refute_zero r1487 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1487
def r1488 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1488 : ¬ Reader r1488 :=
  refute_zero r1488 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1488
def r1489 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1489 : ¬ Reader r1489 :=
  refute_zero r1489 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1489
def r1490 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1490 : ¬ Reader r1490 :=
  refute_zero r1490 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1490
def r1491 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1491 : ¬ Reader r1491 :=
  refute_zero r1491 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1491
def r1492 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1492 : ¬ Reader r1492 :=
  refute_zero r1492 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1492
def r1493 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1493 : ¬ Reader r1493 :=
  refute_zero r1493 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1493
def r1494 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1494 : ¬ Reader r1494 :=
  refute_zero r1494 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1494
def r1495 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1495 : ¬ Reader r1495 :=
  refute_zero r1495 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1495
def r1496 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1496 : ¬ Reader r1496 :=
  refute_zero r1496 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1496
def r1497 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1497 : ¬ Reader r1497 :=
  refute_zero r1497 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1497
def r1498 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1498 : ¬ Reader r1498 :=
  refute_zero r1498 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1498
def r1499 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1499 : ¬ Reader r1499 :=
  refute_zero r1499 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1499
def r1500 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1500 : ¬ Reader r1500 :=
  refute_zero r1500 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1500
def r1501 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1501 : ¬ Reader r1501 :=
  refute_zero r1501 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1501
def r1502 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1502 : ¬ Reader r1502 :=
  refute_zero r1502 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1502
def r1503 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1503 : ¬ Reader r1503 :=
  refute_zero r1503 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1503
def r1504 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1504 : ¬ Reader r1504 :=
  refute_zero r1504 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1504
def r1505 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1505 : ¬ Reader r1505 :=
  refute_zero r1505 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1505
def r1506 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1506 : ¬ Reader r1506 :=
  refute_zero r1506 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1506
def r1507 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1507 : ¬ Reader r1507 :=
  refute_zero r1507 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1507
def r1508 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1508 : ¬ Reader r1508 :=
  refute_zero r1508 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1508
def r1509 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2)) (.var 1))))
theorem reject1509 : ¬ Reader r1509 :=
  refute_zero r1509 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1509
def r1510 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1510 : ¬ Reader r1510 :=
  refute_zero r1510 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1510
def r1511 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1511 : ¬ Reader r1511 :=
  refute_zero r1511 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1511
def r1512 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1512 : ¬ Reader r1512 :=
  refute_zero r1512 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1512
def r1513 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1513 : ¬ Reader r1513 :=
  refute_zero r1513 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1513
def r1514 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1514 : ¬ Reader r1514 :=
  refute_zero r1514 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1514
def r1515 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1515 : ¬ Reader r1515 :=
  refute_zero r1515 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1515
def r1516 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1516 : ¬ Reader r1516 :=
  refute_zero r1516 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1516
def r1517 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1517 : ¬ Reader r1517 :=
  refute_zero r1517 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1517
def r1518 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1518 : ¬ Reader r1518 :=
  refute_zero r1518 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1518
def r1519 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))))
theorem reject1519 : ¬ Reader r1519 :=
  refute_zero r1519 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1519
def r1520 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1520 : ¬ Reader r1520 :=
  refute_zero r1520 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1520
def r1521 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1521 : ¬ Reader r1521 :=
  refute_zero r1521 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1521
def r1522 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1522 : ¬ Reader r1522 :=
  refute_zero r1522 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1522
def r1523 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1523 : ¬ Reader r1523 :=
  refute_zero r1523 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1523
def r1524 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1524 : ¬ Reader r1524 :=
  refute_zero r1524 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1524
def r1525 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1525 : ¬ Reader r1525 :=
  refute_zero r1525 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1525
def r1526 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1526 : ¬ Reader r1526 :=
  refute_zero r1526 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1526
def r1527 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 2)) (.var 1))))
theorem reject1527 : ¬ Reader r1527 :=
  refute_zero r1527 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1527
def r1528 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1528 : ¬ Reader r1528 :=
  refute_zero r1528 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1528
def r1529 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1529 : ¬ Reader r1529 :=
  refute_zero r1529 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1529
def r1530 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1530 : ¬ Reader r1530 :=
  refute_zero r1530 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1530
def r1531 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1531 : ¬ Reader r1531 :=
  refute_zero r1531 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1531
def r1532 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1532 : ¬ Reader r1532 :=
  refute_zero r1532 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1532
def r1533 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1533 : ¬ Reader r1533 :=
  refute_zero r1533 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1533
def r1534 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))))
theorem reject1534 : ¬ Reader r1534 :=
  refute_zero r1534 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1534
def r1535 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1535 : ¬ Reader r1535 :=
  refute_zero r1535 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1535
def r1536 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1536 : ¬ Reader r1536 :=
  refute_zero r1536 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1536
def r1537 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1537 : ¬ Reader r1537 :=
  refute_zero r1537 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1537
def r1538 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1538 : ¬ Reader r1538 :=
  refute_zero r1538 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1538
def r1539 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1539 : ¬ Reader r1539 :=
  refute_zero r1539 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1539
def r1540 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.var 2)) (.var 1))))
theorem reject1540 : ¬ Reader r1540 :=
  refute_zero r1540 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1540
def r1541 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1541 : ¬ Reader r1541 :=
  refute_zero r1541 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1541
def r1542 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1542 : ¬ Reader r1542 :=
  refute_zero r1542 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1542
def r1543 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1543 : ¬ Reader r1543 :=
  refute_zero r1543 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1543
def r1544 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1544 : ¬ Reader r1544 :=
  refute_zero r1544 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1544
def r1545 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1545 : ¬ Reader r1545 :=
  refute_zero r1545 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1545
def r1546 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1546 : ¬ Reader r1546 :=
  refute_zero r1546 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1546
def r1547 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1547 : ¬ Reader r1547 :=
  refute_zero r1547 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1547
def r1548 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1548 : ¬ Reader r1548 :=
  refute_zero r1548 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1548
def r1549 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1549 : ¬ Reader r1549 :=
  refute_zero r1549 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1549
def r1550 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
theorem reject1550 : ¬ Reader r1550 :=
  refute_zero r1550 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1550
def r1551 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1551 : ¬ Reader r1551 :=
  refute_zero r1551 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1551
def r1552 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1552 : ¬ Reader r1552 :=
  refute_zero r1552 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1552
def r1553 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1553 : ¬ Reader r1553 :=
  refute_zero r1553 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1553
def r1554 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1554 : ¬ Reader r1554 :=
  refute_zero r1554 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1554
def r1555 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1555 : ¬ Reader r1555 :=
  refute_zero r1555 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1555
def r1556 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1556 : ¬ Reader r1556 :=
  refute_zero r1556 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1556
def r1557 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1557 : ¬ Reader r1557 :=
  refute_zero r1557 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1557
def r1558 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1558 : ¬ Reader r1558 :=
  refute_zero r1558 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1558
def r1559 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1559 : ¬ Reader r1559 :=
  refute_zero r1559 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1559
def r1560 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1560 : ¬ Reader r1560 :=
  refute_zero r1560 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1560
def r1561 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1561 : ¬ Reader r1561 :=
  refute_zero r1561 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1561
def r1562 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1562 : ¬ Reader r1562 :=
  refute_zero r1562 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1562
def r1563 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1563 : ¬ Reader r1563 :=
  refute_zero r1563 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1563
def r1564 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1)))) (.var 2)) (.var 1))))
theorem reject1564 : ¬ Reader r1564 :=
  refute_zero r1564 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1564
def r1565 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1565 : ¬ Reader r1565 :=
  refute_zero r1565 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1565
def r1566 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1566 : ¬ Reader r1566 :=
  refute_zero r1566 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1566
def r1567 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1567 : ¬ Reader r1567 :=
  refute_zero r1567 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1567
def r1568 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1568 : ¬ Reader r1568 :=
  refute_zero r1568 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1568
def r1569 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1569 : ¬ Reader r1569 :=
  refute_zero r1569 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1569
def r1570 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1570 : ¬ Reader r1570 :=
  refute_zero r1570 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1570
def r1571 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1571 : ¬ Reader r1571 :=
  refute_zero r1571 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1571
def r1572 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1572 : ¬ Reader r1572 :=
  refute_zero r1572 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1572
def r1573 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1573 : ¬ Reader r1573 :=
  refute_zero r1573 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1573
def r1574 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1574 : ¬ Reader r1574 :=
  refute_zero r1574 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1574
def r1575 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1575 : ¬ Reader r1575 :=
  refute_zero r1575 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1575
def r1576 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1576 : ¬ Reader r1576 :=
  refute_zero r1576 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1576
def r1577 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1577 : ¬ Reader r1577 :=
  refute_zero r1577 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1577
def r1578 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1578 : ¬ Reader r1578 :=
  refute_zero r1578 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1578
def r1579 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1579 : ¬ Reader r1579 :=
  refute_zero r1579 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1579
def r1580 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1580 : ¬ Reader r1580 :=
  refute_zero r1580 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1580
def r1581 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1581 : ¬ Reader r1581 :=
  refute_zero r1581 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1581
def r1582 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1582 : ¬ Reader r1582 :=
  refute_zero r1582 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1582
def r1583 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1583 : ¬ Reader r1583 :=
  refute_zero r1583 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1583
def r1584 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1584 : ¬ Reader r1584 :=
  refute_zero r1584 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1584
def r1585 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1585 : ¬ Reader r1585 :=
  refute_zero r1585 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1585
def r1586 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1586 : ¬ Reader r1586 :=
  refute_zero r1586 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1586
def r1587 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1587 : ¬ Reader r1587 :=
  refute_zero r1587 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1587
def r1588 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1588 : ¬ Reader r1588 :=
  refute_zero r1588 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1588
def r1589 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0))) (.var 2)) (.var 1))))
theorem reject1589 : ¬ Reader r1589 :=
  refute_zero r1589 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1589
def r1590 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1590 : ¬ Reader r1590 :=
  refute_zero r1590 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1590
def r1591 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1591 : ¬ Reader r1591 :=
  refute_zero r1591 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1591
def r1592 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1592 : ¬ Reader r1592 :=
  refute_zero r1592 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1592
def r1593 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1593 : ¬ Reader r1593 :=
  refute_zero r1593 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1593
def r1594 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1594 : ¬ Reader r1594 :=
  refute_zero r1594 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1594
def r1595 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1595 : ¬ Reader r1595 :=
  refute_zero r1595 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1595
def r1596 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1596 : ¬ Reader r1596 :=
  refute_zero r1596 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1596
def r1597 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1597 : ¬ Reader r1597 :=
  refute_zero r1597 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1597
def r1598 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1598 : ¬ Reader r1598 :=
  refute_zero r1598 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject1598
def r1599 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))))
theorem reject1599 : ¬ Reader r1599 :=
  refute_zero r1599 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject1599
end Blc.Firstop.JBare1
