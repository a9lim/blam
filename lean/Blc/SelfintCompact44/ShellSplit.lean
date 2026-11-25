import Blc.SelfintSliceHints43

namespace Blc.SelfintSingleObject.ShellSplit
open Term SelfintFloor SelfintLowerBound FiveLive Saturated OperandGrammar SourceRefutations RowReplay

/-- Partition the exterior context at its outermost sibling. A block fixes the
sibling's numbers of leaves, lambdas and index bits before constructing it. -/
def blocks : Nat → Nat → Nat → Nat → Nat → List (List Shell)
  | 0, _, l, v, x => [if l = 0 ∧ v = 0 ∧ x = 0 then [.hole] else []]
  | n+1, d, l, v, x =>
    (if l = 0 ∧ v = 0 ∧ x = 0 then [.hole] else []) ::
    (List.range v).flatMap fun r => (List.range (l+1)).flatMap fun m =>
      (List.range (x+1)).map fun y =>
        let sides := (words (y+1) (r+1) y).flatMap (layouts (m+(r+1)) d m)
        (shells n d (l-m) (v-(r+1)) (x-y)).flatMap fun k =>
          sides.flatMap fun s => [.left k s,.right s k]

private theorem flatten_parts (xs : List α) (f : α → List (List β)) :
    (xs.flatMap f).flatten = xs.flatMap (fun x => (f x).flatten) := by
  induction xs <;> simp_all

theorem blocks_flatten (n d l v x : Nat) : (blocks n d l v x).flatten = shells n d l v x := by
  cases n <;> simp only [blocks,shells,List.flatten_cons,List.flatten_nil,List.append_nil,flatten_parts] <;> rfl

def frames (n i V L X : Nat) (lit : Bool) (x l v : Nat) : List Shell :=
  let chunks := blocks (V-v) (if lit then 1 else 0) (L-(l+1)-(if lit then 1 else 0)) (V-v) (X-x)
  (chunks.zipIdx.flatMap (fun (ts,j) => if j % n = i then ts else [])).filter fun k =>
    (5 < v || 0 < k.mass nonlinear) && k.mass lamCount ≤ k.mass live + (L-5)

theorem frames_cover {k : Shell} (n : Nat) (hn : 0 < n) {V L X : Nat} {lit : Bool} {x l v : Nat}
    (hk : k ∈ Grammar43.frames V L X lit x l v) :
    ∃ i ∈ List.range n, k ∈ frames n i V L X lit x l v := by
  obtain ⟨hm,ok⟩ := List.mem_filter.mp hk
  rw [← blocks_flatten] at hm
  obtain ⟨ts,ht,hs⟩ := List.mem_flatten.mp hm
  obtain ⟨j,hj⟩ := List.mem_iff_getElem?.mp ht
  refine ⟨j % n, List.mem_range.mpr (Nat.mod_lt _ hn),List.mem_filter.mpr ⟨?_,ok⟩⟩
  exact List.mem_flatMap.mpr ⟨(ts,j), List.mk_mem_zipIdx_iff_getElem?.mpr hj, by simpa using hs⟩

def five (n i V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  let bs := (SharedShell.atoms L lit x l v w).filter fun b => FactorFilter.markedHere 0 (.lam b)
  bs.flatMap fun b => (frames n i V L X lit x l v).flatMap fun k =>
    let t := k.fill (.lam b)
    let e := wrap lit t
    if live e == 5 && !chainB e && (!lit || 0 < occ 0 t) then [e] else []

theorem five_cover (n : Nat) (hn : 0 < n) (V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat)
    (hs : Every (fun i => BadRow (five n i V L X lit x l v w)) (List.range n)) :
    BadRow (Grammar43.fiveRow V L X lit x l v w) := by
  apply row_of_forall
  intro e he
  simp only [Grammar43.fiveRow] at he
  split at he
  · cases he
  · obtain ⟨b,hb,hh⟩ := List.mem_flatMap.mp he
    obtain ⟨k,hk,hm⟩ := List.mem_flatMap.mp hh
    obtain ⟨i,hi,hshell⟩ := frames_cover n hn hk
    exact (hs.get hi).get (List.mem_flatMap.mpr ⟨b,hb,List.mem_flatMap.mpr ⟨k,hshell,hm⟩⟩)
end Blc.SelfintSingleObject.ShellSplit
