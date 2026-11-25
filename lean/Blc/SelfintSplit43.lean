import Blc.SelfintGrammar43

namespace Blc.SelfintSingleObject.Split43
open Term SelfintFloor SelfintLowerBound OperandGrammar FiveLive Saturated SourceRefutations RowReplay

abbrev Seg := List (List Term)
private def pairs (fs as : List Term) := fs.flatMap fun f => as.map (Term.app f)
private def uses (d : Nat) (b : Term) : Bool :=
  0 < occ 0 b && (List.range d).any fun j => 0 < occ (j+1) b &&
    (List.range j).any fun i => 0 < occ (i+1) b

private theorem flatMap_blocks (xs : List α) (f : α → List (List β)) :
    (xs.flatMap f).flatten = xs.flatMap (fun x => (f x).flatten) := by
  induction xs <;> simp_all

private theorem map_blocks (xs : List (List α)) (f : α → β) :
    (xs.map (List.map f)).flatten = xs.flatten.map f := by
  induction xs <;> simp_all

private theorem filter_blocks (xs : List (List α)) (f : α → Bool) :
    (xs.map (List.filter f)).flatten = xs.flatten.filter f := by
  induction xs <;> simp_all

/-- Split layouts by their leading lambdas and first application. Each
application block fixes the leaf and binder split before forming any pair. -/
def plain : Nat → Nat → Nat → List Nat → Seg
  | 0, _, _, _ => []
  | n+1,d,l,xs =>
    [match l,xs with | 0,[i] => if i < d then [.var i] else [] | _,_ => []] ++
    (if l = 0 then [] else (plain n (d+1) (l-1) xs).map (List.map .lam)) ++
    (List.range (xs.length-1)).flatMap fun k =>
      (List.range (l+1)).map fun m =>
        pairs (layouts n d m (xs.take (k+1))) (layouts n d (l-m) (xs.drop (k+1)))

theorem plain_flatten (n d l : Nat) (xs : List Nat) : (plain n d l xs).flatten = layouts n d l xs := by
  induction n generalizing d l xs with
  | zero => rfl
  | succ n ih =>
    simp only [plain,layouts,List.flatten_append,List.flatten_cons,List.flatten_nil,List.append_nil,
      flatMap_blocks,map_blocks]
    by_cases hz : l = 0 <;> simp only [hz,if_true,if_false,List.flatten_nil,map_blocks,ih] <;> rfl

def markedBlocks : Nat → Nat → Nat → Nat → List Nat → Seg
  | 0, _, _, _, _ => []
  | fuel+1,d,scope,l,xs =>
    if l = 0 ∨ l+d < 3 ∨ xs.sum < 3 ∨ !(xs.any fun n => 2 ≤ n) then [] else
    ((markedBlocks fuel (d+1) (scope+1) (l-1) xs ++
      (if d < 2 then [] else (plain (l-1+xs.length) (scope+1) (l-1) xs).map
        (List.filter (uses d)))).map (List.map .lam)) ++
    (List.range (xs.length-1)).flatMap fun k =>
      (List.range (l+1)).flatMap fun m =>
        let f := xs.take (k+1)
        let a := xs.drop (k+1)
        [pairs (marked fuel d scope m f) (layouts (l-m+a.length) scope (l-m) a),
         (marked fuel d scope (l-m) a).flatMap fun arg =>
            (layouts (m+f.length) scope m f).map (fun fn => .app fn arg)]

theorem marked_flatten (n d s l : Nat) (xs : List Nat) :
    (markedBlocks n d s l xs).flatten = marked n d s l xs := by
  induction n generalizing d s l xs with
  | zero => rfl
  | succ n ih =>
    simp only [markedBlocks,marked]
    split
    · rfl
    · simp only [List.flatten_append,map_blocks,ih,flatMap_blocks,List.flatten_cons,List.flatten_nil,
        List.append_nil]
      split <;> simp only [List.flatten_nil,filter_blocks,plain_flatten] <;> rfl

/-- Only the selected blocks are forced by the kernel in this slice. -/
def bucket (count idx : Nat) (xs : Seg) : List Term :=
  xs.zipIdx.flatMap fun (ts,i) => if i % count = idx then ts else []

private theorem select {t : Term} {xs : Seg} (count : Nat) (hc : 0 < count) (ht : t ∈ xs.flatten) :
    ∃ i ∈ List.range count, t ∈ bucket count i xs := by
  obtain ⟨ts,hm,ht⟩ := List.mem_flatten.mp ht
  obtain ⟨j,hj⟩ := List.mem_iff_getElem?.mp hm
  refine ⟨j % count,List.mem_range.mpr (Nat.mod_lt _ hc),List.mem_flatMap.mpr
    ⟨(ts,j),List.mk_mem_zipIdx_iff_getElem?.mpr hj,?_⟩⟩
  simpa using ht

def four (count i : Nat) (c : Cell) (fw aw : List Nat) :=
  let fs := (layouts (c.lf+c.vf) 1 c.lf fw).filter fun b =>
    live b == 0 && decide (NFt b) && spineHead b == .var 0 && nonlinear (.lam b) == 1
  let as := (bucket count i (markedBlocks (c.la+c.va) 1 1 c.la aw)).filter fun a =>
    live (.lam a) == 3 && 1 ≤ nonlinear (.lam a) && FactorFilter.markedHere 0 (.lam a) &&
    Layouts.nonshrinking a
  fs.flatMap fun b => as.map fun a => Term.app (.lam b) (.lam a)

theorem four_cover (n : Nat) (hn : 0 < n) (c : Cell) (f a : List Nat)
    (he : Every (fun i => BadRow (four n i c f a)) (List.range n)) : BadRow (Grammar43.fourRow c f a) := by
  apply row_of_forall
  intro t ht
  obtain ⟨b,hb,h⟩ := List.mem_flatMap.mp ht
  obtain ⟨q,hq,rfl⟩ := List.mem_map.mp h
  obtain ⟨hm,ok⟩ := List.mem_filter.mp hq
  rw [← marked_flatten] at hm
  obtain ⟨i,hi,mem⟩ := select n hn hm
  exact (he.get hi).get (List.mem_flatMap.mpr ⟨b,hb,List.mem_map.mpr ⟨q,List.mem_filter.mpr ⟨mem,ok⟩,rfl⟩⟩)

def five (count i V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) :=
  let ks := Grammar43.frames V L X lit x l v
  if ks.isEmpty then [] else
    let as := (bucket count i (markedBlocks (l+v) 1 (atomScope lit x) l w)).filter fun b =>
      (3 ≤ live (.lam b) && l+1 ≤ live (.lam b) + (L-5) && Layouts.nonshrinking b) &&
        FactorFilter.markedHere 0 (.lam b)
    as.flatMap fun b => ks.flatMap fun k =>
      let t := k.fill (.lam b)
      let e := wrap lit t
      if live e == 5 && !chainB e && (!lit || 0 < occ 0 t) then [e] else []

theorem five_cover (n : Nat) (hn : 0 < n) (V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat)
    (he : Every (fun i => BadRow (five n i V L X lit x l v w)) (List.range n)) :
    BadRow (Grammar43.fiveRow V L X lit x l v w) := by
  apply row_of_forall
  intro t ht
  simp only [Grammar43.fiveRow] at ht
  split at ht
  · cases ht
  · rename_i hKs
    obtain ⟨b,hb,h⟩ := List.mem_flatMap.mp ht
    obtain ⟨hm,hw⟩ := List.mem_filter.mp hb
    obtain ⟨hm,ok⟩ := List.mem_filter.mp hm
    rw [← marked_flatten] at hm
    obtain ⟨i,hi,mem⟩ := select n hn hm
    apply (he.get hi).get
    simp only [five,if_neg hKs]
    exact List.mem_flatMap.mpr ⟨b,List.mem_filter.mpr ⟨mem,Bool.and_eq_true_iff.mpr ⟨ok,hw⟩⟩,h⟩

end Blc.SelfintSingleObject.Split43
