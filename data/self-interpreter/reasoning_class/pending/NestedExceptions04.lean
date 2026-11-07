import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.NestedExceptions04
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r1200 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1))
theorem reject1200 : ¬ Reader r1200 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1200

def r1201 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 1))
theorem reject1201 : ¬ Reader r1201 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))))) [(.var 0), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))))) (.var 0)) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1201

def r1202 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))) (.var 1))
theorem reject1202 : ¬ Reader r1202 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3))))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1202

def r1203 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))) (.var 1))
theorem reject1203 : ¬ Reader r1203 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0)))))))) [(.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1203

def r1204 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 1))
theorem reject1204 : ¬ Reader r1204 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1204

def r1205 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))) (.var 1))
theorem reject1205 : ¬ Reader r1205 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0))))))) [(.var 0), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1205

def r1206 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) (.var 1))
theorem reject1206 : ¬ Reader r1206 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3))))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3)))))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1206

def r1207 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1))
theorem reject1207 : ¬ Reader r1207 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))) [(.lam (.var 1)), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))) (.lam (.var 1))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1207

def r1208 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))))) (.var 1))
theorem reject1208 : ¬ Reader r1208 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3)))))) (.lam (.var 1)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3)))))) (.lam (.var 1))) (.lam (.var 1)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1208

def r1209 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 1))))) (.var 1))
theorem reject1209 : ¬ Reader r1209 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 1))))))] [(.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1209

def r1210 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 0)))) (.var 1))
theorem reject1210 : ¬ Reader r1210 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1210

def r1211 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 0)))) (.var 1))
theorem reject1211 : ¬ Reader r1211 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1211

def r1212 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 0)))) (.var 1))
theorem reject1212 : ¬ Reader r1212 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1212

def r1213 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 0)))) (.var 1))
theorem reject1213 : ¬ Reader r1213 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 0))))] [(.app (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1213

def r1214 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject1214 : ¬ Reader r1214 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1214

def r1215 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.var 1))
theorem reject1215 : ¬ Reader r1215 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1215

def r1216 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1216 : ¬ Reader r1216 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1216

def r1217 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1217 : ¬ Reader r1217 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1217

def r1218 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1218 : ¬ Reader r1218 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1218

def r1219 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1219 : ¬ Reader r1219 := by
  exact replay_loop true [] 3 8 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1219

def r1220 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1220 : ¬ Reader r1220 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1220

def r1221 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1221 : ¬ Reader r1221 := by
  exact replay_loop true [] 5 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1221

def r1222 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1222 : ¬ Reader r1222 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1222

def r1223 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1223 : ¬ Reader r1223 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1223

def r1224 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1224 : ¬ Reader r1224 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1224

def r1225 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1225 : ¬ Reader r1225 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1225

def r1226 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1226 : ¬ Reader r1226 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1226

def r1227 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1227 : ¬ Reader r1227 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1227

def r1228 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1228 : ¬ Reader r1228 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1228

def r1229 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1229 : ¬ Reader r1229 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1229

def r1230 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1230 : ¬ Reader r1230 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1230

def r1231 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1231 : ¬ Reader r1231 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1231

def r1232 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1232 : ¬ Reader r1232 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1232

def r1233 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1233 : ¬ Reader r1233 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1233

def r1234 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1234 : ¬ Reader r1234 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1234

def r1235 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1235 : ¬ Reader r1235 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1235

def r1236 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1236 : ¬ Reader r1236 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1236

def r1237 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1237 : ¬ Reader r1237 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1237

def r1238 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1238 : ¬ Reader r1238 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1238

def r1239 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1239 : ¬ Reader r1239 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1239

def r1240 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1240 : ¬ Reader r1240 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1240

def r1241 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1241 : ¬ Reader r1241 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1241

def r1242 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1242 : ¬ Reader r1242 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1242

def r1243 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1243 : ¬ Reader r1243 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1243

def r1244 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1244 : ¬ Reader r1244 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1244

def r1245 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1245 : ¬ Reader r1245 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1245

def r1246 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1246 : ¬ Reader r1246 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1246

def r1247 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1247 : ¬ Reader r1247 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1247

def r1248 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1248 : ¬ Reader r1248 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1248

def r1249 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1249 : ¬ Reader r1249 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1249

def r1250 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1250 : ¬ Reader r1250 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1250

def r1251 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1251 : ¬ Reader r1251 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1251

def r1252 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1252 : ¬ Reader r1252 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1252

def r1253 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1253 : ¬ Reader r1253 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1253

def r1254 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1254 : ¬ Reader r1254 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1254

def r1255 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1255 : ¬ Reader r1255 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1255

def r1256 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1256 : ¬ Reader r1256 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1256

def r1257 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1257 : ¬ Reader r1257 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1257

def r1258 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1258 : ¬ Reader r1258 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1258

def r1259 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1259 : ¬ Reader r1259 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1259

def r1260 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1260 : ¬ Reader r1260 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1260

def r1261 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1261 : ¬ Reader r1261 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1261

def r1262 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1262 : ¬ Reader r1262 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1262

def r1263 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1263 : ¬ Reader r1263 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1263

def r1264 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1264 : ¬ Reader r1264 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1264

def r1265 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1265 : ¬ Reader r1265 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1265

def r1266 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1266 : ¬ Reader r1266 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1266

def r1267 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1267 : ¬ Reader r1267 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1267

def r1268 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.var 1))
theorem reject1268 : ¬ Reader r1268 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0)))))))) [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1268

def r1269 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1))
theorem reject1269 : ¬ Reader r1269 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3)))))))) [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1269

def r1270 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1))
theorem reject1270 : ¬ Reader r1270 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0)))))) [] [(.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1270

def r1271 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.var 1))
theorem reject1271 : ¬ Reader r1271 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0)))))) [] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1271

def r1272 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1))
theorem reject1272 : ¬ Reader r1272 := by
  exact replay_loop true [] 2 8 (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3))))))) [(.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3))))))) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)))))))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1272

def r1273 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1))
theorem reject1273 : ¬ Reader r1273 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1273

def r1274 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 1))
theorem reject1274 : ¬ Reader r1274 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1274

def r1275 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 1))
theorem reject1275 : ¬ Reader r1275 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1275

def r1276 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1))
theorem reject1276 : ¬ Reader r1276 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1276

def r1277 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1))
theorem reject1277 : ¬ Reader r1277 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1277

def r1278 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1278 : ¬ Reader r1278 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1278

def r1279 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1279 : ¬ Reader r1279 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1279

def r1280 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject1280 : ¬ Reader r1280 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1280

def r1281 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject1281 : ¬ Reader r1281 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1281

def r1282 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 1))
theorem reject1282 : ¬ Reader r1282 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 1) (.lam (.var 2)))) (.lam (.app (.var 1) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1282

def r1283 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 1))
theorem reject1283 : ¬ Reader r1283 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 2)))), (.lam (.app (.var 1) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1283

def r1284 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))
theorem reject1284 : ¬ Reader r1284 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 3))))))) [(.app (.var 0) (.lam (.lam (.var 2))))] [(.app (.var 0) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1284

def r1285 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject1285 : ¬ Reader r1285 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1285

def r1286 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject1286 : ¬ Reader r1286 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1286

def r1287 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1)) (.var 0))
theorem reject1287 : ¬ Reader r1287 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1287

def r1288 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0)) (.var 1))
theorem reject1288 : ¬ Reader r1288 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1288

def r1289 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.var 0))
theorem reject1289 : ¬ Reader r1289 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1289

def r1290 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.var 1))
theorem reject1290 : ¬ Reader r1290 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1290

def r1291 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1291 : ¬ Reader r1291 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1291

def r1292 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1292 : ¬ Reader r1292 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1292

def r1293 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1293 : ¬ Reader r1293 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1293

def r1294 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1294 : ¬ Reader r1294 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1294

def r1295 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1295 : ¬ Reader r1295 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1295

def r1296 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1296 : ¬ Reader r1296 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1296

def r1297 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1297 : ¬ Reader r1297 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1297

def r1298 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1298 : ¬ Reader r1298 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1298

def r1299 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1299 : ¬ Reader r1299 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1299

def r1300 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1300 : ¬ Reader r1300 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1300

def r1301 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1301 : ¬ Reader r1301 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1301

def r1302 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1302 : ¬ Reader r1302 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1302

def r1303 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1303 : ¬ Reader r1303 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1303

def r1304 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1304 : ¬ Reader r1304 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1304

def r1305 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1305 : ¬ Reader r1305 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1305

def r1306 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1306 : ¬ Reader r1306 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1306

def r1307 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1307 : ¬ Reader r1307 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1307

def r1308 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1308 : ¬ Reader r1308 := by
  exact replay_loop true [] 3 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1308

def r1309 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1309 : ¬ Reader r1309 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1309

def r1310 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1310 : ¬ Reader r1310 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1310

def r1311 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1311 : ¬ Reader r1311 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1311

def r1312 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1312 : ¬ Reader r1312 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1312

def r1313 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1313 : ¬ Reader r1313 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1313

def r1314 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1314 : ¬ Reader r1314 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1314

def r1315 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1315 : ¬ Reader r1315 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1315

def r1316 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1316 : ¬ Reader r1316 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1316

def r1317 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1317 : ¬ Reader r1317 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1317

def r1318 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1318 : ¬ Reader r1318 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1318

def r1319 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1319 : ¬ Reader r1319 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1319

def r1320 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1320 : ¬ Reader r1320 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1320

def r1321 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1321 : ¬ Reader r1321 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1321

def r1322 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1322 : ¬ Reader r1322 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1322

def r1323 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1323 : ¬ Reader r1323 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1323

def r1324 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1324 : ¬ Reader r1324 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1324

def r1325 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 1) (.var 1)))) (.var 1))
theorem reject1325 : ¬ Reader r1325 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 1) (.var 1))) (.lam (.lam (.app (.var 2) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1325

def r1326 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))) (.var 1))
theorem reject1326 : ¬ Reader r1326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.var 1))), (.lam (.lam (.app (.var 2) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1326

def r1327 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 1) (.var 1)))) (.var 1))
theorem reject1327 : ¬ Reader r1327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.var 2)))), (.lam (.app (.var 1) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1327

def r1328 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject1328 : ¬ Reader r1328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1328

def r1329 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject1329 : ¬ Reader r1329 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 2)))))) [(.app (.var 0) (.lam (.var 1)))] [(.lam (.app (.var 1) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1329

def r1330 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject1330 : ¬ Reader r1330 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 3))))))) [(.lam (.app (.var 1) (.lam (.var 2))))] [(.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1330

def r1331 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject1331 : ¬ Reader r1331 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 3)))) (.var 0))))) [] [(.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1331

def r1332 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject1332 : ¬ Reader r1332 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1332

def r1333 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject1333 : ¬ Reader r1333 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1333

def r1334 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject1334 : ¬ Reader r1334 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1334

def r1335 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject1335 : ¬ Reader r1335 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1335

def r1336 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject1336 : ¬ Reader r1336 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1336

def r1337 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject1337 : ¬ Reader r1337 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1337

def r1338 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject1338 : ¬ Reader r1338 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1338

def r1339 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1339 : ¬ Reader r1339 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1339

def r1340 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1340 : ¬ Reader r1340 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1340

def r1341 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1341 : ¬ Reader r1341 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1341

def r1342 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1342 : ¬ Reader r1342 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1342

def r1343 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1343 : ¬ Reader r1343 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1343

def r1344 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1344 : ¬ Reader r1344 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1344

def r1345 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1345 : ¬ Reader r1345 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1345

def r1346 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1346 : ¬ Reader r1346 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1346

def r1347 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 3))))) (.var 1))
theorem reject1347 : ¬ Reader r1347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 3)))) (.lam (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1347

def r1348 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 3))))) (.var 1))
theorem reject1348 : ¬ Reader r1348 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 3)))), (.lam (.lam (.lam (.var 3)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1348

def r1349 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1349 : ¬ Reader r1349 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1349

def r1350 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1350 : ¬ Reader r1350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.var 2))) (.lam (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1350

def r1351 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1351 : ¬ Reader r1351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.lam (.var 3)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1351

def r1352 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1352 : ¬ Reader r1352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 3)))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1352

def r1353 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1353 : ¬ Reader r1353 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1353

def r1354 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1354 : ¬ Reader r1354 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1354

def r1355 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1355 : ¬ Reader r1355 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1355

def r1356 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1356 : ¬ Reader r1356 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1356

def r1357 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1357 : ¬ Reader r1357 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1357

def r1358 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1358 : ¬ Reader r1358 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1358

def r1359 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1359 : ¬ Reader r1359 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1359

def r1360 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1360 : ¬ Reader r1360 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1360

def r1361 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.lam (.var 3))))) (.var 1))
theorem reject1361 : ¬ Reader r1361 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))))) [(.lam (.lam (.lam (.var 3))))] [(.lam (.lam (.lam (.var 3)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1361

def r1362 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 1))
theorem reject1362 : ¬ Reader r1362 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1362

def r1363 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.var 1))
theorem reject1363 : ¬ Reader r1363 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1363

def r1364 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1364 : ¬ Reader r1364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.lam (.var 3))) (.lam (.lam (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1364

def r1365 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 1)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1365 : ¬ Reader r1365 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.lam (.lam (.lam (.var 3)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1365

def r1366 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1366 : ¬ Reader r1366 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))))) [(.lam (.lam (.lam (.var 3))))] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1366

def r1367 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1367 : ¬ Reader r1367 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1367

def r1368 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject1368 : ¬ Reader r1368 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1368

def r1369 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject1369 : ¬ Reader r1369 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1369

def r1370 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1370 : ¬ Reader r1370 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1370

def r1371 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1371 : ¬ Reader r1371 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1371

def r1372 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1372 : ¬ Reader r1372 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1372

def r1373 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject1373 : ¬ Reader r1373 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4))))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1373

def r1374 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1374 : ¬ Reader r1374 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1374

def r1375 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1))
theorem reject1375 : ¬ Reader r1375 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1375

def r1376 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 3))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1376 : ¬ Reader r1376 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1376

def r1377 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1377 : ¬ Reader r1377 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1377

def r1378 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1378 : ¬ Reader r1378 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1378

def r1379 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1379 : ¬ Reader r1379 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1379

def r1380 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1380 : ¬ Reader r1380 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1380

def r1381 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1381 : ¬ Reader r1381 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1381

def r1382 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1382 : ¬ Reader r1382 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1382

def r1383 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1383 : ¬ Reader r1383 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1383

def r1384 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1384 : ¬ Reader r1384 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1384

def r1385 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1385 : ¬ Reader r1385 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1385

def r1386 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1386 : ¬ Reader r1386 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1386

def r1387 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1387 : ¬ Reader r1387 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1387

def r1388 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1388 : ¬ Reader r1388 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1388

def r1389 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1389 : ¬ Reader r1389 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1389

def r1390 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1390 : ¬ Reader r1390 := by
  exact replay_loop true [] 2 5 (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1390

def r1391 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1391 : ¬ Reader r1391 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1391

def r1392 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1392 : ¬ Reader r1392 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 4))) (.lam (.app (.app (.var 0) (.var 0)) (.var 4))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1392

def r1393 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.var 3))))) (.var 1))
theorem reject1393 : ¬ Reader r1393 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.lam (.var 4)))) (.lam (.lam (.lam (.var 4))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.lam (.var 4)))) (.lam (.lam (.lam (.var 4)))))))) [(.app (.lam (.lam (.lam (.var 3)))) (.lam (.lam (.lam (.var 3)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1393

def r1394 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.lam (.var 3))))) (.var 1))
theorem reject1394 : ¬ Reader r1394 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))) (.lam (.lam (.lam (.var 4)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))) (.lam (.lam (.lam (.var 4))))))) [(.lam (.lam (.lam (.var 3)))), (.lam (.lam (.lam (.var 3))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1394

def r1395 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.var 1))
theorem reject1395 : ¬ Reader r1395 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) [(.lam (.lam (.var 2)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1395

def r1396 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 2))))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1396 : ¬ Reader r1396 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.var 3))) (.lam (.lam (.lam (.var 4))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.var 3))) (.lam (.lam (.lam (.var 4)))))))) [(.app (.lam (.lam (.var 2))) (.lam (.lam (.lam (.var 3)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1396

def r1397 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 2)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1397 : ¬ Reader r1397 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.lam (.lam (.lam (.var 4)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.lam (.lam (.lam (.var 4))))))) [(.lam (.lam (.var 2))), (.lam (.lam (.lam (.var 3))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1397

def r1398 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 1))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1398 : ¬ Reader r1398 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))) (.lam (.lam (.var 3))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 4))))) (.lam (.lam (.var 3)))))) [(.lam (.lam (.lam (.var 3)))), (.lam (.lam (.var 2)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1398

def r1399 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1399 : ¬ Reader r1399 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1399

def r1400 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1400 : ¬ Reader r1400 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 3))) (.lam (.lam (.var 3))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.lam (.lam (.var 4))) (.lam (.lam (.var 4))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1400

def r1401 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1401 : ¬ Reader r1401 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0)) (.lam (.lam (.var 4))))))) [(.lam (.lam (.var 2)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1401

def r1402 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject1402 : ¬ Reader r1402 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1402

def r1403 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject1403 : ¬ Reader r1403 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1403

def r1404 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1))
theorem reject1404 : ¬ Reader r1404 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1404

def r1405 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject1405 : ¬ Reader r1405 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1405

def r1406 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1406 : ¬ Reader r1406 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1406

def r1407 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1))
theorem reject1407 : ¬ Reader r1407 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1407

def r1408 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1408 : ¬ Reader r1408 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1408

def r1409 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject1409 : ¬ Reader r1409 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1409

def r1410 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1410 : ¬ Reader r1410 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1410

def r1411 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1411 : ¬ Reader r1411 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1411

def r1412 : Term := (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1412 : ¬ Reader r1412 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1412

def r1413 : Term := (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1413 : ¬ Reader r1413 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1413

def r1414 : Term := (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1414 : ¬ Reader r1414 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1414

def r1415 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1415 : ¬ Reader r1415 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1415

def r1416 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1416 : ¬ Reader r1416 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1416

def r1417 : Term := (.app (.app (.app (.lam (.app (.lam (.lam (.lam (.app (.var 2) (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1417 : ¬ Reader r1417 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1417

def r1418 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1418 : ¬ Reader r1418 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1418

def r1419 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1419 : ¬ Reader r1419 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1419

def r1420 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1420 : ¬ Reader r1420 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1420

def r1421 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject1421 : ¬ Reader r1421 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1421

def r1422 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1422 : ¬ Reader r1422 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1422

def r1423 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject1423 : ¬ Reader r1423 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 0)))) (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1423

def r1424 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject1424 : ¬ Reader r1424 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 0)))) (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1424

def r1425 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject1425 : ¬ Reader r1425 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1425

def r1426 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject1426 : ¬ Reader r1426 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1426

def r1427 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1427 : ¬ Reader r1427 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1427

def r1428 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1428 : ¬ Reader r1428 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1428

def r1429 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1429 : ¬ Reader r1429 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1429

def r1430 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1430 : ¬ Reader r1430 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1430

def r1431 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1431 : ¬ Reader r1431 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1431

def r1432 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1432 : ¬ Reader r1432 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1432

def r1433 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1433 : ¬ Reader r1433 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1433

def r1434 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1434 : ¬ Reader r1434 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1434

def r1435 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1435 : ¬ Reader r1435 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1435

def r1436 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1436 : ¬ Reader r1436 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1436

def r1437 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1437 : ¬ Reader r1437 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1437

def r1438 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1438 : ¬ Reader r1438 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1438

def r1439 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1439 : ¬ Reader r1439 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1439

def r1440 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1440 : ¬ Reader r1440 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1440

def r1441 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject1441 : ¬ Reader r1441 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1441

def r1442 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject1442 : ¬ Reader r1442 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1442

def r1443 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject1443 : ¬ Reader r1443 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1443

def r1444 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject1444 : ¬ Reader r1444 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1444

def r1445 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject1445 : ¬ Reader r1445 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1445

def r1446 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject1446 : ¬ Reader r1446 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1446

def r1447 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1))
theorem reject1447 : ¬ Reader r1447 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1447

def r1448 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0)))
theorem reject1448 : ¬ Reader r1448 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1448

def r1449 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))
theorem reject1449 : ¬ Reader r1449 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1449

def r1450 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 1))
theorem reject1450 : ¬ Reader r1450 := by
  exact replay_loop true [] 2 3 (.app (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) [(.lam (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1450

def r1451 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1))
theorem reject1451 : ¬ Reader r1451 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1451

def r1452 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1))
theorem reject1452 : ¬ Reader r1452 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))))) [(.lam (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1452

def r1453 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1))
theorem reject1453 : ¬ Reader r1453 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 0)))) [(.lam (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1453

def r1454 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject1454 : ¬ Reader r1454 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 1)))) (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1454

def r1455 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject1455 : ¬ Reader r1455 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.lam (.var 1)))) (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1455

def r1456 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject1456 : ¬ Reader r1456 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1456

def r1457 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject1457 : ¬ Reader r1457 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1457

def r1458 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1458 : ¬ Reader r1458 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1458

def r1459 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject1459 : ¬ Reader r1459 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1459

def r1460 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1460 : ¬ Reader r1460 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.var 1) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1460

def r1461 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject1461 : ¬ Reader r1461 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 1))))), (.app (.var 0) (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1461

def r1462 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1462 : ¬ Reader r1462 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.lam (.var 0)))))] [(.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1462

def r1463 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1463 : ¬ Reader r1463 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1463

def r1464 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1464 : ¬ Reader r1464 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1464

def r1465 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1465 : ¬ Reader r1465 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1465

def r1466 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1466 : ¬ Reader r1466 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1466

def r1467 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1467 : ¬ Reader r1467 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1467

def r1468 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1468 : ¬ Reader r1468 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1468

def r1469 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1469 : ¬ Reader r1469 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1469

def r1470 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1470 : ¬ Reader r1470 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1470

def r1471 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1471 : ¬ Reader r1471 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1471

def r1472 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1472 : ¬ Reader r1472 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1472

def r1473 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1473 : ¬ Reader r1473 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1473

def r1474 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1474 : ¬ Reader r1474 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1474

def r1475 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1475 : ¬ Reader r1475 := by
  exact replay_loop true [] 2 3 (.app (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1475

def r1476 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1476 : ¬ Reader r1476 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1476

def r1477 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1477 : ¬ Reader r1477 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1477

def r1478 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1478 : ¬ Reader r1478 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1478

def r1479 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject1479 : ¬ Reader r1479 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1479

def r1480 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject1480 : ¬ Reader r1480 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1480

def r1481 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1481 : ¬ Reader r1481 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1481

def r1482 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1482 : ¬ Reader r1482 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1482

def r1483 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1483 : ¬ Reader r1483 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1483

def r1484 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1484 : ¬ Reader r1484 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1484

def r1485 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1485 : ¬ Reader r1485 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1485

def r1486 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1486 : ¬ Reader r1486 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1486

def r1487 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1487 : ¬ Reader r1487 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1487

def r1488 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1488 : ¬ Reader r1488 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1488

def r1489 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1489 : ¬ Reader r1489 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1489

def r1490 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1490 : ¬ Reader r1490 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1490

def r1491 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0))
theorem reject1491 : ¬ Reader r1491 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1491

def r1492 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1))
theorem reject1492 : ¬ Reader r1492 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1492

def r1493 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject1493 : ¬ Reader r1493 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1493

def r1494 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject1494 : ¬ Reader r1494 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.var 1) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1494

def r1495 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject1495 : ¬ Reader r1495 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.lam (.var 0))))), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1495

def r1496 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject1496 : ¬ Reader r1496 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1496

def r1497 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject1497 : ¬ Reader r1497 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1497

def r1498 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject1498 : ¬ Reader r1498 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1498

def r1499 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject1499 : ¬ Reader r1499 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1499
end Blc.HandlerLet.NestedExceptions04
