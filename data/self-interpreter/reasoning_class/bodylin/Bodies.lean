import BodyReplacement
namespace Blc.BodyLinBodies
open Term SelfintClass SelfintSourceCost SelfintFlatMinimum SelfintHelperPair BodyLinReplacement
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def b0 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))
def u0 : Term := (.lam (.var 1))
theorem reduce0 : Betas b0 u0 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b0 = some u0)
theorem exclude0 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b0 a as) :=
  cheaper_body_not_minimum b0 u0 a as reduce0 (by decide) (by decide) (by decide)
#print axioms exclude0

def b1 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 3)))))
def u1 : Term := (.lam (.lam (.var 2)))
theorem reduce1 : Betas b1 u1 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b1 = some u1)
theorem exclude1 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b1 a as) :=
  cheaper_body_not_minimum b1 u1 a as reduce1 (by decide) (by decide) (by decide)
#print axioms exclude1

def b2 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 2))))
def u2 : Term := (.lam (.var 1))
theorem reduce2 : Betas b2 u2 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b2 = some u2)
theorem exclude2 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b2 a as) :=
  cheaper_body_not_minimum b2 u2 a as reduce2 (by decide) (by decide) (by decide)
#print axioms exclude2

def b3 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 2)))))
def u3 : Term := (.lam (.app (.var 0) (.var 1)))
theorem reduce3 : Betas b3 u3 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b3 = some u3)
theorem exclude3 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b3 a as) :=
  cheaper_body_not_minimum b3 u3 a as reduce3 (by decide) (by decide) (by decide)
#print axioms exclude3

def b4 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.var 0)))))
def u4 : Term := (.lam (.app (.var 1) (.var 0)))
theorem reduce4 : Betas b4 u4 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b4 = some u4)
theorem exclude4 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b4 a as) :=
  cheaper_body_not_minimum b4 u4 a as reduce4 (by decide) (by decide) (by decide)
#print axioms exclude4

def b5 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 2)))))
def u5 : Term := (.var 0)
theorem reduce5 : Betas b5 u5 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b5 = some u5)
theorem exclude5 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b5 a as) :=
  cheaper_body_not_minimum b5 u5 a as reduce5 (by decide) (by decide) (by decide)
#print axioms exclude5

def b6 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))
def u6 : Term := (.lam (.var 1))
theorem reduce6 : Betas b6 u6 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b6 = some u6)
theorem exclude6 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b6 a as) :=
  cheaper_body_not_minimum b6 u6 a as reduce6 (by decide) (by decide) (by decide)
#print axioms exclude6

def b7 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 2))))
def u7 : Term := (.var 0)
theorem reduce7 : Betas b7 u7 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b7 = some u7)
theorem exclude7 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b7 a as) :=
  cheaper_body_not_minimum b7 u7 a as reduce7 (by decide) (by decide) (by decide)
#print axioms exclude7

def b8 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 2))))
def u8 : Term := (.lam (.lam (.var 2)))
theorem reduce8 : Betas b8 u8 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b8 = some u8)
theorem exclude8 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b8 a as) :=
  cheaper_body_not_minimum b8 u8 a as reduce8 (by decide) (by decide) (by decide)
#print axioms exclude8

def b9 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 2)))))
def u9 : Term := (.lam (.lam (.app (.var 2) (.var 2))))
theorem reduce9 : Betas b9 u9 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b9 = some u9)
theorem exclude9 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b9 a as) :=
  cheaper_body_not_minimum b9 u9 a as reduce9 (by decide) (by decide) (by decide)
#print axioms exclude9

def b10 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.var 1)))))
def u10 : Term := (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.var 1))))))
theorem reduce10 : Betas b10 u10 := normalizeUntil_sound
  (by decide : normalizeUntil 32 b10 = some u10)
theorem exclude10 (a : Term) (as : List Term) :
  ¬ MinimumReader (bodyReader b10 a as) :=
  cheaper_body_not_minimum b10 u10 a as reduce10 (by decide) (by decide) (by decide)
#print axioms exclude10

end Blc.BodyLinBodies
