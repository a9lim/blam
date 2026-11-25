import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice10450G4
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r192 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject192 : ¬ Reader r192 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.var 1) (.var 1))))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject192
def r193 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject193 : ¬ Reader r193 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject193
def r194 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject194 : ¬ Reader r194 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject194
def r195 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject195 : ¬ Reader r195 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1)) (.var 1))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1)) (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject195
def r196 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject196 : ¬ Reader r196 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject196
def r197 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject197 : ¬ Reader r197 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject197
def r198 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.var 0))) (.var 1))
theorem reject198 : ¬ Reader r198 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject198
def r199 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.var 1)) (.lam (.var 0)))
theorem reject199 : ¬ Reader r199 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject199
def r200 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject200 : ¬ Reader r200 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)))))) (.var 0)) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject200
def r201 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject201 : ¬ Reader r201 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject201
def r202 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (.var 0))) (.var 1))
theorem reject202 : ¬ Reader r202 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject202
def r203 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.var 1)) (.lam (.var 0)))
theorem reject203 : ¬ Reader r203 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject203
def r204 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (.var 0))) (.var 1))
theorem reject204 : ¬ Reader r204 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject204
def r205 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.var 1)) (.lam (.var 0)))
theorem reject205 : ¬ Reader r205 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject205
def r206 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.lam (.var 0))) (.var 1))
theorem reject206 : ¬ Reader r206 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.var 0)) [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject206
def r207 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.var 1)) (.lam (.var 0)))
theorem reject207 : ¬ Reader r207 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject207
def r208 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject208 : ¬ Reader r208 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject208
def r209 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject209 : ¬ Reader r209 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject209
def r210 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0))
theorem reject210 : ¬ Reader r210 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject210
def r211 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1))
theorem reject211 : ¬ Reader r211 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject211
def r212 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 2))))))) (.var 1)) (.var 0))
theorem reject212 : ¬ Reader r212 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject212
def r213 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 2))))))) (.var 0)) (.var 1))
theorem reject213 : ¬ Reader r213 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject213
def r214 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 2))))))) (.var 1)) (.var 0))
theorem reject214 : ¬ Reader r214 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject214
def r215 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 2))))))) (.var 0)) (.var 1))
theorem reject215 : ¬ Reader r215 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject215
def r216 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 1))))))) (.var 1)) (.var 0))
theorem reject216 : ¬ Reader r216 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 0, 2, 0], [1, 1], [1, 1, 1], [1, 1, 1, 0, 2, 0], [1, 1], [1, 1, 2, 0, 0, 2, 0], [1, 1, 2, 0, 0, 1], [1, 1, 2, 0, 0]] [[1, 1, 1, 0, 2, 0], [1, 1], [1, 1, 2, 0, 0, 2, 0], [1, 1, 2, 0, 0, 1], [1, 1, 2, 0, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 3) (.var 3)) (.lam (.app (.var 4) (.lam (.lam (.app (.app (.var 6) (.var 6)) (.lam (.app (.var 7) (.var 1)))))))))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject216
def r217 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 1))))))) (.var 0)) (.var 1))
theorem reject217 : ¬ Reader r217 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 0, 2, 0], [1, 1], [1, 1, 1], [1, 1, 1, 0, 2, 0], [1, 1], [1, 1, 2, 0, 0, 2, 0], [1, 1, 2, 0, 0, 1], [1, 1, 2, 0, 0]] [[1, 1, 1, 0, 2, 0], [1, 1], [1, 1, 2, 0, 0, 2, 0], [1, 1, 2, 0, 0, 1], [1, 1, 2, 0, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.lam (.app (.var 3) (.lam (.lam (.app (.app (.var 5) (.var 5)) (.lam (.app (.var 6) (.var 1)))))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject217
def r218 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2))))))) (.var 1)) (.var 0))
theorem reject218 : ¬ Reader r218 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1]] [[1, 1], [1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2))))))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject218
def r219 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2))))))) (.var 0)) (.var 1))
theorem reject219 : ¬ Reader r219 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1]] [[1, 1], [1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 2))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject219
def r220 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 2)))))))) (.var 1)) (.var 0))
theorem reject220 : ¬ Reader r220 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject220
def r221 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 1))
theorem reject221 : ¬ Reader r221 := by
  exact replay_absent true [] 10 1 (by decide) (by decide)
#print axioms reject221
def r222 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1))))))) (.var 1)) (.var 0))
theorem reject222 : ¬ Reader r222 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject222
def r223 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1))))))) (.var 0)) (.var 1))
theorem reject223 : ¬ Reader r223 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1))))))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1))))))) (.var 1)))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 1))))))) (.var 1))))) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject223
def r224 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 2))))))) (.var 1)) (.var 0))
theorem reject224 : ¬ Reader r224 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject224
def r225 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 2))))))) (.var 0)) (.var 1))
theorem reject225 : ¬ Reader r225 := by
  exact replay_absent false [] 5 0 (by decide) (by decide)
#print axioms reject225
def r226 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))) (.var 1)) (.var 0))
theorem reject226 : ¬ Reader r226 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject226
def r227 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))) (.var 0)) (.var 1))
theorem reject227 : ¬ Reader r227 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2)))))))))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2)))))))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject227
def r228 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2)))))) (.var 1))
theorem reject228 : ¬ Reader r228 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 3)))))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject228
def r229 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 2))))))) (.var 1))
theorem reject229 : ¬ Reader r229 := by
 exact Rootcert2Flow.reject [[1, 1], [1, 1]] [[],[],[],[],[7],[0],[0],[5,6,13,14],[11],[],[],[9,10],[7],[0],[0],[],[],[]] [[],[],[],[],[],[],[7],[],[12],[],[11],[12],[],[],[7],[],[17],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.app (.var 1 [7]) (.lam 6 (.var 2 [7]) [6]) []) (.app (.var 0 [0]) (.var 2 [0]) [0]) []) [5]) []) [4]) (.lam 7 (.app (.app (.lam 8 (.app (.var 0 [11]) (.lam 9 (.app (.app (.var 1 [11]) (.lam 10 (.var 2 [11]) [10]) [12]) (.app (.var 0 []) (.var 3 [0]) []) []) [9]) [12]) [8]) (.lam 11 (.lam 12 (.app (.var 0 [7]) (.lam 13 (.app (.app (.var 1 [7]) (.lam 14 (.var 2 [7]) [14]) []) (.app (.var 0 [0]) (.var 4 [0]) [0]) []) [13]) []) [12]) [11]) [12]) (.app (.var 0 [5,6,13,14]) (.var 1 [0]) [7]) []) [7]) []) (.var 1 [1]) []) (.lam 15 (.app (.app (.var 0 []) (.lam 16 (.lam 17 (.var 1 []) [17]) [16]) []) (.var 4 [3]) []) [15]) []) (by decide) (by decide) (by decide)
#print axioms reject229
def r231 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) (.var 1))
theorem reject231 : ¬ Reader r231 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[5,6],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.lam 7 (.var 2 [5,6]) [7]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject231
def r232 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2)))))))) (.var 1))
theorem reject232 : ¬ Reader r232 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.lam (.var 2)))))))) (.app (.var 1) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 4) (.lam (.var 2)))))))))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 4) (.lam (.var 2)))))))) (.app (.var 2) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 5) (.lam (.var 2))))))))))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.lam (.var 2)))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject232
def r233 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2)))))) (.var 1))
theorem reject233 : ¬ Reader r233 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 4))))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2))))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject233
def r234 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2))))))) (.var 1))
theorem reject234 : ¬ Reader r234 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[5,6],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject234
def r235 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2)))))) (.var 1))
theorem reject235 : ¬ Reader r235 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[5,6],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject235
def r236 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2))))))) (.var 1))
theorem reject236 : ¬ Reader r236 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.var 2))))))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 4)) (.lam (.var 2)))))))))) [(.var 0), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 4)) (.lam (.var 2))))))) (.var 2)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 5)) (.lam (.var 2)))))))))), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.var 2)))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject236
def r237 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2)))))) (.var 1))
theorem reject237 : ¬ Reader r237 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 3)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 4))))))) (.var 1)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 4)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 5))))))) (.var 2)))), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 3)))))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject237
def r238 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3)))))))) (.var 1))
theorem reject238 : ¬ Reader r238 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3)))))))) [(.lam (.app (.var 0) (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject238
def r239 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))) (.var 1))
theorem reject239 : ¬ Reader r239 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[6],[],[],[],[]] [[],[],[],[],[],[],[],[0],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject239
def r240 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))) (.var 1))
theorem reject240 : ¬ Reader r240 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2)))))) [(.lam (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))), (.lam (.var 1)), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 5))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 5)))))))) (.lam (.var 3)))))) (.lam (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2))) (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 5))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 5)))))))) (.lam (.var 3)))))) (.lam (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2)))) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6)))))))) (.lam (.var 4))))) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6)))))))) (.lam (.var 4)))))) (.lam (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2))) (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6)))))))) (.lam (.var 4))))) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6))))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 6)))))))) (.lam (.var 4)))))) (.lam (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2)))) (.lam (.var 2)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject240
end Blc.HandlerLet.Slice10450G4
