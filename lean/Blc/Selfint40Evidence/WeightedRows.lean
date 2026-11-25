import Blc.Selfint40Evidence.Weighted
import Blc.Selfint40Evidence.Base

namespace Blc.Floor40.WeightedRows
open Term SelfintSharp WeakHeadClock Round3Floor38
def diag := Term.lam (.app (.var 0) (.var 0))
theorem deltaCount {e : Term} (he : IsSelfInterpreter e) : ∃ n, Count (.app e diag) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := diag) (m := SelfintControl.identity) (r := .var 0)
    (args := []) (k := 3) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩
private def te302887593530 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))) (.var 0))))
theorem ex_e302887593530 : ¬ IsSelfInterpreter e302887593530 := by
  intro he
  have run : replay [[]] e302887593530 = some te302887593530 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 2 (by decide : Closed te302887593530) (by decide) (by decide) h
#print axioms ex_e302887593530

private def te302887593754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))) (.var 0))))
theorem ex_e302887593754 : ¬ IsSelfInterpreter e302887593754 := by
  intro he
  have run : replay [] e302887593754 = some te302887593754 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302887593754) (by decide) (by decide) h
#print axioms ex_e302887593754

private def te302897453294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
theorem ex_e302897453294 : ¬ IsSelfInterpreter e302897453294 := by
  intro he
  have run : replay [] e302897453294 = some te302897453294 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302897453294) (by decide) (by decide) h
#print axioms ex_e302897453294

private def te302897453302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
theorem ex_e302897453302 : ¬ IsSelfInterpreter e302897453302 := by
  intro he
  have run : replay [] e302897453302 = some te302897453302 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302897453302) (by decide) (by decide) h
#print axioms ex_e302897453302

private def te302897459998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
theorem ex_e302897459998 : ¬ IsSelfInterpreter e302897459998 := by
  intro he
  have run : replay [] e302897459998 = some te302897459998 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302897459998) (by decide) (by decide) h
#print axioms ex_e302897459998

private def te302897460166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
theorem ex_e302897460166 : ¬ IsSelfInterpreter e302897460166 := by
  intro he
  have run : replay [] e302897460166 = some te302897460166 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302897460166) (by decide) (by decide) h
#print axioms ex_e302897460166

private def te302897461646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
theorem ex_e302897461646 : ¬ IsSelfInterpreter e302897461646 := by
  intro he
  have run : replay [] e302897461646 = some te302897461646 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302897461646) (by decide) (by decide) h
#print axioms ex_e302897461646

private def te302897461702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem ex_e302897461702 : ¬ IsSelfInterpreter e302897461702 := by
  intro he
  have run : replay [] e302897461702 = some te302897461702 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302897461702) (by decide) (by decide) h
#print axioms ex_e302897461702

private def te302902180294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem ex_e302902180294 : ¬ IsSelfInterpreter e302902180294 := by
  intro he
  have run : replay [] e302902180294 = some te302902180294 := by decide
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) run
  exact Weighted.no_clock 1 (by decide : Closed te302902180294) (by decide) (by decide) h
#print axioms ex_e302902180294

end Blc.Floor40.WeightedRows
