import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice40G25
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r1200 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2))))) (.var 1))
theorem reject1200 : ¬ Reader r1200 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1200
def r1201 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.var 1))
theorem reject1201 : ¬ Reader r1201 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1201
def r1202 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))
theorem reject1202 : ¬ Reader r1202 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1202
def r1203 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))
theorem reject1203 : ¬ Reader r1203 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1203
def r1204 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))
theorem reject1204 : ¬ Reader r1204 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1204
def r1205 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1))
theorem reject1205 : ¬ Reader r1205 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1205
def r1206 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1))
theorem reject1206 : ¬ Reader r1206 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1206
def r1207 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject1207 : ¬ Reader r1207 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1207
def r1208 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject1208 : ¬ Reader r1208 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1208
def r1209 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject1209 : ¬ Reader r1209 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1209
def r1210 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject1210 : ¬ Reader r1210 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1210
def r1211 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject1211 : ¬ Reader r1211 := by
  exact replay_loop true [] 0 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1211
def r1212 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject1212 : ¬ Reader r1212 := by
  exact replay_loop true [] 0 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1212
def r1213 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1)))
theorem reject1213 : ¬ Reader r1213 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1213
def r1214 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject1214 : ¬ Reader r1214 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1214
def r1215 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.lam (.var 1)))
theorem reject1215 : ¬ Reader r1215 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.var 0))] [] [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1215
def r1216 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.var 1))) (.var 1))
theorem reject1216 : ¬ Reader r1216 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1216
def r1217 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.lam (.var 1)))
theorem reject1217 : ¬ Reader r1217 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1217
def r1218 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 1))) (.var 1))
theorem reject1218 : ¬ Reader r1218 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1218
def r1219 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1219 : ¬ Reader r1219 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1219
def r1220 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1220 : ¬ Reader r1220 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1220
def r1221 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject1221 : ¬ Reader r1221 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1221
def r1222 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject1222 : ¬ Reader r1222 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject1222
def r1223 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject1223 : ¬ Reader r1223 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1223
def r1224 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject1224 : ¬ Reader r1224 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1224
def r1225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1225 : ¬ Reader r1225 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1225
def r1226 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1226 : ¬ Reader r1226 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1226
def r1227 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1227 : ¬ Reader r1227 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1227
def r1228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1228 : ¬ Reader r1228 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1228
def r1229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1229 : ¬ Reader r1229 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1229
def r1230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1230 : ¬ Reader r1230 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1230
def r1231 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject1231 : ¬ Reader r1231 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1231
def r1232 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject1232 : ¬ Reader r1232 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1232
def r1233 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 1)) (.var 0))
theorem reject1233 : ¬ Reader r1233 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1233
def r1234 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.var 0)) (.var 1))
theorem reject1234 : ¬ Reader r1234 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject1234
def r1235 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject1235 : ¬ Reader r1235 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 3))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1235
def r1236 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject1236 : ¬ Reader r1236 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1236
def r1237 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject1237 : ¬ Reader r1237 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1237
def r1238 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject1238 : ¬ Reader r1238 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.lam (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1238
def r1239 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1239 : ¬ Reader r1239 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1239
def r1240 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1240 : ¬ Reader r1240 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))))) (.lam (.var 0))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1240
def r1241 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject1241 : ¬ Reader r1241 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1],[],[],[],[],[]] [[],[],[],[],[6],[6],[],[8],[],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1]) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) [1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject1241
def r1242 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject1242 : ¬ Reader r1242 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0],[],[],[],[],[]] [[],[],[],[],[6],[6],[],[8],[],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) [0]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject1242
def r1243 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1243 : ¬ Reader r1243 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) [(.lam (.lam (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1243
def r1244 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1244 : ¬ Reader r1244 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))))) (.var 0)) [(.lam (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1244
def r1245 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0))
theorem reject1245 : ¬ Reader r1245 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.lam (.var 1)))] [] [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1245
def r1246 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 0)) (.var 1))
theorem reject1246 : ¬ Reader r1246 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.lam (.var 1)))] [] [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1246
def r1247 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0))
theorem reject1247 : ¬ Reader r1247 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1247
end Blc.HandlerLet.Slice40G25
