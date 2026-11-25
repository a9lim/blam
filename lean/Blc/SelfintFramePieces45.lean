import Blc.SelfintFrameCertificate45
namespace Blc.SelfintSingleObject.FrameCertificate
open Term OperandGrammar FiveLive Saturated SourceRefutations

/-- Check one first-application slice of the sibling instead of constructing all its layouts. -/
def pieceOK (count idx L l v : Nat) (both lit : Bool) (ks : List Shell) (pos : Nat → Nat)
    (fuel d la va xa r m y : Nat) (w : List Nat) :=
  (Split43.bucket count idx (Split43.plain (m+(r+1)) d m w)).all fun s =>
    (shells fuel d (la-m) (va-(r+1)) (xa-y)).all fun k =>
      accepts L l v both lit ks pos (.left k s) && accepts L l v both lit ks pos (.right s k)

theorem word_of_pieces (n : Nat) (hn : 0 < n) {L l v both lit ks pos fuel d la va xa r m y w}
    (h : Every (fun i => pieceOK n i L l v both lit ks pos fuel d la va xa r m y w = true) (List.range n)) :
    wordOK L l v both lit ks pos fuel d la va xa r m y w = true := by
  apply List.all_eq_true.mpr
  intro s hs
  rw [← Split43.plain_flatten] at hs
  obtain ⟨ts,ht,hs⟩ := List.mem_flatten.mp hs
  obtain ⟨j,hj⟩ := List.mem_iff_getElem?.mp ht
  apply List.all_eq_true.mp (h.get (List.mem_range.mpr (Nat.mod_lt j hn))) s
  apply List.mem_flatMap.mpr
  exact ⟨(ts,j),List.mk_mem_zipIdx_iff_getElem?.mpr hj,by simpa using hs⟩
end Blc.SelfintSingleObject.FrameCertificate
