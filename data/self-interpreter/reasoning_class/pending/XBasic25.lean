import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic25
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r9140 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject9140 : ¬ Reader r9140 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9140

def r9141 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject9141 : ¬ Reader r9141 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9141

def r9142 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject9142 : ¬ Reader r9142 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9142

def r9143 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject9143 : ¬ Reader r9143 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9143

def r9144 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject9144 : ¬ Reader r9144 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9144

def r9145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject9145 : ¬ Reader r9145 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9145

def r9146 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject9146 : ¬ Reader r9146 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9146

def r9147 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject9147 : ¬ Reader r9147 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9147

def r9148 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject9148 : ¬ Reader r9148 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9148

def r9149 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject9149 : ¬ Reader r9149 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9149

def r9150 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject9150 : ¬ Reader r9150 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9150

def r9151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject9151 : ¬ Reader r9151 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9151

def r9152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject9152 : ¬ Reader r9152 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9152

def r9153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject9153 : ¬ Reader r9153 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9153

def r9154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject9154 : ¬ Reader r9154 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9154

def r9155 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject9155 : ¬ Reader r9155 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9155

def r9156 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject9156 : ¬ Reader r9156 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9156

def r9157 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject9157 : ¬ Reader r9157 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9157

def r9158 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject9158 : ¬ Reader r9158 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9158

def r9159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject9159 : ¬ Reader r9159 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9159

def r9160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject9160 : ¬ Reader r9160 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9160

def r9161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject9161 : ¬ Reader r9161 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9161

def r9162 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject9162 : ¬ Reader r9162 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9162

def r9163 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject9163 : ¬ Reader r9163 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9163

def r9164 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject9164 : ¬ Reader r9164 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9164

def r9165 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject9165 : ¬ Reader r9165 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9165

def r9166 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject9166 : ¬ Reader r9166 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9166

def r9167 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject9167 : ¬ Reader r9167 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9167

def r9168 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject9168 : ¬ Reader r9168 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9168

def r9169 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject9169 : ¬ Reader r9169 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9169

def r9182 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9182 : ¬ Reader r9182 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9182

def r9183 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9183 : ¬ Reader r9183 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9183

def r9184 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9184 : ¬ Reader r9184 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9184

def r9185 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9185 : ¬ Reader r9185 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9185

def r9186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9186 : ¬ Reader r9186 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9186

def r9187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9187 : ¬ Reader r9187 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9187

def r9188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9188 : ¬ Reader r9188 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9188

def r9189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9189 : ¬ Reader r9189 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9189

def r9190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9190 : ¬ Reader r9190 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9190

def r9191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9191 : ¬ Reader r9191 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9191

def r9192 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9192 : ¬ Reader r9192 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9192

def r9193 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9193 : ¬ Reader r9193 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9193

def r9200 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9200 : ¬ Reader r9200 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9200

def r9201 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9201 : ¬ Reader r9201 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9201

def r9202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9202 : ¬ Reader r9202 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9202

def r9203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9203 : ¬ Reader r9203 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9203

def r9204 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9204 : ¬ Reader r9204 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9204

def r9205 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9205 : ¬ Reader r9205 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9205

def r9206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.app (.var 1) (.var 1))))
theorem reject9206 : ¬ Reader r9206 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.var 1) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9206

def r9207 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.lam (.app (.var 1) (.var 1)))) (.var 1))
theorem reject9207 : ¬ Reader r9207 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.lam (.app (.var 1) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9207

def r9208 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.app (.var 1) (.var 1))))
theorem reject9208 : ¬ Reader r9208 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.var 1) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9208

def r9209 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject9209 : ¬ Reader r9209 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9209

def r9210 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject9210 : ¬ Reader r9210 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9210

def r9211 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject9211 : ¬ Reader r9211 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9211

def r9212 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))
theorem reject9212 : ¬ Reader r9212 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9212

def r9213 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))
theorem reject9213 : ¬ Reader r9213 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9213

def r9214 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))
theorem reject9214 : ¬ Reader r9214 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9214

def r9215 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 0))
theorem reject9215 : ¬ Reader r9215 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9215

def r9216 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))
theorem reject9216 : ¬ Reader r9216 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9216

def r9217 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))
theorem reject9217 : ¬ Reader r9217 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 1) (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9217

def r9218 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))
theorem reject9218 : ¬ Reader r9218 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9218

def r9219 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))
theorem reject9219 : ¬ Reader r9219 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9219

def r9220 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))
theorem reject9220 : ¬ Reader r9220 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9220

def r9221 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))
theorem reject9221 : ¬ Reader r9221 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9221

def r9222 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))
theorem reject9222 : ¬ Reader r9222 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9222

def r9223 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))
theorem reject9223 : ¬ Reader r9223 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9223

def r9224 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.var 1)))
theorem reject9224 : ¬ Reader r9224 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9224

def r9225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))) (.var 1))
theorem reject9225 : ¬ Reader r9225 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9225

def r9226 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject9226 : ¬ Reader r9226 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9226

def r9227 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject9227 : ¬ Reader r9227 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9227

def r9228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1)) (.var 0))
theorem reject9228 : ¬ Reader r9228 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9228

def r9229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)) (.var 1))
theorem reject9229 : ¬ Reader r9229 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.app (.var 0) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9229

def r9230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject9230 : ¬ Reader r9230 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9230

def r9231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject9231 : ¬ Reader r9231 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9231

def r9232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1)) (.var 0))
theorem reject9232 : ¬ Reader r9232 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9232

def r9233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)) (.var 1))
theorem reject9233 : ¬ Reader r9233 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9233

def r9234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject9234 : ¬ Reader r9234 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9234

def r9235 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject9235 : ¬ Reader r9235 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.var 1))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9235

def r9236 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject9236 : ¬ Reader r9236 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9236

def r9237 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject9237 : ¬ Reader r9237 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9237

def r9238 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject9238 : ¬ Reader r9238 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9238

def r9239 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject9239 : ¬ Reader r9239 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9239

def r9240 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject9240 : ¬ Reader r9240 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9240

def r9241 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject9241 : ¬ Reader r9241 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9241

def r9242 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject9242 : ¬ Reader r9242 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9242

def r9243 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject9243 : ¬ Reader r9243 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9243

def r9244 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject9244 : ¬ Reader r9244 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9244

def r9245 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject9245 : ¬ Reader r9245 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9245

def r9246 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject9246 : ¬ Reader r9246 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9246

def r9247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject9247 : ¬ Reader r9247 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9247

def r9254 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject9254 : ¬ Reader r9254 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9254

def r9255 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject9255 : ¬ Reader r9255 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9255

def r9256 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject9256 : ¬ Reader r9256 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9256

def r9257 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject9257 : ¬ Reader r9257 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9257

def r9258 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject9258 : ¬ Reader r9258 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9258

def r9259 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject9259 : ¬ Reader r9259 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9259

def r9266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9266 : ¬ Reader r9266 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9266

def r9267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9267 : ¬ Reader r9267 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9267

def r9268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9268 : ¬ Reader r9268 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9268

def r9269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9269 : ¬ Reader r9269 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9269

def r9270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9270 : ¬ Reader r9270 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9270

def r9271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9271 : ¬ Reader r9271 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9271

def r9272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9272 : ¬ Reader r9272 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9272

def r9273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9273 : ¬ Reader r9273 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9273

def r9274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9274 : ¬ Reader r9274 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9274

def r9275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9275 : ¬ Reader r9275 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9275

def r9276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9276 : ¬ Reader r9276 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9276

def r9277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9277 : ¬ Reader r9277 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9277

def r9278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9278 : ¬ Reader r9278 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject9278

def r9281 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9281 : ¬ Reader r9281 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject9281

def r9282 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9282 : ¬ Reader r9282 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9282

def r9283 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9283 : ¬ Reader r9283 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9283

def r9284 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject9284 : ¬ Reader r9284 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9284

def r9285 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject9285 : ¬ Reader r9285 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9285

def r9286 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject9286 : ¬ Reader r9286 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9286

def r9287 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject9287 : ¬ Reader r9287 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9287

def r9288 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject9288 : ¬ Reader r9288 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9288

def r9289 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject9289 : ¬ Reader r9289 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9289

def r9290 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject9290 : ¬ Reader r9290 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9290

def r9291 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject9291 : ¬ Reader r9291 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9291

def r9292 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject9292 : ¬ Reader r9292 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9292

def r9293 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject9293 : ¬ Reader r9293 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9293

def r9294 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject9294 : ¬ Reader r9294 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9294

def r9295 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject9295 : ¬ Reader r9295 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9295

def r9296 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9296 : ¬ Reader r9296 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9296

def r9297 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9297 : ¬ Reader r9297 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9297

def r9298 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9298 : ¬ Reader r9298 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9298

def r9299 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9299 : ¬ Reader r9299 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9299

def r9300 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9300 : ¬ Reader r9300 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9300

def r9301 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9301 : ¬ Reader r9301 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9301

def r9302 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9302 : ¬ Reader r9302 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9302

def r9303 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9303 : ¬ Reader r9303 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 1)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9303

def r9304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9304 : ¬ Reader r9304 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9304

def r9305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9305 : ¬ Reader r9305 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9305

def r9306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9306 : ¬ Reader r9306 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9306

def r9307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9307 : ¬ Reader r9307 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9307

def r9308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject9308 : ¬ Reader r9308 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9308

def r9309 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject9309 : ¬ Reader r9309 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9309

def r9310 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1)) (.var 0))
theorem reject9310 : ¬ Reader r9310 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9310

def r9311 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))
theorem reject9311 : ¬ Reader r9311 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9311

def r9312 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))
theorem reject9312 : ¬ Reader r9312 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9312

def r9313 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))
theorem reject9313 : ¬ Reader r9313 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9313

def r9314 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject9314 : ¬ Reader r9314 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9314

def r9315 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))
theorem reject9315 : ¬ Reader r9315 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9315

def r9316 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 1))
theorem reject9316 : ¬ Reader r9316 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9316

def r9317 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))
theorem reject9317 : ¬ Reader r9317 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9317

def r9318 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject9318 : ¬ Reader r9318 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9318

def r9319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject9319 : ¬ Reader r9319 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9319

def r9320 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject9320 : ¬ Reader r9320 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9320

def r9321 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject9321 : ¬ Reader r9321 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9321

def r9322 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject9322 : ¬ Reader r9322 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9322

def r9323 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject9323 : ¬ Reader r9323 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9323

def r9324 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject9324 : ¬ Reader r9324 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9324

def r9325 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject9325 : ¬ Reader r9325 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9325

def r9326 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9326 : ¬ Reader r9326 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9326

def r9327 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9327 : ¬ Reader r9327 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9327

def r9328 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9328 : ¬ Reader r9328 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9328

def r9329 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9329 : ¬ Reader r9329 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9329

def r9330 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9330 : ¬ Reader r9330 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9330

def r9331 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9331 : ¬ Reader r9331 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9331

def r9332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9332 : ¬ Reader r9332 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject9332

def r9333 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9333 : ¬ Reader r9333 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9333

def r9334 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9334 : ¬ Reader r9334 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9334

def r9335 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9335 : ¬ Reader r9335 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject9335

def r9336 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9336 : ¬ Reader r9336 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9336

def r9337 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9337 : ¬ Reader r9337 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9337

def r9338 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9338 : ¬ Reader r9338 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9338

def r9339 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9339 : ¬ Reader r9339 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9339

def r9340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9340 : ¬ Reader r9340 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9340

def r9341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9341 : ¬ Reader r9341 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject9341

def r9342 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9342 : ¬ Reader r9342 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9342

def r9343 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9343 : ¬ Reader r9343 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9343

def r9344 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject9344 : ¬ Reader r9344 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9344

def r9345 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject9345 : ¬ Reader r9345 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9345

def r9346 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject9346 : ¬ Reader r9346 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9346

def r9347 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject9347 : ¬ Reader r9347 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9347

def r9348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject9348 : ¬ Reader r9348 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9348

def r9349 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
theorem reject9349 : ¬ Reader r9349 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9349

def r9350 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
theorem reject9350 : ¬ Reader r9350 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9350

def r9351 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject9351 : ¬ Reader r9351 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9351

def r9352 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject9352 : ¬ Reader r9352 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9352

def r9362 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject9362 : ¬ Reader r9362 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9362

def r9363 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject9363 : ¬ Reader r9363 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9363

def r9364 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject9364 : ¬ Reader r9364 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9364

def r9365 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject9365 : ¬ Reader r9365 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9365

def r9366 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject9366 : ¬ Reader r9366 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9366

def r9367 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
theorem reject9367 : ¬ Reader r9367 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9367

def r9368 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
theorem reject9368 : ¬ Reader r9368 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9368

def r9369 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject9369 : ¬ Reader r9369 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9369

def r9370 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject9370 : ¬ Reader r9370 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9370

def r9380 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject9380 : ¬ Reader r9380 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9380

def r9381 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject9381 : ¬ Reader r9381 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9381

def r9382 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject9382 : ¬ Reader r9382 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9382

def r9383 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject9383 : ¬ Reader r9383 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9383

def r9384 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject9384 : ¬ Reader r9384 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9384

def r9385 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
theorem reject9385 : ¬ Reader r9385 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9385

def r9386 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
theorem reject9386 : ¬ Reader r9386 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9386

def r9387 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject9387 : ¬ Reader r9387 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9387

def r9388 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject9388 : ¬ Reader r9388 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9388

def r9389 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject9389 : ¬ Reader r9389 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9389

def r9390 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject9390 : ¬ Reader r9390 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9390

def r9391 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject9391 : ¬ Reader r9391 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9391

def r9392 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject9392 : ¬ Reader r9392 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9392

def r9393 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject9393 : ¬ Reader r9393 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9393

def r9394 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
theorem reject9394 : ¬ Reader r9394 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 1)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9394

def r9395 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
theorem reject9395 : ¬ Reader r9395 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9395

def r9396 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject9396 : ¬ Reader r9396 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9396

def r9397 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject9397 : ¬ Reader r9397 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9397

def r9398 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject9398 : ¬ Reader r9398 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9398

def r9399 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject9399 : ¬ Reader r9399 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9399

def r9400 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.var 0))
theorem reject9400 : ¬ Reader r9400 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9400

def r9401 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.var 1))
theorem reject9401 : ¬ Reader r9401 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9401

def r9402 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9402 : ¬ Reader r9402 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9402

def r9403 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9403 : ¬ Reader r9403 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9403

def r9404 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9404 : ¬ Reader r9404 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9404

def r9405 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9405 : ¬ Reader r9405 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9405

def r9406 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9406 : ¬ Reader r9406 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9406

def r9407 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9407 : ¬ Reader r9407 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9407

def r9414 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9414 : ¬ Reader r9414 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9414

def r9415 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9415 : ¬ Reader r9415 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9415

def r9416 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9416 : ¬ Reader r9416 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9416

def r9417 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9417 : ¬ Reader r9417 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9417

def r9418 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9418 : ¬ Reader r9418 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9418

def r9419 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9419 : ¬ Reader r9419 := by
  exact replay_loop true [] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) (.var 0))))) (.var 0))))) (.var 0))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9419

def r9420 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9420 : ¬ Reader r9420 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9420

def r9421 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9421 : ¬ Reader r9421 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9421

def r9422 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9422 : ¬ Reader r9422 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9422

def r9423 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9423 : ¬ Reader r9423 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9423

def r9424 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9424 : ¬ Reader r9424 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9424

def r9425 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9425 : ¬ Reader r9425 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9425

def r9444 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9444 : ¬ Reader r9444 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9444

def r9445 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9445 : ¬ Reader r9445 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9445

def r9446 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9446 : ¬ Reader r9446 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9446

def r9447 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9447 : ¬ Reader r9447 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9447

def r9448 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9448 : ¬ Reader r9448 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9448

def r9449 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9449 : ¬ Reader r9449 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9449

def r9450 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9450 : ¬ Reader r9450 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9450

def r9451 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9451 : ¬ Reader r9451 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9451

def r9452 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9452 : ¬ Reader r9452 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9452

def r9453 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9453 : ¬ Reader r9453 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9453

def r9454 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9454 : ¬ Reader r9454 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9454

def r9455 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9455 : ¬ Reader r9455 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9455

def r9462 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9462 : ¬ Reader r9462 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9462

def r9463 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9463 : ¬ Reader r9463 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9463

def r9464 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9464 : ¬ Reader r9464 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9464

def r9465 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9465 : ¬ Reader r9465 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject9465

def r9466 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9466 : ¬ Reader r9466 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9466

def r9467 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9467 : ¬ Reader r9467 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9467

def r9471 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9471 : ¬ Reader r9471 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))] [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9471

def r9472 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9472 : ¬ Reader r9472 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))] [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9472

def r9473 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9473 : ¬ Reader r9473 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))))))] [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9473

def r9480 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9480 : ¬ Reader r9480 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.lam (.lam (.var 2)))))) [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.lam (.lam (.var 2)))))) (.lam (.lam (.var 2)))))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9480

def r9481 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9481 : ¬ Reader r9481 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.lam (.lam (.var 2)))))) [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.lam (.lam (.var 2)))))) (.lam (.lam (.var 2)))))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9481

def r9482 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9482 : ¬ Reader r9482 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.lam (.lam (.var 2)))))) [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))) (.lam (.lam (.var 2)))))) (.lam (.lam (.var 2)))))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9482

def r9489 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9489 : ¬ Reader r9489 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9489

def r9490 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9490 : ¬ Reader r9490 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9490

def r9491 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9491 : ¬ Reader r9491 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9491

def r9492 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9492 : ¬ Reader r9492 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9492

def r9493 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9493 : ¬ Reader r9493 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9493

def r9494 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9494 : ¬ Reader r9494 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9494

def r9495 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9495 : ¬ Reader r9495 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9495

def r9496 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9496 : ¬ Reader r9496 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9496

def r9497 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9497 : ¬ Reader r9497 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9497

def r9498 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9498 : ¬ Reader r9498 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9498

def r9499 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9499 : ¬ Reader r9499 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9499

def r9500 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9500 : ¬ Reader r9500 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9500

def r9501 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject9501 : ¬ Reader r9501 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9501

def r9502 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject9502 : ¬ Reader r9502 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9502

def r9503 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject9503 : ¬ Reader r9503 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9503

def r9504 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject9504 : ¬ Reader r9504 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9504

def r9505 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))
theorem reject9505 : ¬ Reader r9505 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9505

def r9506 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))
theorem reject9506 : ¬ Reader r9506 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9506

def r9507 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject9507 : ¬ Reader r9507 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9507

def r9508 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9508 : ¬ Reader r9508 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9508

def r9509 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject9509 : ¬ Reader r9509 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9509

def r9510 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))
theorem reject9510 : ¬ Reader r9510 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9510

def r9511 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject9511 : ¬ Reader r9511 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9511

def r9512 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject9512 : ¬ Reader r9512 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9512

def r9513 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0))
theorem reject9513 : ¬ Reader r9513 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9513

def r9514 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))
theorem reject9514 : ¬ Reader r9514 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9514

def r9515 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject9515 : ¬ Reader r9515 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9515

def r9516 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject9516 : ¬ Reader r9516 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9516

def r9517 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject9517 : ¬ Reader r9517 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9517

def r9518 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject9518 : ¬ Reader r9518 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9518

def r9519 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject9519 : ¬ Reader r9519 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9519

def r9520 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject9520 : ¬ Reader r9520 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9520

def r9521 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject9521 : ¬ Reader r9521 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9521

def r9522 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject9522 : ¬ Reader r9522 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9522

def r9523 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject9523 : ¬ Reader r9523 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9523

def r9524 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9524 : ¬ Reader r9524 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9524

def r9525 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9525 : ¬ Reader r9525 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9525

def r9526 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9526 : ¬ Reader r9526 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9526

def r9530 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject9530 : ¬ Reader r9530 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9530

def r9531 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject9531 : ¬ Reader r9531 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9531

def r9532 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject9532 : ¬ Reader r9532 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9532

def r9533 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject9533 : ¬ Reader r9533 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9533

def r9534 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.var 1)))
theorem reject9534 : ¬ Reader r9534 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9534

def r9535 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 1))
theorem reject9535 : ¬ Reader r9535 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9535

def r9536 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.lam (.var 2))))) (.var 1)) (.var 0))
theorem reject9536 : ¬ Reader r9536 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9536

def r9537 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.var 1))
theorem reject9537 : ¬ Reader r9537 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9537
end Blc.HandlerLet.XBasic25
