import Blc.SelfintInternalWidthCut
import Blc.SelfintMinimumRows40

namespace Blc.SelfintSingleObject.FactorFilter
open Term SelfintFloor SelfintLowerBound SelfintWireCost SourceRefutations OperandGrammar

private def lower (n c : Nat) : Term → Term
  | .var i => .var (if i < c then i else i-n)
  | .lam b => .lam (lower n (c+1) b)
  | .app f a => .app (lower n c f) (lower n c a)

private def slots (d : Nat) (t : Term) : List Term :=
  match t with
  | .var i => if d ≤ i then [.var (i-d)] else []
  | .app f a => lower d 0 t :: (slots d f ++ slots d a)
  | .lam b => lower d 0 t :: slots (d+1) b

private def template (r : Term) (d : Nat) (t : Term) : Term :=
  if t == shift d 0 r then .var d else
    match t with
    | .var i => .var i
    | .app f a => .app (template r d f) (template r d a)
    | .lam b => .lam (template r (d+1) b)

def factored (b : Term) : Bool :=
  (slots 1 b).any fun r =>
    let g := template r 1 b
    decide (FreeUnder 1 (.lam g)) && (Term.lam b == substDec 0 r (.lam g))

theorem factored_sound {b} (h : factored b = true) : Factors b := by
  obtain ⟨r,_,hr⟩ := List.any_eq_true.mp h
  exact ⟨r,template r 1 b,of_decide_eq_true (Bool.and_eq_true_iff.mp hr).1,
    eq_of_beq (Bool.and_eq_true_iff.mp hr).2⟩

/-- A retained witness must survive a checked search for a single captured object. -/
def markedHere (d : Nat) : Term → Bool
  | .var _ => false
  | .app f a => markedHere d f || markedHere d a
  | .lam b => markedHere (d+1) b ||
      (0 < occ 0 b && (List.range d).any (fun j => 0 < occ (j+1) b &&
        (List.range j).any (fun i => 0 < occ (i+1) b)) && !factored b)

theorem markedHere_of_witness (t : Term) (d : Nat) (hw : Witness d t) : markedHere d t = true := by
  induction t generalizing d with
  | var => cases hw
  | app f a hf ha =>
    rcases hw with h | h
    · simp [markedHere,hf d h]
    · simp [markedHere,ha d h]
  | lam b ih =>
    rcases hw with h | ⟨h0,i,j,hij,hj,hi',hj',hn⟩
    · simp [markedHere,ih _ h]
    · apply Bool.or_eq_true_iff.mpr; right
      simp only [Bool.and_eq_true,decide_eq_true_eq,List.any_eq_true,List.mem_range,Bool.not_eq_true']
      refine ⟨⟨h0,j,hj,hj',i,hij,hi'⟩,?_⟩
      cases h : factored b with | false => rfl | true => exact (hn (factored_sound h)).elim

theorem required {e} (h : IsSelfInterpreter e) : markedHere 0 (body e) = true :=
  markedHere_of_witness _ 0 (internal_width h)

def staticOK (e : Term) : Bool := markedHere 0 (body e) && Layouts.nonshrinking e

theorem static_required {e} (h : MinimalInterpreter e) : staticOK e = true := by
  have p := Layouts.minimum_passes h (Nat.le_refl _)
  simp only [Layouts.passes,Bool.and_eq_true] at p
  simp [staticOK,required h.1,p.1.1.2]

#print axioms static_required
end Blc.SelfintSingleObject.FactorFilter
