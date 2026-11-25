import Blc.SelfintRecursiveTypes

set_option Elab.async false
namespace Blc.SelfintRecursiveTypes
open Term
def Val (m : Table) (ρ : Env) (t : Term) (xs : List Nat) : Prop :=
  ∀ i, i ≤ m.dom.length → has m ρ t i = decide (i ∈ xs)
def validSlots (m : Table) : Bool := (List.range m.dom.length).all fun j =>
  (D m j ++ C m j).all (fun i => decide (i ≤ m.dom.length))
theorem slot {m} (h : validSlots m=true) {j} (hj : j<m.dom.length) {i}
    (hi : i ∈ D m j ++ C m j) : i ≤ m.dom.length :=
  of_decide_eq_true (List.all_eq_true.mp (List.all_eq_true.mp h j (List.mem_range.mpr hj)) i hi)
def agrees (n : Nat) (xs : List Nat) (f : Nat → Bool) :=
    (List.range (n+1)).all (fun j => f j == decide (j ∈ xs))
theorem agrees_at {n xs f} (h : agrees n xs f=true) {i} (hi : i≤n) :
    f i = decide (i∈xs) :=
  beq_iff_eq.mp (List.all_eq_true.mp h i (List.mem_range.mpr (by omega)))
def memB (xs : List Nat) (i : Nat) := decide (i∈xs)
theorem varVal {m x ρ xs v} (hr : ρ x=v)
    (h : agrees m.dom.length xs (fun i => decide (i∈v ∨ 0∈v))=true) :
    Val m ρ (.var x) xs := by intro i hi; simpa [has,hr] using agrees_at h hi
private theorem allmem {xs : List α} {p q : α → Bool} (h : ∀ x ∈ xs, p x=q x) :
    xs.all p = xs.all q := by
  apply Bool.eq_iff_iff.mpr
  simp only [List.all_eq_true]
  exact ⟨fun hp x hx => (h x hx) ▸ hp x hx, fun hq x hx => (h x hx).symm ▸ hq x hx⟩
private theorem anymem {xs : List α} {p q : α → Bool} (h : ∀ x ∈ xs, p x=q x) :
    xs.any p = xs.any q := by
  apply Bool.eq_iff_iff.mpr
  simp only [List.any_eq_true]
  constructor <;> rintro ⟨x,hx,hb⟩
  · exact ⟨x,hx,(h x hx) ▸ hb⟩
  · exact ⟨x,hx,(h x hx).symm ▸ hb⟩
def appMask (m : Table) (f a : List Nat) (i : Nat) :=
  memB f 0 || (List.range m.dom.length).any fun j =>
    decide (i ∈ C m j ∨ 0 ∈ C m j) && memB f (j+1) && (D m j).all (memB a)
theorem appVal {m ρ f a xf xa xs} (ht : validSlots m=true)
    (hf : Val m ρ f xf) (ha : Val m ρ a xa)
    (hz : agrees m.dom.length xs (appMask m xf xa)=true) : Val m ρ (.app f a) xs := by
  intro i hi
  rw [←agrees_at hz hi]
  simp only [has,appMask,memB,hf 0 (Nat.zero_le _)]
  congr 1
  apply anymem; intro j hj
  have jl := List.mem_range.mp hj
  rw [hf (j+1) (by omega)]
  congr 1
  apply allmem; intro k hk
  exact ha k (slot ht jl (List.mem_append_left _ hk))
def lamMask (m : Table) (bs : List (List Nat)) : Nat → Bool
  | 0 => false
  | j+1 => (C m j).all (memB (bs[j]?.getD []))
theorem lamVal {m ρ b bs xs} (ht : validSlots m=true)
    (hb : ∀ j, j < m.dom.length → Val m (cons (D m j) ρ) b (bs[j]?.getD []))
    (hz : agrees m.dom.length xs (lamMask m bs)=true) : Val m ρ (.lam b) xs := by
  intro i hi
  rw [←agrees_at hz hi]
  cases i with
  | zero => rfl
  | succ j =>
    apply allmem; intro k hk
    exact hb j (by omega) k (slot ht (by omega : j<m.dom.length) (List.mem_append_right _ hk))
end Blc.SelfintRecursiveTypes
