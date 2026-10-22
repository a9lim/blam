import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic22
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r8018 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8018 : ¬ Reader r8018 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8018

def r8019 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8019 : ¬ Reader r8019 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8019

def r8020 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8020 : ¬ Reader r8020 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8020

def r8021 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8021 : ¬ Reader r8021 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8021

def r8022 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8022 : ¬ Reader r8022 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8022

def r8023 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8023 : ¬ Reader r8023 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8023

def r8024 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8024 : ¬ Reader r8024 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8024

def r8025 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8025 : ¬ Reader r8025 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8025

def r8026 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8026 : ¬ Reader r8026 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8026

def r8027 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8027 : ¬ Reader r8027 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8027

def r8028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8028 : ¬ Reader r8028 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8028

def r8029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8029 : ¬ Reader r8029 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8029

def r8030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8030 : ¬ Reader r8030 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8030

def r8031 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8031 : ¬ Reader r8031 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8031

def r8032 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8032 : ¬ Reader r8032 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8032

def r8033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8033 : ¬ Reader r8033 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8033

def r8034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8034 : ¬ Reader r8034 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8034

def r8035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8035 : ¬ Reader r8035 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8035

def r8036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8036 : ¬ Reader r8036 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))) [(.lam (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8036

def r8043 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8043 : ¬ Reader r8043 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8043

def r8044 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8044 : ¬ Reader r8044 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8044

def r8045 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8045 : ¬ Reader r8045 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8045

def r8046 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8046 : ¬ Reader r8046 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8046

def r8047 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8047 : ¬ Reader r8047 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8047

def r8048 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8048 : ¬ Reader r8048 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))))))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8048

def r8067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8067 : ¬ Reader r8067 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8067

def r8068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8068 : ¬ Reader r8068 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8068

def r8069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8069 : ¬ Reader r8069 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8069

def r8070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8070 : ¬ Reader r8070 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8070

def r8071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8071 : ¬ Reader r8071 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8071

def r8072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8072 : ¬ Reader r8072 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8072

def r8073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8073 : ¬ Reader r8073 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8073

def r8074 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8074 : ¬ Reader r8074 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8074

def r8075 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8075 : ¬ Reader r8075 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8075

def r8076 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8076 : ¬ Reader r8076 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8076

def r8077 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8077 : ¬ Reader r8077 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8077

def r8078 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8078 : ¬ Reader r8078 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))))), (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))), (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8078

def r8085 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8085 : ¬ Reader r8085 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8085

def r8086 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8086 : ¬ Reader r8086 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8086

def r8087 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8087 : ¬ Reader r8087 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8087

def r8088 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8088 : ¬ Reader r8088 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8088

def r8089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8089 : ¬ Reader r8089 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8089

def r8090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8090 : ¬ Reader r8090 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))))] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8090

def r8097 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8097 : ¬ Reader r8097 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8097

def r8098 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8098 : ¬ Reader r8098 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8098

def r8099 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8099 : ¬ Reader r8099 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8099

def r8100 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8100 : ¬ Reader r8100 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8100

def r8101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8101 : ¬ Reader r8101 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8101

def r8102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8102 : ¬ Reader r8102 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8102

def r8103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8103 : ¬ Reader r8103 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8103

def r8104 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8104 : ¬ Reader r8104 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8104

def r8105 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8105 : ¬ Reader r8105 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8105

def r8106 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8106 : ¬ Reader r8106 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8106

def r8107 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8107 : ¬ Reader r8107 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8107

def r8108 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8108 : ¬ Reader r8108 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)))))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8108

def r8109 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8109 : ¬ Reader r8109 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8109

def r8110 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8110 : ¬ Reader r8110 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8110

def r8111 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8111 : ¬ Reader r8111 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8111

def r8112 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8112 : ¬ Reader r8112 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8112

def r8113 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8113 : ¬ Reader r8113 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8113

def r8114 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8114 : ¬ Reader r8114 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8114

def r8115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8115 : ¬ Reader r8115 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8115

def r8116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8116 : ¬ Reader r8116 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8116

def r8117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8117 : ¬ Reader r8117 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8117

def r8118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8118 : ¬ Reader r8118 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8118

def r8119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8119 : ¬ Reader r8119 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8119

def r8120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8120 : ¬ Reader r8120 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8120

def r8121 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8121 : ¬ Reader r8121 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8121

def r8122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8122 : ¬ Reader r8122 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8122

def r8123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8123 : ¬ Reader r8123 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8123

def r8124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8124 : ¬ Reader r8124 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8124

def r8125 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8125 : ¬ Reader r8125 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8125

def r8126 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8126 : ¬ Reader r8126 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8126

def r8127 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8127 : ¬ Reader r8127 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8127

def r8128 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8128 : ¬ Reader r8128 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8128

def r8129 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8129 : ¬ Reader r8129 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8129

def r8130 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8130 : ¬ Reader r8130 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8130

def r8131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8131 : ¬ Reader r8131 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8131

def r8132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8132 : ¬ Reader r8132 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8132

def r8133 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8133 : ¬ Reader r8133 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8133

def r8134 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8134 : ¬ Reader r8134 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8134

def r8135 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8135 : ¬ Reader r8135 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8135

def r8136 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8136 : ¬ Reader r8136 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8136

def r8137 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8137 : ¬ Reader r8137 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8137

def r8138 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8138 : ¬ Reader r8138 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8138

def r8139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8139 : ¬ Reader r8139 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8139

def r8140 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8140 : ¬ Reader r8140 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8140

def r8141 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8141 : ¬ Reader r8141 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8141

def r8142 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8142 : ¬ Reader r8142 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8142

def r8143 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8143 : ¬ Reader r8143 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8143

def r8144 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8144 : ¬ Reader r8144 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8144

def r8145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8145 : ¬ Reader r8145 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8145

def r8146 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8146 : ¬ Reader r8146 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8146

def r8147 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8147 : ¬ Reader r8147 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8147

def r8148 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8148 : ¬ Reader r8148 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8148

def r8149 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8149 : ¬ Reader r8149 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8149

def r8150 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8150 : ¬ Reader r8150 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8150

def r8157 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8157 : ¬ Reader r8157 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8157

def r8158 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8158 : ¬ Reader r8158 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8158

def r8159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8159 : ¬ Reader r8159 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8159

def r8160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8160 : ¬ Reader r8160 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8160

def r8161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8161 : ¬ Reader r8161 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8161

def r8162 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8162 : ¬ Reader r8162 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))))) [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8162

def r8163 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8163 : ¬ Reader r8163 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8163

def r8164 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8164 : ¬ Reader r8164 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8164

def r8165 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8165 : ¬ Reader r8165 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8165

def r8166 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8166 : ¬ Reader r8166 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8166

def r8167 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8167 : ¬ Reader r8167 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8167

def r8168 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8168 : ¬ Reader r8168 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8168

def r8169 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8169 : ¬ Reader r8169 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8169

def r8170 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8170 : ¬ Reader r8170 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8170

def r8171 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8171 : ¬ Reader r8171 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8171

def r8172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8172 : ¬ Reader r8172 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8172

def r8173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8173 : ¬ Reader r8173 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8173

def r8174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8174 : ¬ Reader r8174 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8174

def r8175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8175 : ¬ Reader r8175 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8175

def r8176 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8176 : ¬ Reader r8176 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8176

def r8177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8177 : ¬ Reader r8177 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8177

def r8178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8178 : ¬ Reader r8178 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8178

def r8179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8179 : ¬ Reader r8179 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8179

def r8180 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8180 : ¬ Reader r8180 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8180

def r8181 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8181 : ¬ Reader r8181 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8181

def r8182 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8182 : ¬ Reader r8182 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8182

def r8183 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8183 : ¬ Reader r8183 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8183

def r8184 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8184 : ¬ Reader r8184 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8184

def r8185 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8185 : ¬ Reader r8185 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8185

def r8186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8186 : ¬ Reader r8186 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8186

def r8187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 1))))
theorem reject8187 : ¬ Reader r8187 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8187

def r8188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject8188 : ¬ Reader r8188 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8188

def r8189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject8189 : ¬ Reader r8189 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8189

def r8190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject8190 : ¬ Reader r8190 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8190

def r8191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1))))
theorem reject8191 : ¬ Reader r8191 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8191

def r8192 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0)))
theorem reject8192 : ¬ Reader r8192 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8192

def r8193 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))
theorem reject8193 : ¬ Reader r8193 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8193

def r8194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))
theorem reject8194 : ¬ Reader r8194 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8194

def r8195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))
theorem reject8195 : ¬ Reader r8195 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8195

def r8196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))
theorem reject8196 : ¬ Reader r8196 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8196

def r8197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))
theorem reject8197 : ¬ Reader r8197 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 1) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8197

def r8198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))
theorem reject8198 : ¬ Reader r8198 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8198

def r8199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))
theorem reject8199 : ¬ Reader r8199 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8199

def r8200 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))
theorem reject8200 : ¬ Reader r8200 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8200

def r8201 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))
theorem reject8201 : ¬ Reader r8201 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8201

def r8202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))
theorem reject8202 : ¬ Reader r8202 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8202

def r8203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1))
theorem reject8203 : ¬ Reader r8203 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 1) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8203

def r8204 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1))
theorem reject8204 : ¬ Reader r8204 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.var 0) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8204

def r8205 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject8205 : ¬ Reader r8205 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8205

def r8206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject8206 : ¬ Reader r8206 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8206

def r8207 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject8207 : ¬ Reader r8207 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8207

def r8208 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject8208 : ¬ Reader r8208 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8208

def r8209 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject8209 : ¬ Reader r8209 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8209

def r8210 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject8210 : ¬ Reader r8210 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8210

def r8211 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject8211 : ¬ Reader r8211 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8211

def r8212 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject8212 : ¬ Reader r8212 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8212

def r8213 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8213 : ¬ Reader r8213 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8213

def r8214 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8214 : ¬ Reader r8214 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8214

def r8215 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject8215 : ¬ Reader r8215 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8215

def r8216 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject8216 : ¬ Reader r8216 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8216

def r8217 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject8217 : ¬ Reader r8217 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8217

def r8218 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject8218 : ¬ Reader r8218 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8218

def r8219 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject8219 : ¬ Reader r8219 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8219

def r8220 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject8220 : ¬ Reader r8220 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8220

def r8221 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject8221 : ¬ Reader r8221 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8221

def r8222 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject8222 : ¬ Reader r8222 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8222

def r8223 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject8223 : ¬ Reader r8223 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8223

def r8224 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject8224 : ¬ Reader r8224 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8224

def r8225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject8225 : ¬ Reader r8225 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8225

def r8226 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject8226 : ¬ Reader r8226 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8226

def r8227 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject8227 : ¬ Reader r8227 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8227

def r8228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject8228 : ¬ Reader r8228 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8228

def r8229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8229 : ¬ Reader r8229 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8229

def r8230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8230 : ¬ Reader r8230 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8230

def r8231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8231 : ¬ Reader r8231 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8231

def r8232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8232 : ¬ Reader r8232 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8232

def r8233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8233 : ¬ Reader r8233 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8233

def r8234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8234 : ¬ Reader r8234 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8234

def r8235 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8235 : ¬ Reader r8235 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8235

def r8236 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8236 : ¬ Reader r8236 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8236

def r8237 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8237 : ¬ Reader r8237 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8237

def r8238 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8238 : ¬ Reader r8238 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8238

def r8239 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8239 : ¬ Reader r8239 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8239

def r8240 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8240 : ¬ Reader r8240 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8240

def r8247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8247 : ¬ Reader r8247 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8247

def r8248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8248 : ¬ Reader r8248 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8248

def r8249 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8249 : ¬ Reader r8249 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8249

def r8250 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8250 : ¬ Reader r8250 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8250

def r8251 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8251 : ¬ Reader r8251 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8251

def r8252 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8252 : ¬ Reader r8252 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8252

def r8253 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8253 : ¬ Reader r8253 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8253

def r8254 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8254 : ¬ Reader r8254 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8254

def r8255 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8255 : ¬ Reader r8255 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8255

def r8256 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8256 : ¬ Reader r8256 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8256

def r8257 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8257 : ¬ Reader r8257 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8257

def r8258 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8258 : ¬ Reader r8258 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8258

def r8259 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8259 : ¬ Reader r8259 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8259

def r8260 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8260 : ¬ Reader r8260 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8260

def r8261 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8261 : ¬ Reader r8261 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8261

def r8262 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8262 : ¬ Reader r8262 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8262

def r8263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8263 : ¬ Reader r8263 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8263

def r8264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8264 : ¬ Reader r8264 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8264

def r8268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8268 : ¬ Reader r8268 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8268

def r8269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8269 : ¬ Reader r8269 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8269

def r8270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8270 : ¬ Reader r8270 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))))) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1))), (.lam (.lam (.var 1)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8270

def r8271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8271 : ¬ Reader r8271 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8271

def r8272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8272 : ¬ Reader r8272 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8272

def r8273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8273 : ¬ Reader r8273 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8273

def r8274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8274 : ¬ Reader r8274 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8274

def r8275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8275 : ¬ Reader r8275 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8275

def r8276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8276 : ¬ Reader r8276 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8276

def r8277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8277 : ¬ Reader r8277 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8277

def r8278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8278 : ¬ Reader r8278 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8278

def r8279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8279 : ¬ Reader r8279 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8279

def r8280 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8280 : ¬ Reader r8280 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8280

def r8281 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8281 : ¬ Reader r8281 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8281

def r8282 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8282 : ¬ Reader r8282 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8282

def r8283 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8283 : ¬ Reader r8283 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8283

def r8284 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8284 : ¬ Reader r8284 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8284

def r8285 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8285 : ¬ Reader r8285 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8285

def r8286 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8286 : ¬ Reader r8286 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8286

def r8287 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8287 : ¬ Reader r8287 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8287

def r8288 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8288 : ¬ Reader r8288 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8288

def r8289 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8289 : ¬ Reader r8289 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8289

def r8290 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8290 : ¬ Reader r8290 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8290

def r8291 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8291 : ¬ Reader r8291 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8291

def r8292 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8292 : ¬ Reader r8292 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8292

def r8293 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8293 : ¬ Reader r8293 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8293

def r8294 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8294 : ¬ Reader r8294 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8294

def r8295 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8295 : ¬ Reader r8295 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8295

def r8296 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8296 : ¬ Reader r8296 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8296

def r8297 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8297 : ¬ Reader r8297 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8297

def r8298 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8298 : ¬ Reader r8298 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8298

def r8299 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8299 : ¬ Reader r8299 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8299

def r8300 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8300 : ¬ Reader r8300 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8300

def r8301 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8301 : ¬ Reader r8301 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8301

def r8302 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8302 : ¬ Reader r8302 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8302

def r8303 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8303 : ¬ Reader r8303 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8303

def r8304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8304 : ¬ Reader r8304 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8304

def r8305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8305 : ¬ Reader r8305 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8305

def r8306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8306 : ¬ Reader r8306 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) [(.lam (.lam (.var 1)))] [(.lam (.lam (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8306

def r8310 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject8310 : ¬ Reader r8310 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8310

def r8311 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject8311 : ¬ Reader r8311 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8311

def r8312 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject8312 : ¬ Reader r8312 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8312

def r8313 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject8313 : ¬ Reader r8313 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8313

def r8314 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0))))
theorem reject8314 : ¬ Reader r8314 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8314

def r8315 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))
theorem reject8315 : ¬ Reader r8315 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8315

def r8316 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject8316 : ¬ Reader r8316 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8316

def r8317 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0)))
theorem reject8317 : ¬ Reader r8317 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8317

def r8318 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject8318 : ¬ Reader r8318 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8318

def r8319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 0)))))
theorem reject8319 : ¬ Reader r8319 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8319

def r8320 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject8320 : ¬ Reader r8320 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8320

def r8321 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject8321 : ¬ Reader r8321 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8321

def r8322 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))
theorem reject8322 : ¬ Reader r8322 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8322

def r8323 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))
theorem reject8323 : ¬ Reader r8323 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8323

def r8324 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject8324 : ¬ Reader r8324 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8324

def r8325 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject8325 : ¬ Reader r8325 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8325

def r8326 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject8326 : ¬ Reader r8326 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8326

def r8327 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject8327 : ¬ Reader r8327 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8327

def r8328 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8328 : ¬ Reader r8328 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8328

def r8329 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8329 : ¬ Reader r8329 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8329

def r8330 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8330 : ¬ Reader r8330 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8330

def r8331 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8331 : ¬ Reader r8331 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8331

def r8332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8332 : ¬ Reader r8332 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8332

def r8333 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8333 : ¬ Reader r8333 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8333

def r8334 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8334 : ¬ Reader r8334 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8334

def r8335 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8335 : ¬ Reader r8335 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8335

def r8336 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8336 : ¬ Reader r8336 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8336

def r8337 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8337 : ¬ Reader r8337 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8337

def r8338 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8338 : ¬ Reader r8338 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8338

def r8339 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8339 : ¬ Reader r8339 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8339

def r8340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8340 : ¬ Reader r8340 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8340

def r8341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8341 : ¬ Reader r8341 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8341

def r8342 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8342 : ¬ Reader r8342 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8342

def r8343 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8343 : ¬ Reader r8343 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8343

def r8344 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8344 : ¬ Reader r8344 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8344

def r8345 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8345 : ¬ Reader r8345 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8345

def r8346 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject8346 : ¬ Reader r8346 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8346

def r8347 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject8347 : ¬ Reader r8347 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8347

def r8348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject8348 : ¬ Reader r8348 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 1))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8348

def r8349 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8349 : ¬ Reader r8349 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8349

def r8350 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8350 : ¬ Reader r8350 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8350

def r8351 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8351 : ¬ Reader r8351 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8351

def r8352 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8352 : ¬ Reader r8352 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8352

def r8353 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8353 : ¬ Reader r8353 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8353

def r8354 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8354 : ¬ Reader r8354 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8354

def r8355 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8355 : ¬ Reader r8355 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8355

def r8356 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8356 : ¬ Reader r8356 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8356

def r8357 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8357 : ¬ Reader r8357 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8357

def r8358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject8358 : ¬ Reader r8358 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8358

def r8359 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject8359 : ¬ Reader r8359 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8359

def r8360 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject8360 : ¬ Reader r8360 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8360

def r8361 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject8361 : ¬ Reader r8361 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8361

def r8362 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject8362 : ¬ Reader r8362 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8362

def r8363 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
theorem reject8363 : ¬ Reader r8363 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8363

def r8364 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
theorem reject8364 : ¬ Reader r8364 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8364

def r8365 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
theorem reject8365 : ¬ Reader r8365 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8365

def r8366 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
theorem reject8366 : ¬ Reader r8366 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8366

def r8367 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
theorem reject8367 : ¬ Reader r8367 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8367

def r8368 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
theorem reject8368 : ¬ Reader r8368 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8368

def r8369 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
theorem reject8369 : ¬ Reader r8369 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8369

def r8370 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
theorem reject8370 : ¬ Reader r8370 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8370

def r8371 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
theorem reject8371 : ¬ Reader r8371 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8371
end Blc.HandlerLet.XBasic22
