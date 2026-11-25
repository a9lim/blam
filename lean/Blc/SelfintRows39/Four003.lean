import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157186806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v701157186806 : ¬ MinimalInterpreter v701157186806 :=
  chain_cut false 2 (by decide)
private def v701157185398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v701157185398 : ¬ MinimalInterpreter v701157185398 :=
  chain_cut false 2 (by decide)
private def v701157174518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v701157174518 : ¬ MinimalInterpreter v701157174518 :=
  chain_cut false 2 (by decide)
private def v701157173110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v701157173110 : ¬ MinimalInterpreter v701157173110 :=
  chain_cut false 2 (by decide)
private def v701157170038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v701157170038 : ¬ MinimalInterpreter v701157170038 :=
  chain_cut false 2 (by decide)
private def v701156465910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v701156465910 : ¬ MinimalInterpreter v701156465910 :=
  chain_cut false 2 (by decide)
private def v701156464502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v701156464502 : ¬ MinimalInterpreter v701156464502 :=
  chain_cut false 2 (by decide)
private def v701156453622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156453622 : ¬ MinimalInterpreter v701156453622 :=
  chain_cut false 2 (by decide)
private def v701156273398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156273398 : ¬ MinimalInterpreter v701156273398 :=
  chain_cut false 2 (by decide)
private def v701156452214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v701156452214 : ¬ MinimalInterpreter v701156452214 :=
  chain_cut false 2 (by decide)
private def v701156449142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 1))))))
private theorem no_v701156449142 : ¬ MinimalInterpreter v701156449142 :=
  chain_cut false 2 (by decide)
private def v701156271990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v701156271990 : ¬ MinimalInterpreter v701156271990 :=
  chain_cut false 2 (by decide)
private def v701156268918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v701156268918 : ¬ MinimalInterpreter v701156268918 :=
  chain_cut false 2 (by decide)
private def v701156223862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v701156223862 : ¬ MinimalInterpreter v701156223862 :=
  chain_cut false 2 (by decide)
private def v701168196854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v701168196854 : ¬ MinimalInterpreter v701168196854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168195446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v701168195446 : ¬ MinimalInterpreter v701168195446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168184566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v701168184566 : ¬ MinimalInterpreter v701168184566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168183158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v701168183158 : ¬ MinimalInterpreter v701168183158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168180086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v701168180086 : ¬ MinimalInterpreter v701168180086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701165496182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1)))))
private theorem no_v701165496182 : ¬ MinimalInterpreter v701165496182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v701165493110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 1)))))
private theorem no_v701165493110 : ¬ MinimalInterpreter v701165493110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row18 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,1,2,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,1,2,1] = [v701157186806,v701157185398,v701157174518,v701157173110,v701157170038,v701156465910,v701156464502,v701156453622,v701156273398,v701156452214,v701156449142,v701156271990,v701156268918,v701156223862,v701168196854,v701168195446,v701168184566,v701168183158,v701168180086,v701165496182,v701165493110] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157186806) (.cons (no_v701157185398) (.cons (no_v701157174518) (.cons (no_v701157173110) (.cons (no_v701157170038) (.cons (no_v701156465910) (.cons (no_v701156464502) (.cons (no_v701156453622) (.cons (no_v701156273398) (.cons (no_v701156452214) (.cons (no_v701156449142) (.cons (no_v701156271990) (.cons (no_v701156268918) (.cons (no_v701156223862) (.cons (no_v701168196854) (.cons (no_v701168195446) (.cons (no_v701168184566) (.cons (no_v701168183158) (.cons (no_v701168180086) (.cons (no_v701165496182) (.cons (no_v701165493110) .nil)))))))))))))))))))))

private def v701157187182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v701157187182 : ¬ MinimalInterpreter v701157187182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157185454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v701157185454 : ¬ MinimalInterpreter v701157185454 :=
  chain_cut true 4 (by decide)
private def v701157174894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v701157174894 : ¬ MinimalInterpreter v701157174894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157173166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v701157173166 : ¬ MinimalInterpreter v701157173166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157170094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v701157170094 : ¬ MinimalInterpreter v701157170094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156466286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v701156466286 : ¬ MinimalInterpreter v701156466286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156464558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v701156464558 : ¬ MinimalInterpreter v701156464558 :=
  chain_cut true 4 (by decide)
private def v701156453998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156453998 : ¬ MinimalInterpreter v701156453998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156273774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156273774 : ¬ MinimalInterpreter v701156273774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156452270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 2))))))
private theorem no_v701156452270 : ¬ MinimalInterpreter v701156452270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156449198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 2))))))
private theorem no_v701156449198 : ¬ MinimalInterpreter v701156449198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156272046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v701156272046 : ¬ MinimalInterpreter v701156272046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156268974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v701156268974 : ¬ MinimalInterpreter v701156268974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156223918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v701156223918 : ¬ MinimalInterpreter v701156223918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row19 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,2,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,2,0,2] = [v701157187182,v701157185454,v701157174894,v701157173166,v701157170094,v701156466286,v701156464558,v701156453998,v701156273774,v701156452270,v701156449198,v701156272046,v701156268974,v701156223918] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157187182) (.cons (no_v701157185454) (.cons (no_v701157174894) (.cons (no_v701157173166) (.cons (no_v701157170094) (.cons (no_v701156466286) (.cons (no_v701156464558) (.cons (no_v701156453998) (.cons (no_v701156273774) (.cons (no_v701156452270) (.cons (no_v701156449198) (.cons (no_v701156272046) (.cons (no_v701156268974) (.cons (no_v701156223918) .nil))))))))))))))

private def v701157187190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v701157187190 : ¬ MinimalInterpreter v701157187190 :=
  chain_cut false 2 (by decide)
private def v701157185462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v701157185462 : ¬ MinimalInterpreter v701157185462 :=
  chain_cut false 2 (by decide)
private def v701157174902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v701157174902 : ¬ MinimalInterpreter v701157174902 :=
  chain_cut false 2 (by decide)
private def v701157173174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v701157173174 : ¬ MinimalInterpreter v701157173174 :=
  chain_cut false 2 (by decide)
private def v701157170102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v701157170102 : ¬ MinimalInterpreter v701157170102 :=
  chain_cut false 2 (by decide)
private def v701156466294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v701156466294 : ¬ MinimalInterpreter v701156466294 :=
  chain_cut false 2 (by decide)
private def v701156464566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v701156464566 : ¬ MinimalInterpreter v701156464566 :=
  chain_cut false 2 (by decide)
private def v701156454006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 1)))))))
private theorem no_v701156454006 : ¬ MinimalInterpreter v701156454006 :=
  chain_cut false 2 (by decide)
private def v701156273782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v701156273782 : ¬ MinimalInterpreter v701156273782 :=
  chain_cut false 2 (by decide)
private def v701156452278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v701156452278 : ¬ MinimalInterpreter v701156452278 :=
  chain_cut false 2 (by decide)
private def v701156449206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 1))))))
private theorem no_v701156449206 : ¬ MinimalInterpreter v701156449206 :=
  chain_cut false 2 (by decide)
private def v701156272054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v701156272054 : ¬ MinimalInterpreter v701156272054 :=
  chain_cut false 2 (by decide)
private def v701156268982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)) (.var 1))))))
private theorem no_v701156268982 : ¬ MinimalInterpreter v701156268982 :=
  chain_cut false 2 (by decide)
private def v701156223926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v701156223926 : ¬ MinimalInterpreter v701156223926 :=
  chain_cut false 2 (by decide)
private def v701168197238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v701168197238 : ¬ MinimalInterpreter v701168197238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168195510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v701168195510 : ¬ MinimalInterpreter v701168195510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168184950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v701168184950 : ¬ MinimalInterpreter v701168184950 :=
  w_cut false 0 (by decide)
private def v701168183222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v701168183222 : ¬ MinimalInterpreter v701168183222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168180150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v701168180150 : ¬ MinimalInterpreter v701168180150 :=
  w_cut false 0 (by decide)
private def v701165496246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1)))))
private theorem no_v701165496246 : ¬ MinimalInterpreter v701165496246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v701165493174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 1)))))
private theorem no_v701165493174 : ¬ MinimalInterpreter v701165493174 :=
  w_cut false 0 (by decide)
theorem row20 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,2,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,2,1,1] = [v701157187190,v701157185462,v701157174902,v701157173174,v701157170102,v701156466294,v701156464566,v701156454006,v701156273782,v701156452278,v701156449206,v701156272054,v701156268982,v701156223926,v701168197238,v701168195510,v701168184950,v701168183222,v701168180150,v701165496246,v701165493174] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157187190) (.cons (no_v701157185462) (.cons (no_v701157174902) (.cons (no_v701157173174) (.cons (no_v701157170102) (.cons (no_v701156466294) (.cons (no_v701156464566) (.cons (no_v701156454006) (.cons (no_v701156273782) (.cons (no_v701156452278) (.cons (no_v701156449206) (.cons (no_v701156272054) (.cons (no_v701156268982) (.cons (no_v701156223926) (.cons (no_v701168197238) (.cons (no_v701168195510) (.cons (no_v701168184950) (.cons (no_v701168183222) (.cons (no_v701168180150) (.cons (no_v701165496246) (.cons (no_v701165493174) .nil)))))))))))))))))))))

private def v701157187194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v701157187194 : ¬ MinimalInterpreter v701157187194 :=
  chain_cut true 5 (by decide)
private def v701157185466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v701157185466 : ¬ MinimalInterpreter v701157185466 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157174906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v701157174906 : ¬ MinimalInterpreter v701157174906 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157173178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v701157173178 : ¬ MinimalInterpreter v701157173178 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157170106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v701157170106 : ¬ MinimalInterpreter v701157170106 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156466298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v701156466298 : ¬ MinimalInterpreter v701156466298 :=
  chain_cut true 5 (by decide)
private def v701156464570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v701156464570 : ¬ MinimalInterpreter v701156464570 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156454010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156454010 : ¬ MinimalInterpreter v701156454010 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156273786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156273786 : ¬ MinimalInterpreter v701156273786 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156452282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))) (.var 0))))))
private theorem no_v701156452282 : ¬ MinimalInterpreter v701156452282 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156449210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))) (.var 0))))))
private theorem no_v701156449210 : ¬ MinimalInterpreter v701156449210 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156272058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v701156272058 : ¬ MinimalInterpreter v701156272058 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156268986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v701156268986 : ¬ MinimalInterpreter v701156268986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156223930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v701156223930 : ¬ MinimalInterpreter v701156223930 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row21 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,2,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,2,2,0] = [v701157187194,v701157185466,v701157174906,v701157173178,v701157170106,v701156466298,v701156464570,v701156454010,v701156273786,v701156452282,v701156449210,v701156272058,v701156268986,v701156223930] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157187194) (.cons (no_v701157185466) (.cons (no_v701157174906) (.cons (no_v701157173178) (.cons (no_v701157170106) (.cons (no_v701156466298) (.cons (no_v701156464570) (.cons (no_v701156454010) (.cons (no_v701156273786) (.cons (no_v701156452282) (.cons (no_v701156449210) (.cons (no_v701156272058) (.cons (no_v701156268986) (.cons (no_v701156223930) .nil))))))))))))))

private def v701157199086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701157199086 : ¬ MinimalInterpreter v701157199086 :=
  chain_cut false 2 (by decide)
private def v701157198702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701157198702 : ¬ MinimalInterpreter v701157198702 :=
  chain_cut false 2 (by decide)
private def v701157176558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v701157176558 : ¬ MinimalInterpreter v701157176558 :=
  chain_cut false 2 (by decide)
private def v701157176174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v701157176174 : ¬ MinimalInterpreter v701157176174 :=
  chain_cut false 2 (by decide)
private def v701157170542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v701157170542 : ¬ MinimalInterpreter v701157170542 :=
  chain_cut false 2 (by decide)
private def v701156478190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701156478190 : ¬ MinimalInterpreter v701156478190 :=
  chain_cut false 2 (by decide)
private def v701156477806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701156477806 : ¬ MinimalInterpreter v701156477806 :=
  chain_cut false 2 (by decide)
private def v701156455662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156455662 : ¬ MinimalInterpreter v701156455662 :=
  chain_cut false 2 (by decide)
private def v701156275438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156275438 : ¬ MinimalInterpreter v701156275438 :=
  chain_cut false 2 (by decide)
private def v701156455278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v701156455278 : ¬ MinimalInterpreter v701156455278 :=
  chain_cut false 2 (by decide)
private def v701156449646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v701156449646 : ¬ MinimalInterpreter v701156449646 :=
  chain_cut false 2 (by decide)
private def v701156275054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v701156275054 : ¬ MinimalInterpreter v701156275054 :=
  chain_cut false 2 (by decide)
private def v701156269422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v701156269422 : ¬ MinimalInterpreter v701156269422 :=
  chain_cut false 2 (by decide)
private def v701156224366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v701156224366 : ¬ MinimalInterpreter v701156224366 :=
  chain_cut false 2 (by decide)
private def v701168209134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701168209134 : ¬ MinimalInterpreter v701168209134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168208750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701168208750 : ¬ MinimalInterpreter v701168208750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168186606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v701168186606 : ¬ MinimalInterpreter v701168186606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168186222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v701168186222 : ¬ MinimalInterpreter v701168186222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168180590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v701168180590 : ¬ MinimalInterpreter v701168180590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168553198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701168553198 : ¬ MinimalInterpreter v701168553198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701168552814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701168552814 : ¬ MinimalInterpreter v701168552814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701165669614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701165669614 : ¬ MinimalInterpreter v701165669614 :=
  w_cut false 0 (by decide)
private def v701165669230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701165669230 : ¬ MinimalInterpreter v701165669230 :=
  w_cut false 0 (by decide)
theorem row22 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,0,1,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,0,1,2] = [v701157199086,v701157198702,v701157176558,v701157176174,v701157170542,v701156478190,v701156477806,v701156455662,v701156275438,v701156455278,v701156449646,v701156275054,v701156269422,v701156224366,v701168209134,v701168208750,v701168186606,v701168186222,v701168180590,v701168553198,v701168552814,v701165669614,v701165669230] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157199086) (.cons (no_v701157198702) (.cons (no_v701157176558) (.cons (no_v701157176174) (.cons (no_v701157170542) (.cons (no_v701156478190) (.cons (no_v701156477806) (.cons (no_v701156455662) (.cons (no_v701156275438) (.cons (no_v701156455278) (.cons (no_v701156449646) (.cons (no_v701156275054) (.cons (no_v701156269422) (.cons (no_v701156224366) (.cons (no_v701168209134) (.cons (no_v701168208750) (.cons (no_v701168186606) (.cons (no_v701168186222) (.cons (no_v701168180590) (.cons (no_v701168553198) (.cons (no_v701168552814) (.cons (no_v701165669614) (.cons (no_v701165669230) .nil)))))))))))))))))))))))

private def v701157199094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701157199094 : ¬ MinimalInterpreter v701157199094 :=
  chain_cut false 2 (by decide)
private def v701157198710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701157198710 : ¬ MinimalInterpreter v701157198710 :=
  chain_cut false 2 (by decide)
private def v701157176566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v701157176566 : ¬ MinimalInterpreter v701157176566 :=
  chain_cut false 2 (by decide)
private def v701157176182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v701157176182 : ¬ MinimalInterpreter v701157176182 :=
  chain_cut false 2 (by decide)
private def v701157170550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v701157170550 : ¬ MinimalInterpreter v701157170550 :=
  chain_cut false 2 (by decide)
private def v701156478198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701156478198 : ¬ MinimalInterpreter v701156478198 :=
  chain_cut false 2 (by decide)
private def v701156477814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701156477814 : ¬ MinimalInterpreter v701156477814 :=
  chain_cut false 2 (by decide)
private def v701156455670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156455670 : ¬ MinimalInterpreter v701156455670 :=
  chain_cut false 2 (by decide)
private def v701156275446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156275446 : ¬ MinimalInterpreter v701156275446 :=
  chain_cut false 2 (by decide)
private def v701156455286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v701156455286 : ¬ MinimalInterpreter v701156455286 :=
  chain_cut false 2 (by decide)
private def v701156449654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v701156449654 : ¬ MinimalInterpreter v701156449654 :=
  chain_cut false 2 (by decide)
private def v701156275062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v701156275062 : ¬ MinimalInterpreter v701156275062 :=
  chain_cut false 2 (by decide)
private def v701156269430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v701156269430 : ¬ MinimalInterpreter v701156269430 :=
  chain_cut false 2 (by decide)
private def v701156224374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v701156224374 : ¬ MinimalInterpreter v701156224374 :=
  chain_cut false 2 (by decide)
private def v701168209142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701168209142 : ¬ MinimalInterpreter v701168209142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168208758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701168208758 : ¬ MinimalInterpreter v701168208758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168186614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v701168186614 : ¬ MinimalInterpreter v701168186614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168186230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v701168186230 : ¬ MinimalInterpreter v701168186230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168180598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v701168180598 : ¬ MinimalInterpreter v701168180598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168553206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701168553206 : ¬ MinimalInterpreter v701168553206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701168552822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701168552822 : ¬ MinimalInterpreter v701168552822 :=
  w_cut false 0 (by decide)
private def v701165669622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701165669622 : ¬ MinimalInterpreter v701165669622 :=
  w_cut false 0 (by decide)
private def v701165669238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701165669238 : ¬ MinimalInterpreter v701165669238 :=
  w_cut false 0 (by decide)
private def v701165499254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 1)))))
private theorem no_v701165499254 : ¬ MinimalInterpreter v701165499254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701165493622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 1)))))
private theorem no_v701165493622 : ¬ MinimalInterpreter v701165493622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row23 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,0,2,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,0,2,1] = [v701157199094,v701157198710,v701157176566,v701157176182,v701157170550,v701156478198,v701156477814,v701156455670,v701156275446,v701156455286,v701156449654,v701156275062,v701156269430,v701156224374,v701168209142,v701168208758,v701168186614,v701168186230,v701168180598,v701168553206,v701168552822,v701165669622,v701165669238,v701165499254,v701165493622] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157199094) (.cons (no_v701157198710) (.cons (no_v701157176566) (.cons (no_v701157176182) (.cons (no_v701157170550) (.cons (no_v701156478198) (.cons (no_v701156477814) (.cons (no_v701156455670) (.cons (no_v701156275446) (.cons (no_v701156455286) (.cons (no_v701156449654) (.cons (no_v701156275062) (.cons (no_v701156269430) (.cons (no_v701156224374) (.cons (no_v701168209142) (.cons (no_v701168208758) (.cons (no_v701168186614) (.cons (no_v701168186230) (.cons (no_v701168180598) (.cons (no_v701168553206) (.cons (no_v701168552822) (.cons (no_v701165669622) (.cons (no_v701165669238) (.cons (no_v701165499254) (.cons (no_v701165493622) .nil)))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
