/-
A small source-binder potential under arbitrary marked beta reduction.
-/
import Blc.SelfintRound6BoundRedLive

namespace Blc.QuoteOrigins.Marked
open Term SelfintLowerBound SelfintFloor SelfintNonlinearChain SelfintWiden

/-- Every binder has at most two occurrences. Free variables are unrestricted. -/
def Binary : Marked → Prop
  | .var _ => True
  | .app f a => Binary f ∧ Binary a
  | .lam _ b => Binary b ∧ occ 0 (erase b) ≤ 2

def potential (t : Marked) : Nat := redLive t + nonlinear (erase t)

def charge (q : Bool) (n : Nat) : Nat :=
  (if q then 0 else if 0 < n then 1 else 0) + (if 1 < n then 1 else 0)

theorem charge_le_two (q : Bool) (n : Nat) : charge q n ≤ 2 := by
  cases q <;> by_cases h0 : 0 < n <;> by_cases h1 : 1 < n <;>
    simp [charge,h0,h1]

theorem charge_zero (q : Bool) : charge q 0 = 0 := by cases q <;> rfl

theorem charge_red_pos {n : Nat} (h : 0 < n) : 1 ≤ charge false n := by
  simp only [charge, Bool.false_eq_true, if_false, if_pos h]
  omega

theorem charge_mono (q : Bool) {m n : Nat} (h : m ≤ n) : charge q m ≤ charge q n := by
  cases q <;> simp only [charge, Bool.false_eq_true, if_false, if_true, Nat.zero_add]
  · by_cases hm0 : 0 < m <;> by_cases hn0 : 0 < n <;>
      by_cases hm1 : 1 < m <;> by_cases hn1 : 1 < n <;>
      simp only [hm0, hn0, hm1, hn1, ↓reduceIte] <;> omega
  · by_cases hm1 : 1 < m <;> by_cases hn1 : 1 < n <;>
      simp only [hm1, hn1, ↓reduceIte] <;> omega

theorem potential_app (f a : Marked) : potential (.app f a) = potential f + potential a := by
  simp only [potential,redLive,erase,nonlinear]
  omega

theorem potential_lam (q : Bool) (b : Marked) :
    potential (.lam q b) = potential b + charge q (occ 0 (erase b)) := by
  simp only [potential,redLive,erase,nonlinear,charge]
  omega

theorem potential_subst (t a : Marked) (j : Nat) :
    potential (subst j a t) = potential t + occ j (erase t) * potential a := by
  simp only [potential,redLive_subst,erase_subst,nonlinear_subst,Nat.mul_add]
  omega

theorem potential_red (t : Term) : potential (red t) = live t + nonlinear t := by
  simp only [potential,redLive_red,erase_red]

theorem potential_bit (b : Bool) : potential (bit b) = 0 := by cases b <;> rfl

theorem binary_bit (b : Bool) : Binary (bit b) := by
  cases b <;> exact ⟨⟨trivial,by decide⟩,by decide⟩

theorem binary_shift (t : Marked) (c : Nat) (hb : Binary t) : Binary (shift c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | app f a ihf iha => exact ⟨ihf c hb.1,iha c hb.2⟩
  | lam q b ih =>
    refine ⟨ih (c+1) hb.1, ?_⟩
    rw [erase_shift,occ_shift_lt (erase b) 0 (c+1) (by omega)]
    exact hb.2

theorem binary_subst (t a : Marked) (j : Nat) (ht : Binary t) (ha : Binary a) :
    Binary (subst j a t) := by
  induction t generalizing a j with
  | var n => simp only [subst]; split <;> (try split) <;> first | exact ha | trivial
  | app f b ihf ihb => exact ⟨ihf a j ht.1 ha, ihb a j ht.2 ha⟩
  | lam q b ih =>
    refine ⟨ih (shift 0 a) (j+1) ht.1 (binary_shift a 0 ha), ?_⟩
    rw [erase_subst,erase_shift,occ_substDec_lt (erase b) (Term.shift 1 0 (erase a)) 0 (j+1) (by omega),
      occ_shift_eq, Nat.mul_zero, Nat.add_zero]
    exact ht.2

theorem binary_step_occ {t u : Marked} (h : Step t u) (hb : Binary t) :
    ∀ j, occ j (erase u) ≤ 2 * occ j (erase t) := by
  induction h with
  | beta q b a =>
    intro j
    have hm := Nat.mul_le_mul_right (occ j (erase a)) hb.1.2
    simp only [erase_subst,occ_substDec_ge (erase b) (erase a) j 0 (by omega),
      erase,occ]
    omega
  | @appL f g a h ih =>
    intro j
    have hh := ih hb.1 j
    simp only [erase,occ]
    omega
  | @appR f a b h ih =>
    intro j
    have hh := ih hb.2 j
    simp only [erase,occ]
    omega
  | @lam q b c h ih =>
    intro j
    exact ih hb.1 (j+1)

/-- Below potential five, a binary step cannot increase the potential.
If it increases a free-variable count, a stronger decrease bound pays for
new nonlinear binders in every surrounding context. -/
theorem binary_small_step_potential {t u : Marked} (h : Step t u)
    (hg : Good t) (hb : Binary t) (hp : potential t ≤ 4) :
    potential u ≤ potential t ∧
      ((∀ j, occ j (erase u) ≤ occ j (erase t)) ∨ potential u + 4 ≤ 2 * potential t) := by
  induction h with
  | beta q b a =>
    by_cases hk : occ 0 (erase b) ≤ 1
    · have hm := Nat.mul_le_mul_right (potential a) hk
      simp only [Nat.one_mul] at hm
      refine ⟨?_,Or.inl ?_⟩
      · simp only [potential_subst,potential_app,potential_lam]
        omega
      · intro j
        exact affine_redex_free_occ b a hk j
    · have ho : occ 0 (erase b) = 2 := by have hh := hb.1.2; omega
      have hq : q = false := by
        cases q with
        | false => rfl
        | true => have hh := (good_blueAffine hg.1).2 rfl; omega
      subst q
      have hc : charge false (occ 0 (erase b)) = 2 := by rw [ho]; rfl
      simp only [potential_subst,potential_app,potential_lam,ho,
        show charge false 2 = 2 from rfl] at hp ⊢
      change potential b + 2 + potential a ≤ 4 at hp
      change potential b + 2 * potential a ≤ potential b + 2 + potential a ∧ _
      exact ⟨by omega, Or.inr (by omega)⟩
  | @appL f g a h ih =>
    have hpf : potential f ≤ 4 := by rw [potential_app] at hp; omega
    obtain ⟨hm,ho⟩ := ih hg.1 hb.1 hpf
    refine ⟨by simp only [potential_app]; omega, ?_⟩
    rcases ho with ho | ho
    · left; intro j; exact Nat.add_le_add_right (ho j) _
    · right; simp only [potential_app]; omega
  | @appR f a b h ih =>
    have hpa : potential a ≤ 4 := by rw [potential_app] at hp; omega
    obtain ⟨hm,ho⟩ := ih hg.2 hb.2 hpa
    refine ⟨by simp only [potential_app]; omega, ?_⟩
    rcases ho with ho | ho
    · left; intro j; exact Nat.add_le_add_left (ho j) _
    · right; simp only [potential_app]; omega
  | @lam q b c h ih =>
    have hpb : potential b ≤ 4 := by rw [potential_lam] at hp; omega
    obtain ⟨hm,ho⟩ := ih hg.1 hb.1 hpb
    have hgc := good_step (.lam q h) hg
    cases q with
    | true =>
      have hob := (good_blueAffine hg).2 rfl
      have hoc := (good_blueAffine hgc).2 rfl
      have hcb : charge true (occ 0 (erase b)) = 0 := by
        simp only [charge,if_true, Nat.zero_add,if_neg (show ¬ 1 < occ 0 (erase b) by omega)]
      have hcc : charge true (occ 0 (erase c)) = 0 := by
        simp only [charge,if_true, Nat.zero_add,if_neg (show ¬ 1 < occ 0 (erase c) by omega)]
      refine ⟨by simpa only [potential_lam,hcb,hcc,Nat.add_zero] using hm, ?_⟩
      rcases ho with ho | ho
      · exact Or.inl (fun j => ho (j+1))
      · right; simpa only [potential_lam,hcb,hcc,Nat.add_zero] using ho
    | false =>
      rcases ho with ho | ho
      · have hc := charge_mono false (ho 0)
        refine ⟨by simp only [potential_lam]; omega, Or.inl (fun j => ho (j+1))⟩
      · by_cases hz : occ 0 (erase b) = 0
        · have hz' := QuoteOrigins.occ_zero_beta (step_erase h) 0 hz
          refine ⟨by simpa only [potential_lam,hz,hz',charge_zero,Nat.add_zero] using hm, Or.inr ?_⟩
          simpa only [potential_lam,hz,hz',charge_zero,Nat.add_zero] using ho
        · have hpos := charge_red_pos (show 0 < occ 0 (erase b) by omega)
          have hle := charge_le_two false (occ 0 (erase c))
          simp only [potential_lam] at hp ⊢
          exact ⟨by omega,Or.inr (by omega)⟩

/-- Binary multiplicity can first fail only by feeding a previously
nonlinear enclosing binder. At potential four this uses the entire source
budget, and leaves at most two live red binders on one containment chain. -/
theorem binary_small_step_shape {t u : Marked} (h : Step t u)
    (hg : Good t) (hb : Binary t) (hp : potential t ≤ 4) :
    Binary u ∨ (LiveChain u ∧ redLive u ≤ 2 ∧ 4 ≤ potential t) := by
  induction h with
  | beta q b a => exact Or.inl (binary_subst b a 0 hb.1.1 hb.2)
  | @appL f g a h ih =>
    have hpf : potential f ≤ 4 := by rw [potential_app] at hp; omega
    rcases ih hg.1 hb.1 hpf with hbg | ⟨hcg,hlg,hpf4⟩
    · exact Or.inl ⟨hbg,hb.2⟩
    · have hpa : potential a = 0 := by rw [potential_app] at hp; omega
      have hla : redLive a = 0 := by unfold potential at hpa; omega
      right
      refine ⟨⟨hcg,one_redLive_chain a (by omega),Or.inr hla⟩,?_,?_⟩
      · simp only [redLive,hla,Nat.add_zero]; exact hlg
      · rw [potential_app]; omega
  | @appR f a b h ih =>
    have hpa : potential a ≤ 4 := by rw [potential_app] at hp; omega
    rcases ih hg.2 hb.2 hpa with hbb | ⟨hcb,hlb,hpa4⟩
    · exact Or.inl ⟨hb.1,hbb⟩
    · have hpf : potential f = 0 := by rw [potential_app] at hp; omega
      have hlf : redLive f = 0 := by unfold potential at hpf; omega
      right
      refine ⟨⟨one_redLive_chain f (by omega),hcb,Or.inl hlf⟩,?_,?_⟩
      · simp only [redLive,hlf,Nat.zero_add]; exact hlb
      · rw [potential_app]; omega
  | @lam q b c h ih =>
    have hpb : potential b ≤ 4 := by rw [potential_lam] at hp; omega
    rcases ih hg.1 hb.1 hpb with hbc | ⟨hcc,hlc,hpb4⟩
    · by_cases hoc : occ 0 (erase c) ≤ 2
      · exact Or.inl ⟨hbc,hoc⟩
      · have hgc := good_step (.lam q h) hg
        cases q with
        | true =>
          have hh := (good_blueAffine hgc).2 rfl
          omega
        | false =>
          have hdouble := binary_step_occ h hb.1 0
          have hob : occ 0 (erase b) = 2 := by have hh := hb.2; omega
          have hp' : potential b ≤ 2 := by
            rw [potential_lam,hob] at hp
            change potential b + 2 ≤ 4 at hp
            omega
          have hn : 1 ≤ nonlinear (erase b) := by
            by_cases hz : nonlinear (erase b) = 0
            · have hh := (affine_beta_progress (step_erase h) hz).2 0
              omega
            · omega
          have hnl := nonlinear_le_redLive (good_blueAffine hg.1)
          have hlb : redLive b ≤ 1 := by unfold potential at hp'; omega
          have hred := (one_redLive_step h hg.1 hlb).1
          right
          refine ⟨one_redLive_chain c (by omega),?_,?_⟩
          · simp only [redLive,Bool.false_eq_true,if_false]
            split <;> omega
          · rw [potential_lam,hob]
            change 4 ≤ potential b + 2
            unfold potential
            omega
    · have hc0 : charge q (occ 0 (erase b)) = 0 := by rw [potential_lam] at hp; omega
      right
      refine ⟨hcc,?_,by rw [potential_lam]; omega⟩
      cases q with
      | true => simpa only [redLive,if_true,Nat.add_zero] using hlc
      | false =>
        have hob : occ 0 (erase b) = 0 := by
          by_cases hz : occ 0 (erase b) = 0
          · exact hz
          · have hh := charge_red_pos (show 0 < occ 0 (erase b) by omega)
            omega
        have hoc := QuoteOrigins.occ_zero_beta (step_erase h) 0 hob
        simpa only [redLive,Bool.false_eq_true,if_false,hoc,Nat.lt_irrefl,Nat.add_zero] using hlc

/-- An initially binary marked source of potential at most four can never
produce five live source binders, under any full beta-reduction sequence. -/
theorem binary_small_steps {t u : Marked} (h : Steps t u)
    (hg : Good t) (hb : Binary t) (hp : potential t ≤ 4) : redLive u ≤ 4 := by
  induction h with
  | refl => unfold potential at hp; omega
  | @step t u v h hs ih =>
    rcases binary_small_step_shape h hg hb hp with hbu | ⟨hcu,hlu,_⟩
    · have hpu := (binary_small_step_potential h hg hb hp).1
      exact ih (good_step h hg) hbu (by omega)
    · have hh := (liveChain_steps hs (good_step h hg) hcu).2
      omega

#print axioms binary_small_step_potential
#print axioms binary_small_step_shape
#print axioms binary_small_steps
end Blc.QuoteOrigins.Marked
