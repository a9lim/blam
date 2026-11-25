import Blc.SelfintCachedCover45

namespace Blc.SelfintSingleObject.Fast45
open OperandGrammar SourceRefutations Grammar43 Saturated

theorem five_cell (c : Params) (ks : List Shell)
    (cf : FrameCover false c.lit c.V c.L c.X c.x c.l c.v ks)
    (rows : Every (fun w => BadRow (row false c.lit ks c.L c.x c.l c.v w)) (words (c.x+1) c.v c.x)) :
    Five c := @cell_cover false c.lit c.V c.L c.X c.x c.l c.v ks cf rows

theorem eight_cell (c : Params) (ks : List Shell)
    (cf : FrameCover true c.lit c.V c.L c.X c.x c.l c.v ks)
    (rows : Every (fun w => BadRow (row true c.lit ks c.L c.x c.l c.v w)) (words (c.x+1) c.v c.x)) :
    Size45.Eight c := @cell_cover true c.lit c.V c.L c.X c.x c.l c.v ks cf rows

theorem five_empty (c : Params) (cf : FrameCover false c.lit c.V c.L c.X c.x c.l c.v []) :
    Five c := @empty_cell false c.lit c.V c.L c.X c.x c.l c.v cf

theorem eight_empty (c : Params) (cf : FrameCover true c.lit c.V c.L c.X c.x c.l c.v []) :
    Size45.Eight c := @empty_cell true c.lit c.V c.L c.X c.x c.l c.v cf

end Blc.SelfintSingleObject.Fast45
