/-
Symbolic classification of a normal, outer-headed three-leaf body with
one dead abstraction. The variables a and b are indices 1 and 0.
-/
import Blc.SelfintRound8DeadApply

namespace Blc.SelfintRound8PrefixDeadShapes
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintClass SelfintWiden SelfintRound6BoundNext QuoteOrigins SelfintControl

def d1 : Term := .app (.app (.var 1) (.lam (.var 2))) (.var 0)
def d2 : Term := .app (.app (.var 1) (.lam (.var 1))) (.var 1)
def d3 : Term := .app (.app (.var 1) (.var 0)) (.lam (.var 2))
def d4 : Term := .app (.app (.var 1) (.var 1)) (.lam (.var 1))
def d5 : Term := .app (.var 1) (.lam (.app (.var 2) (.var 1)))
def d6 : Term := .app (.var 1) (.lam (.app (.var 1) (.var 2)))
def d7 : Term := .app (.var 1) (.app (.var 1) (.lam (.var 1)))
def d8 : Term := .app (.var 1) (.app (.var 0) (.lam (.var 2)))

/-- One leaf and one dead abstraction can only be a constant thunk of
one of the two free variables. -/
theorem one_leaf_dead_forms (t : Term) (hc : FreeUnder 2 t)
    (hl : lamCount t=1) (hz : live t=0) (hv : leafCount t=1) :
    t=.lam (.var 1) ∨ t=.lam (.var 2) := by
  cases t with
  | var n => simp [lamCount] at hl
  | app f a =>
      have hf := leafCount_pos f
      have ha := leafCount_pos a
      simp only [leafCount] at hv
      omega
  | lam b =>
      have hbl : lamCount b=0 := by simp only [lamCount] at hl; omega
      obtain ⟨n,rfl⟩ := lamfree_leaf1 b hbl hv
      have hn : n<3 := hc
      have hn0 : n≠0 := by intro h; subst n; simp [live,occ] at hz
      have hcases : n=1 ∨ n=2 := by omega
      rcases hcases with rfl | rfl
      · exact .inl rfl
      · exact .inr rfl

/-- Two leaves with one occurrence of a and one dead abstraction have
four normal forms. There is no index-size bound. -/
theorem two_leaf_dead_forms (t : Term) (hc : FreeUnder 2 t) (hn : NFt t)
    (hl : lamCount t=1) (hz : live t=0) (hv : leafCount t=2)
    (ho : occ 1 t=1) :
    t=.lam (.app (.var 2) (.var 1)) ∨
    t=.lam (.app (.var 1) (.var 2)) ∨
    t=.app (.var 1) (.lam (.var 1)) ∨
    t=.app (.var 0) (.lam (.var 2)) := by
  cases t with
  | var n => simp [leafCount] at hv
  | lam b =>
      have hbl : lamCount b=0 := by simp only [lamCount] at hl; omega
      obtain ⟨n,m,rfl⟩ := lamfree_leaf2 b hbl hv
      have hn3 : n<3 := hc.1
      have hm3 : m<3 := hc.2
      have hno : occ 0 (.app (.var n) (.var m))=0 := by
        simp only [live] at hz
        split at hz <;> omega
      have hn0 : n≠0 := by intro h; subst n; simp [occ] at hno
      have hm0 : m≠0 := by intro h; subst m; simp [occ] at hno
      have hnc : n=1 ∨ n=2 := by omega
      have hmc : m=1 ∨ m=2 := by omega
      rcases hnc with rfl | rfl <;> rcases hmc with rfl | rfl
      · simp [occ] at ho
      · exact .inr (.inl rfl)
      · exact .inl rfl
      · simp [occ] at ho
  | app f a =>
      have hf := leafCount_pos f
      have ha := leafCount_pos a
      have hfv : leafCount f=1 := by simp only [leafCount] at hv; omega
      have hav : leafCount a=1 := by simp only [leafCount] at hv; omega
      cases f with
      | lam b => exact (hn.1 trivial).elim
      | app g x =>
          have hg := leafCount_pos g
          have hx := leafCount_pos x
          simp only [leafCount] at hfv
          omega
      | var n =>
          have hla : lamCount a=1 := by simpa [lamCount] using hl
          have hza : live a=0 := by simpa [live] using hz
          have hn2 : n<2 := hc.1
          have hnc : n=0 ∨ n=1 := by omega
          rcases one_leaf_dead_forms a hc.2 hla hza hav with rfl | rfl
          · rcases hnc with rfl | rfl
            · simp [occ] at ho
            · exact .inr (.inr (.inl rfl))
          · rcases hnc with rfl | rfl
            · exact .inr (.inr (.inr rfl))
            · simp [occ] at ho

/-- The complete outer-headed slice of one-dead, three-leaf bodies.
This is a structural lambda/leaf split, not a bounded term enumeration. -/
theorem outer_dead_three_leaf_forms (D : Term) (hc : FreeUnder 2 D) (hn : NFt D)
    (hl : lamCount D=1) (hz : live D=0) (hv : leafCount D=3)
    (ho : occ 1 D=2) (hr : RigidAt 1 D) :
    D=d1 ∨ D=d2 ∨ D=d3 ∨ D=d4 ∨ D=d5 ∨ D=d6 ∨ D=d7 ∨ D=d8 := by
  cases hr with
  | var => simp [leafCount] at hv
  | @app f a hr =>
      have hf := leafCount_pos f
      have ha := leafCount_pos a
      cases hr with
      | var =>
          have hav : leafCount a=2 := by simp only [leafCount] at hv; omega
          have hal : lamCount a=1 := by simpa [lamCount] using hl
          have haz : live a=0 := by simpa [live] using hz
          have hao : occ 1 a=1 := by simp only [occ,if_true] at ho; omega
          rcases two_leaf_dead_forms a hc.2 hn.2.2 hal haz hav hao with rfl | rfl | rfl | rfl
          · exact .inr (.inr (.inr (.inr (.inl rfl))))
          · exact .inr (.inr (.inr (.inr (.inr (.inl rfl)))))
          · exact .inr (.inr (.inr (.inr (.inr (.inr (.inl rfl))))))
          · exact .inr (.inr (.inr (.inr (.inr (.inr (.inr rfl))))))
      | @app g x hr =>
          have hg := leafCount_pos g
          have hx := leafCount_pos x
          have hgv : leafCount g=1 := by simp only [leafCount] at hv; omega
          have hxv : leafCount x=1 := by simp only [leafCount] at hv; omega
          have hav : leafCount a=1 := by simp only [leafCount] at hv; omega
          have hgvar : g=.var 1 := by
            cases hr with
            | var => rfl
            | @app q y hq =>
                have hqv := leafCount_pos q
                have hyv := leafCount_pos y
                simp only [leafCount] at hgv
                omega
          subst g
          have hxla : lamCount x+lamCount a=1 := by simpa [lamCount] using hl
          have hxza : live x+live a=0 := by simpa [live] using hz
          by_cases hxl : lamCount x=1
          · have hal : lamCount a=0 := by omega
            obtain ⟨n,rfl⟩ := lamfree_leaf1 a hal hav
            have hn2 : n<2 := hc.2
            have hnc : n=0 ∨ n=1 := by omega
            rcases one_leaf_dead_forms x hc.1.2 hxl (by omega) hxv with rfl | rfl
            · rcases hnc with rfl | rfl
              · simp [occ] at ho
              · exact .inr (.inl rfl)
            · rcases hnc with rfl | rfl
              · exact .inl rfl
              · simp [occ] at ho
          · have hxl0 : lamCount x=0 := by omega
            have hal : lamCount a=1 := by omega
            obtain ⟨n,rfl⟩ := lamfree_leaf1 x hxl0 hxv
            have hn2 : n<2 := hc.1.2
            have hnc : n=0 ∨ n=1 := by omega
            rcases one_leaf_dead_forms a hc.2 hal (by omega) hav with rfl | rfl
            · rcases hnc with rfl | rfl
              · simp [occ] at ho
              · exact .inr (.inr (.inr (.inl rfl)))
            · rcases hnc with rfl | rfl
              · exact .inr (.inr (.inl rfl))
              · simp [occ] at ho

#print axioms outer_dead_three_leaf_forms
end Blc.SelfintRound8PrefixDeadShapes
