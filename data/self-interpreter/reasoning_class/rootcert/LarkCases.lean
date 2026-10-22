import Lark
namespace Blc.Rootcert.LarkCases
open Term SelfintClass RootcertLark
set_option maxRecDepth 10000

def r4 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject4 : ¬ Reader r4 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject4

def r5 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject5 : ¬ Reader r5 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject5

def r6 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject6 : ¬ Reader r6 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject6

def r7 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject7 : ¬ Reader r7 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject7

def r8 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject8 : ¬ Reader r8 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject8

def r9 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject9 : ¬ Reader r9 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject9

def r10 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject10 : ¬ Reader r10 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject10

def r11 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject11 : ¬ Reader r11 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject11

def r12 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject12 : ¬ Reader r12 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject12

def r13 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject13 : ¬ Reader r13 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject13

def r14 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject14 : ¬ Reader r14 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject14

def r15 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject15 : ¬ Reader r15 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject15

def r16 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject16 : ¬ Reader r16 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject16

def r17 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject17 : ¬ Reader r17 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject17

def r18 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject18 : ¬ Reader r18 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject18

def r19 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject19 : ¬ Reader r19 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1, 1], [1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject19

def r20 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject20 : ¬ Reader r20 := by
 exact reject [[1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject20

def r21 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject21 : ¬ Reader r21 := by
 exact reject [[1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject21

def r22 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject22 : ¬ Reader r22 := by
 exact reject [[1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject22

def r23 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject23 : ¬ Reader r23 := by
 exact reject [[1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject23

def r24 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject24 : ¬ Reader r24 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject24

def r25 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject25 : ¬ Reader r25 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject25

def r26 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject26 : ¬ Reader r26 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject26

def r27 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject27 : ¬ Reader r27 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject27

def r28 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject28 : ¬ Reader r28 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject28

def r29 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject29 : ¬ Reader r29 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject29

def r30 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))
theorem reject30 : ¬ Reader r30 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject30

def r31 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))
theorem reject31 : ¬ Reader r31 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject31

def r96 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject96 : ¬ Reader r96 := by
 exact reject [[1, 1]] (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject96

def r97 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject97 : ¬ Reader r97 := by
 exact reject [[1, 1]] (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject97

def r98 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject98 : ¬ Reader r98 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject98

def r99 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject99 : ¬ Reader r99 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject99

def r100 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject100 : ¬ Reader r100 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject100

def r101 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject101 : ¬ Reader r101 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject101

def r103 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject103 : ¬ Reader r103 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject103

def r104 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject104 : ¬ Reader r104 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject104

def r105 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject105 : ¬ Reader r105 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject105

def r106 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject106 : ¬ Reader r106 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject106

def r107 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject107 : ¬ Reader r107 := by
 exact reject [[1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject107

def r108 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject108 : ¬ Reader r108 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject108

def r109 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject109 : ¬ Reader r109 := by
 exact reject [[1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject109

def r553 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject553 : ¬ Reader r553 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.lam (.var 2)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject553

def r554 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject554 : ¬ Reader r554 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.var 0) [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject554

def r555 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject555 : ¬ Reader r555 := by
 exact reject [[1, 1], [1, 1, 1], [1, 1]] (.app (.var 0) (.lam (.var 2))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject555

def r565 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject565 : ¬ Reader r565 := by
 exact reject [[1, 1, 1]] (.lam (.var 2)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject565

def r566 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject566 : ¬ Reader r566 := by
 exact reject [[1, 1, 1]] (.var 0) [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject566

def r567 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject567 : ¬ Reader r567 := by
 exact reject [[1, 1]] (.app (.var 0) (.lam (.var 2))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject567

def r571 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject571 : ¬ Reader r571 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.lam (.var 2)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject571

def r572 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject572 : ¬ Reader r572 := by
 exact reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] (.var 0) [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject572

def r573 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject573 : ¬ Reader r573 := by
 exact reject [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] (.app (.var 0) (.lam (.var 2))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject573
end Blc.Rootcert.LarkCases
