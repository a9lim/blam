import Blc.SelfintSplit45
namespace Blc.SelfintSingleObject.Fast45
open Term SelfintFloor SelfintLowerBound OperandGrammar FiveLive Saturated Grammar43 SourceRefutations

private theorem each {xs : List α} {P : α → Prop} (h : ∀ a ∈ xs, P a) : Every P xs := by
  induction xs with
  | nil => exact .nil
  | cons a as ih => exact .cons (h a (.head _)) (ih (fun _ hm => h _ (.tail _ hm)))

theorem cell_cover {both lit V L X x l v ks} (cf : FrameCover both lit V L X x l v ks)
    (bad : Every (fun w => BadRow (row both lit ks L x l v w)) (words (x+1) v x)) :
    Every (fun w => BadRow (original both V L X lit x l v w)) (words (x+1) v x) :=
  each (fun _ hw => row_cover (word_length hw) cf (bad.get hw))

theorem no_operator (c : Cell) (fw : List Nat)
    (h : ((layouts (c.lf+c.vf) 1 c.lf fw).filter fun b =>
      live b == 0 && decide (NFt b) && spineHead b == .var 0 && nonlinear (.lam b) == 1) = []) :
    Every (fun aw => BadRow (fourRow c fw aw)) (words (1+c.la) c.va c.xa) := by
  apply each; intro aw _
  simp only [fourRow,h,List.flatMap_nil]
  exact .nil

end Blc.SelfintSingleObject.Fast45
