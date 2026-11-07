import Blc.SelfintNeededHead
namespace Blc.NeedBinder.NonlinearExceptions
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer
set_option maxRecDepth 4000
set_option maxHeartbeats 1000000

def reader (b : Term) : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam b))) (.var 2))

theorem absent_reduct {r : Term} (h : occ 3 (advance 4 (.app r Z))=0) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound 4 (.app r Z)) hr.zero_red zeroOut_normal
  have no := SelfintKnot.occ_betas_zero red 3 h
  have yes : occ 3 zeroOut=1 := by decide
  omega

theorem fixed_spine_no_nf {t : Term} (hs : Spine t) (hf : headStep t=some t) :
    ¬ HasNormalForm t := by
  have one : ∀ u, Beta t u → u=t := by
    intro u hu
    have hh := headStep_complete (spine_beta_head hs hu)
    rw [hf] at hh
    exact (Option.some.inj hh).symm
  have many : ∀ a b, Betas a b → a=t → b=t := by
    intro a b hab
    induction hab with
    | refl => exact id
    | head hab _ ih =>
      intro ha
      apply ih
      rw [ha] at hab
      exact one _ hab
  rintro ⟨n,hn,hnf⟩
  have he := many _ _ hn rfl
  subst n
  exact hnf _ (beta_of_headStep (headStep_sound hf))

theorem looping_reduct {r : Term} (hs : Spine (advance 4 (.app r Z)))
    (hf : headStep (advance 4 (.app r Z))=some (advance 4 (.app r Z))) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound 4 (.app r Z)) hr.zero_red zeroOut_normal
  exact fixed_spine_no_nf hs hf ⟨_,red,zeroOut_normal⟩

def body0 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))
theorem reject0 : ¬ Reader (reader body0) := absent_reduct (by decide)
#print axioms reject0

def body1 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 4)))
theorem reject1 : ¬ Reader (reader body1) := absent_reduct (by decide)
#print axioms reject1

def body2 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 3))
theorem reject2 : ¬ Reader (reader body2) := by
  apply looping_reduct
  · exact (Spine.appL _ (by intro b h; cases h) (Spine.appL _ (by intro b h; cases h) (Spine.appL _ (by intro b h; cases h) (Spine.redex (by decide) (by decide)) (by decide)) (by decide)) (by decide))
  · decide
#print axioms reject2

def body3 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)) (.var 0))
theorem reject3 : ¬ Reader (reader body3) := by
  apply looping_reduct
  · exact (Spine.appL _ (by intro b h; cases h) (Spine.appL _ (by intro b h; cases h) (Spine.appL _ (by intro b h; cases h) (Spine.redex (by decide) (by decide)) (by decide)) (by decide)) (by decide))
  · decide
#print axioms reject3

def body4 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 3)))
theorem reject4 : ¬ Reader (reader body4) := by
  apply looping_reduct
  · exact (Spine.appL _ (by intro b h; cases h) (Spine.appL _ (by intro b h; cases h) (Spine.redex (by decide) (by decide)) (by decide)) (by decide))
  · decide
#print axioms reject4

def body5 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 3) (.var 0)))
theorem reject5 : ¬ Reader (reader body5) := by
  apply looping_reduct
  · exact (Spine.appL _ (by intro b h; cases h) (Spine.appL _ (by intro b h; cases h) (Spine.redex (by decide) (by decide)) (by decide)) (by decide))
  · decide
#print axioms reject5

def body6 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 3))
theorem reject6 : ¬ Reader (reader body6) := absent_reduct (by decide)
#print axioms reject6

def body7 : Term := (.app (.lam (.app (.var 4) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject7 : ¬ Reader (reader body7) := absent_reduct (by decide)
#print axioms reject7

def body8 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 4))) (.lam (.app (.var 0) (.var 0))))
theorem reject8 : ¬ Reader (reader body8) := absent_reduct (by decide)
#print axioms reject8

def body9 : Term := (.app (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 4)))) (.lam (.app (.var 0) (.var 0))))
theorem reject9 : ¬ Reader (reader body9) := absent_reduct (by decide)
#print axioms reject9

def body10 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 5)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10 : ¬ Reader (reader body10) := absent_reduct (by decide)
#print axioms reject10

def body11 : Term := (.app (.lam (.app (.app (.lam (.var 1)) (.var 4)) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11 : ¬ Reader (reader body11) := absent_reduct (by decide)
#print axioms reject11

def body12 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 3))
theorem reject12 : ¬ Reader (reader body12) := absent_reduct (by decide)
#print axioms reject12

def body13 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 3))
theorem reject13 : ¬ Reader (reader body13) := absent_reduct (by decide)
#print axioms reject13

def body14 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 3))
theorem reject14 : ¬ Reader (reader body14) := absent_reduct (by decide)
#print axioms reject14

def body15 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 4))))
theorem reject15 : ¬ Reader (reader body15) := absent_reduct (by decide)
#print axioms reject15

def body16 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 4) (.app (.var 0) (.var 0)))))
theorem reject16 : ¬ Reader (reader body16) := absent_reduct (by decide)
#print axioms reject16

def body17 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 4)) (.var 0))))
theorem reject17 : ¬ Reader (reader body17) := absent_reduct (by decide)
#print axioms reject17

def body18 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 3)))
theorem reject18 : ¬ Reader (reader body18) := absent_reduct (by decide)
#print axioms reject18

def body19 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.var 1)) (.var 4)))))
theorem reject19 : ¬ Reader (reader body19) := absent_reduct (by decide)
#print axioms reject19

def body20 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 5)))))
theorem reject20 : ¬ Reader (reader body20) := absent_reduct (by decide)
#print axioms reject20

def body21 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.var 1)) (.var 4)) (.var 0))))
theorem reject21 : ¬ Reader (reader body21) := absent_reduct (by decide)
#print axioms reject21

def body22 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 3))
theorem reject22 : ¬ Reader (reader body22) := absent_reduct (by decide)
#print axioms reject22

def body23 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3))
theorem reject23 : ¬ Reader (reader body23) := absent_reduct (by decide)
#print axioms reject23
end Blc.NeedBinder.NonlinearExceptions
