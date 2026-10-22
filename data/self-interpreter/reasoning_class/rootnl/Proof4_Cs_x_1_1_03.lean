import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_03
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r1412 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1412 : ¬ Reader r1412 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1412

def r1414 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1414 : ¬ Reader r1414 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1414

def r1415 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1415 : ¬ Reader r1415 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1415

def r1416 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1416 : ¬ Reader r1416 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1416

def r1418 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1418 : ¬ Reader r1418 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1418

def r1420 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1420 : ¬ Reader r1420 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1420

def r1421 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1421 : ¬ Reader r1421 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1421

def r1422 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1422 : ¬ Reader r1422 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1422

def r1424 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1424 : ¬ Reader r1424 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1424

def r1426 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1426 : ¬ Reader r1426 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1426

def r1427 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1427 : ¬ Reader r1427 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1427

def r1428 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1428 : ¬ Reader r1428 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1428

def r1430 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1430 : ¬ Reader r1430 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1430

def r1432 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1432 : ¬ Reader r1432 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1432

def r1433 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1433 : ¬ Reader r1433 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1433

def r1434 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1434 : ¬ Reader r1434 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1434

def r1436 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1436 : ¬ Reader r1436 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1436

def r1438 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1438 : ¬ Reader r1438 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1438

def r1439 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1439 : ¬ Reader r1439 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1439

def r1440 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1440 : ¬ Reader r1440 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1440

def r1442 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1442 : ¬ Reader r1442 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1442

def r1444 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1444 : ¬ Reader r1444 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1444

def r1445 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1445 : ¬ Reader r1445 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1445

def r1446 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1446 : ¬ Reader r1446 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1446

def r1448 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1448 : ¬ Reader r1448 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1448

def r1450 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1450 : ¬ Reader r1450 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1450

def r1451 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1451 : ¬ Reader r1451 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1451

def r1452 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1452 : ¬ Reader r1452 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1452

def r1454 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1454 : ¬ Reader r1454 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1454

def r1456 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1456 : ¬ Reader r1456 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1456

def r1457 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1457 : ¬ Reader r1457 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1457

def r1458 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1458 : ¬ Reader r1458 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1458

def r1460 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1460 : ¬ Reader r1460 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1460

def r1462 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1462 : ¬ Reader r1462 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1462

def r1463 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1463 : ¬ Reader r1463 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1463

def r1464 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1464 : ¬ Reader r1464 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1464

def r1466 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1466 : ¬ Reader r1466 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1466

def r1468 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1468 : ¬ Reader r1468 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1468

def r1469 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1469 : ¬ Reader r1469 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1469

def r1470 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1470 : ¬ Reader r1470 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1470

def r1472 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1472 : ¬ Reader r1472 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1472

def r1474 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1474 : ¬ Reader r1474 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1474

def r1475 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1475 : ¬ Reader r1475 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1475

def r1476 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1476 : ¬ Reader r1476 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1476

def r1478 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1478 : ¬ Reader r1478 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1478

def r1480 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1480 : ¬ Reader r1480 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1480

def r1481 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1481 : ¬ Reader r1481 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1481

def r1482 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1482 : ¬ Reader r1482 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))))] [(.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1482

def r1484 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1484 : ¬ Reader r1484 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1484

def r1486 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
theorem reject1486 : ¬ Reader r1486 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)))) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1486

def r1487 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1))
theorem reject1487 : ¬ Reader r1487 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1487

def r1488 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1488 : ¬ Reader r1488 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1488

def r1489 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1489 : ¬ Reader r1489 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1489

def r1490 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1490 : ¬ Reader r1490 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1490

def r1491 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1491 : ¬ Reader r1491 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1491

def r1492 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1492 : ¬ Reader r1492 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1492

def r1493 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1493 : ¬ Reader r1493 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 1)))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1493

def r1494 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1494 : ¬ Reader r1494 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1494

def r1495 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1495 : ¬ Reader r1495 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1495

def r1496 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1496 : ¬ Reader r1496 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1496

def r1497 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1497 : ¬ Reader r1497 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1497

def r1498 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1498 : ¬ Reader r1498 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1498

def r1499 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1499 : ¬ Reader r1499 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1499

def r1500 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1500 : ¬ Reader r1500 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1500

def r1501 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1501 : ¬ Reader r1501 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))), (.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1501

def r1502 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1502 : ¬ Reader r1502 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1502

def r1503 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1503 : ¬ Reader r1503 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1503

def r1504 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1504 : ¬ Reader r1504 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1504

def r1505 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1505 : ¬ Reader r1505 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 1)))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1505

def r1506 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1506 : ¬ Reader r1506 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1506

def r1507 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1507 : ¬ Reader r1507 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1507

def r1508 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1508 : ¬ Reader r1508 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1508

def r1509 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1509 : ¬ Reader r1509 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1509

def r1510 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1510 : ¬ Reader r1510 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1510

def r1511 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1511 : ¬ Reader r1511 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1511

def r1512 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1512 : ¬ Reader r1512 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1512

def r1513 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1513 : ¬ Reader r1513 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1513

def r1514 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1514 : ¬ Reader r1514 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1514

def r1515 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1515 : ¬ Reader r1515 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1515

def r1516 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1516 : ¬ Reader r1516 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1516

def r1517 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1517 : ¬ Reader r1517 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 1)))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1517

def r1518 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1518 : ¬ Reader r1518 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1518

def r1519 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1519 : ¬ Reader r1519 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1519

def r1520 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1520 : ¬ Reader r1520 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1520

def r1521 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1521 : ¬ Reader r1521 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1521

def r1522 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1522 : ¬ Reader r1522 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1522

def r1523 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1523 : ¬ Reader r1523 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1523

def r1524 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1524 : ¬ Reader r1524 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1524

def r1525 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1525 : ¬ Reader r1525 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1525

def r1526 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1526 : ¬ Reader r1526 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1526

def r1527 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1527 : ¬ Reader r1527 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1527

def r1528 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1528 : ¬ Reader r1528 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1528

def r1529 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1529 : ¬ Reader r1529 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1529

def r1530 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1530 : ¬ Reader r1530 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1530

def r1531 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1531 : ¬ Reader r1531 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1531

def r1532 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1532 : ¬ Reader r1532 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1532

def r1533 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1533 : ¬ Reader r1533 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1533

def r1534 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1534 : ¬ Reader r1534 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1534

def r1535 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1535 : ¬ Reader r1535 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 1)))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1535

def r1536 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1536 : ¬ Reader r1536 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1536

def r1537 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1537 : ¬ Reader r1537 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1537

def r1538 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1538 : ¬ Reader r1538 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1538

def r1539 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1539 : ¬ Reader r1539 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1539

def r1540 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1540 : ¬ Reader r1540 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1540

def r1541 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1541 : ¬ Reader r1541 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1541

def r1542 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1542 : ¬ Reader r1542 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1542

def r1543 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1543 : ¬ Reader r1543 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))), (.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1543

def r1544 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1544 : ¬ Reader r1544 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1544

def r1545 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1545 : ¬ Reader r1545 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 0))), (.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1545

def r1546 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1546 : ¬ Reader r1546 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1546

def r1547 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1547 : ¬ Reader r1547 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 1)))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1547

def r1548 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1548 : ¬ Reader r1548 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1548

def r1549 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1549 : ¬ Reader r1549 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1549

def r1550 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1550 : ¬ Reader r1550 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1550

def r1551 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1551 : ¬ Reader r1551 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1551

def r1552 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1552 : ¬ Reader r1552 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1552

def r1553 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1553 : ¬ Reader r1553 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1553

def r1554 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1554 : ¬ Reader r1554 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1554

def r1555 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1555 : ¬ Reader r1555 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1555

def r1556 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1556 : ¬ Reader r1556 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1556

def r1557 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1557 : ¬ Reader r1557 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1557

def r1558 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1558 : ¬ Reader r1558 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1558

def r1559 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1559 : ¬ Reader r1559 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1559

def r1560 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1560 : ¬ Reader r1560 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1560

def r1561 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1561 : ¬ Reader r1561 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1561

def r1562 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1562 : ¬ Reader r1562 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1562

def r1563 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1563 : ¬ Reader r1563 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1563

def r1564 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1564 : ¬ Reader r1564 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1564

def r1565 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1565 : ¬ Reader r1565 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1565

def r1566 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1566 : ¬ Reader r1566 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1566

def r1567 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1567 : ¬ Reader r1567 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1567

def r1568 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1568 : ¬ Reader r1568 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1568

def r1569 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1569 : ¬ Reader r1569 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1569

def r1570 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1570 : ¬ Reader r1570 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1570

def r1571 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1571 : ¬ Reader r1571 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1571

def r1572 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1572 : ¬ Reader r1572 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1572

def r1573 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1573 : ¬ Reader r1573 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1573

def r1574 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1574 : ¬ Reader r1574 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1574

def r1575 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1575 : ¬ Reader r1575 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1575

def r1576 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1576 : ¬ Reader r1576 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1576

def r1577 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1577 : ¬ Reader r1577 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1577

def r1578 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1578 : ¬ Reader r1578 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1578

def r1579 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1579 : ¬ Reader r1579 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1579

def r1580 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1580 : ¬ Reader r1580 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1580

def r1581 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1581 : ¬ Reader r1581 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1581

def r1582 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1582 : ¬ Reader r1582 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1582

def r1583 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1583 : ¬ Reader r1583 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1583

def r1584 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1584 : ¬ Reader r1584 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1584

def r1585 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1585 : ¬ Reader r1585 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1585

def r1586 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1586 : ¬ Reader r1586 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1586

def r1587 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1587 : ¬ Reader r1587 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1587

def r1588 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1588 : ¬ Reader r1588 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1588

def r1589 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1589 : ¬ Reader r1589 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1589

def r1590 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1590 : ¬ Reader r1590 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1590

def r1591 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1591 : ¬ Reader r1591 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1591

def r1592 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1592 : ¬ Reader r1592 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1592

def r1593 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1593 : ¬ Reader r1593 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1593

def r1594 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1594 : ¬ Reader r1594 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1594

def r1595 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1595 : ¬ Reader r1595 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1595

def r1596 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1596 : ¬ Reader r1596 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1596

def r1597 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1597 : ¬ Reader r1597 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1597

def r1598 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1598 : ¬ Reader r1598 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1598

def r1599 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1599 : ¬ Reader r1599 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1599

def r1600 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1600 : ¬ Reader r1600 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1600

def r1601 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1601 : ¬ Reader r1601 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1601

def r1602 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1602 : ¬ Reader r1602 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1602

def r1603 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1603 : ¬ Reader r1603 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1603

def r1604 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1604 : ¬ Reader r1604 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1604

def r1605 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1605 : ¬ Reader r1605 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1605

def r1606 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1606 : ¬ Reader r1606 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1606

def r1607 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1607 : ¬ Reader r1607 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1607

def r1608 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1608 : ¬ Reader r1608 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1608

def r1609 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1609 : ¬ Reader r1609 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1609

def r1610 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1610 : ¬ Reader r1610 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1610

def r1611 : Term := (.app (.app (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1611 : ¬ Reader r1611 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1611

def r1612 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1612 : ¬ Reader r1612 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1612

def r1613 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1613 : ¬ Reader r1613 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1613

def r1614 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1614 : ¬ Reader r1614 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1614

def r1615 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1615 : ¬ Reader r1615 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1615

def r1616 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1616 : ¬ Reader r1616 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1616

def r1617 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1617 : ¬ Reader r1617 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1617

def r1618 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1618 : ¬ Reader r1618 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1618

def r1619 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1619 : ¬ Reader r1619 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1619

def r1620 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1620 : ¬ Reader r1620 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1620

def r1621 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1621 : ¬ Reader r1621 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1621

def r1622 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1622 : ¬ Reader r1622 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1622

def r1623 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1623 : ¬ Reader r1623 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1623

def r1624 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1624 : ¬ Reader r1624 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1624

def r1625 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1625 : ¬ Reader r1625 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1625

def r1626 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1626 : ¬ Reader r1626 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1626

def r1627 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1627 : ¬ Reader r1627 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1627

def r1628 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1628 : ¬ Reader r1628 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1628

def r1629 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1629 : ¬ Reader r1629 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1629

def r1630 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1630 : ¬ Reader r1630 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1630

def r1631 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1631 : ¬ Reader r1631 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1631

def r1632 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1632 : ¬ Reader r1632 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1632

def r1633 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1633 : ¬ Reader r1633 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1633

def r1634 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1634 : ¬ Reader r1634 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1634

def r1635 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1635 : ¬ Reader r1635 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1635

def r1636 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1636 : ¬ Reader r1636 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1636

def r1637 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1637 : ¬ Reader r1637 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1637

def r1638 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1638 : ¬ Reader r1638 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1638

def r1639 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1639 : ¬ Reader r1639 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1639

def r1640 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1640 : ¬ Reader r1640 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1640

def r1641 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1641 : ¬ Reader r1641 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1641

def r1642 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1642 : ¬ Reader r1642 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1642

def r1643 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1643 : ¬ Reader r1643 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1643

def r1644 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1644 : ¬ Reader r1644 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1644

def r1645 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1645 : ¬ Reader r1645 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1645

def r1646 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1646 : ¬ Reader r1646 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1646

def r1647 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1647 : ¬ Reader r1647 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1647

def r1648 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1648 : ¬ Reader r1648 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1648

def r1649 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1649 : ¬ Reader r1649 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1649

def r1650 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1650 : ¬ Reader r1650 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1650

def r1651 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1651 : ¬ Reader r1651 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1651

def r1652 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1652 : ¬ Reader r1652 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1652

def r1653 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1653 : ¬ Reader r1653 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1653

def r1654 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1654 : ¬ Reader r1654 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1654

def r1655 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1655 : ¬ Reader r1655 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1655

def r1656 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1656 : ¬ Reader r1656 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1656

def r1657 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1657 : ¬ Reader r1657 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1657

def r1658 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1658 : ¬ Reader r1658 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1658

def r1659 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1659 : ¬ Reader r1659 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1659

def r1660 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1660 : ¬ Reader r1660 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1660

def r1661 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1661 : ¬ Reader r1661 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1661

def r1662 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1662 : ¬ Reader r1662 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1662

def r1663 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1663 : ¬ Reader r1663 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1663

def r1664 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1664 : ¬ Reader r1664 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1664

def r1665 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1665 : ¬ Reader r1665 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1665

def r1666 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1666 : ¬ Reader r1666 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1666

def r1667 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1667 : ¬ Reader r1667 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1667

def r1668 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1668 : ¬ Reader r1668 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1668

def r1669 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1669 : ¬ Reader r1669 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1669

def r1670 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1670 : ¬ Reader r1670 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1670

def r1671 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1671 : ¬ Reader r1671 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1671

def r1672 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1672 : ¬ Reader r1672 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1672

def r1673 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1673 : ¬ Reader r1673 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1673

def r1674 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1674 : ¬ Reader r1674 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1674

def r1675 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1675 : ¬ Reader r1675 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1675

def r1676 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1676 : ¬ Reader r1676 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1676

def r1677 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1677 : ¬ Reader r1677 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1677

def r1678 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1678 : ¬ Reader r1678 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1678

def r1679 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1679 : ¬ Reader r1679 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1679

def r1680 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1680 : ¬ Reader r1680 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1680

def r1681 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1681 : ¬ Reader r1681 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1681

def r1682 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1682 : ¬ Reader r1682 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1682

def r1683 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1683 : ¬ Reader r1683 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1683

def r1684 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1684 : ¬ Reader r1684 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1684

def r1685 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1685 : ¬ Reader r1685 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1685

def r1686 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1686 : ¬ Reader r1686 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1686

def r1687 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1687 : ¬ Reader r1687 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1687

def r1688 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1688 : ¬ Reader r1688 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1688

def r1689 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1689 : ¬ Reader r1689 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1689

def r1690 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1690 : ¬ Reader r1690 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1690

def r1691 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1691 : ¬ Reader r1691 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1691

def r1692 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1692 : ¬ Reader r1692 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1692

def r1693 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1693 : ¬ Reader r1693 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1693

def r1694 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1694 : ¬ Reader r1694 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1694

def r1695 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1695 : ¬ Reader r1695 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1695

def r1696 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1696 : ¬ Reader r1696 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1696

def r1697 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1697 : ¬ Reader r1697 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1697

def r1698 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1698 : ¬ Reader r1698 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1698

def r1699 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1699 : ¬ Reader r1699 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1699

def r1700 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1700 : ¬ Reader r1700 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1700

def r1701 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1701 : ¬ Reader r1701 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1701

def r1702 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1702 : ¬ Reader r1702 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1702

def r1703 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1703 : ¬ Reader r1703 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1703

def r1704 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1704 : ¬ Reader r1704 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1704

def r1705 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1705 : ¬ Reader r1705 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1705

def r1706 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1706 : ¬ Reader r1706 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1706

def r1707 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1707 : ¬ Reader r1707 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1707

def r1708 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1708 : ¬ Reader r1708 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1708

def r1709 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1709 : ¬ Reader r1709 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1709

def r1710 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1710 : ¬ Reader r1710 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1710

def r1711 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1711 : ¬ Reader r1711 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1711

def r1712 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1712 : ¬ Reader r1712 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1712

def r1713 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1713 : ¬ Reader r1713 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1713

def r1714 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1714 : ¬ Reader r1714 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1714

def r1715 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1715 : ¬ Reader r1715 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1715

def r1716 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1716 : ¬ Reader r1716 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1716

def r1717 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1717 : ¬ Reader r1717 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1717

def r1718 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1718 : ¬ Reader r1718 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1718

def r1719 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1719 : ¬ Reader r1719 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1719

def r1720 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1720 : ¬ Reader r1720 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1720

def r1721 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1721 : ¬ Reader r1721 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1721

def r1722 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1722 : ¬ Reader r1722 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1722

def r1723 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1723 : ¬ Reader r1723 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1723

def r1724 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1724 : ¬ Reader r1724 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1724

def r1725 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1725 : ¬ Reader r1725 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1725

def r1726 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1726 : ¬ Reader r1726 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1726

def r1727 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1727 : ¬ Reader r1727 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1727

def r1728 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1728 : ¬ Reader r1728 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1728

def r1729 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1729 : ¬ Reader r1729 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1729

def r1730 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1730 : ¬ Reader r1730 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1730

def r1731 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1731 : ¬ Reader r1731 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1731

def r1732 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1732 : ¬ Reader r1732 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1732

def r1733 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1733 : ¬ Reader r1733 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1733

def r1734 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1734 : ¬ Reader r1734 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1734

def r1735 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1735 : ¬ Reader r1735 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1735

def r1736 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1736 : ¬ Reader r1736 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1736

def r1737 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1737 : ¬ Reader r1737 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1737

def r1738 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1738 : ¬ Reader r1738 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1738

def r1739 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1739 : ¬ Reader r1739 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1739

def r1740 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1740 : ¬ Reader r1740 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1740

def r1741 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1741 : ¬ Reader r1741 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1741

def r1742 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1742 : ¬ Reader r1742 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1742

def r1743 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1743 : ¬ Reader r1743 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1743

def r1744 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1744 : ¬ Reader r1744 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1744

def r1745 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1745 : ¬ Reader r1745 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1745

def r1746 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1746 : ¬ Reader r1746 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1746

def r1747 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1747 : ¬ Reader r1747 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1747

def r1748 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1748 : ¬ Reader r1748 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1748

def r1749 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1749 : ¬ Reader r1749 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1749

def r1750 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1750 : ¬ Reader r1750 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1750

def r1751 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1751 : ¬ Reader r1751 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1751

def r1752 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1752 : ¬ Reader r1752 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1752

def r1753 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1753 : ¬ Reader r1753 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1753

def r1754 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1754 : ¬ Reader r1754 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1754

def r1755 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1755 : ¬ Reader r1755 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1755

def r1756 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1756 : ¬ Reader r1756 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1756

def r1757 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1757 : ¬ Reader r1757 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1757

def r1758 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1758 : ¬ Reader r1758 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1758

def r1759 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1759 : ¬ Reader r1759 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1759

def r1760 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1760 : ¬ Reader r1760 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1760

def r1761 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1761 : ¬ Reader r1761 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1761

def r1762 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1762 : ¬ Reader r1762 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1762

def r1763 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1763 : ¬ Reader r1763 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1763

def r1764 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1764 : ¬ Reader r1764 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1764

def r1765 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1765 : ¬ Reader r1765 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1765

def r1766 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1766 : ¬ Reader r1766 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1766

def r1767 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1767 : ¬ Reader r1767 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1767

def r1768 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1768 : ¬ Reader r1768 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1768

def r1769 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1769 : ¬ Reader r1769 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1769

def r1770 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1770 : ¬ Reader r1770 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1770

def r1771 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1771 : ¬ Reader r1771 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1771

def r1772 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1772 : ¬ Reader r1772 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1772

def r1773 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1773 : ¬ Reader r1773 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1773

def r1774 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1774 : ¬ Reader r1774 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1774

def r1775 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1775 : ¬ Reader r1775 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1775

def r1776 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1776 : ¬ Reader r1776 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1776

def r1777 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1777 : ¬ Reader r1777 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1777

def r1778 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1778 : ¬ Reader r1778 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1778

def r1779 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1779 : ¬ Reader r1779 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1779

def r1780 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1780 : ¬ Reader r1780 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1780

def r1781 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1781 : ¬ Reader r1781 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1781

def r1782 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1782 : ¬ Reader r1782 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1782

def r1783 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1783 : ¬ Reader r1783 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1783

def r1784 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1784 : ¬ Reader r1784 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1784

def r1785 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1785 : ¬ Reader r1785 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1785

def r1786 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1786 : ¬ Reader r1786 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1786

def r1787 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1787 : ¬ Reader r1787 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1787

def r1788 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1788 : ¬ Reader r1788 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1788

def r1789 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1789 : ¬ Reader r1789 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1789

def r1790 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1790 : ¬ Reader r1790 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1790

def r1791 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1791 : ¬ Reader r1791 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1791

def r1792 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1792 : ¬ Reader r1792 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1792

def r1793 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1793 : ¬ Reader r1793 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1793

def r1794 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1794 : ¬ Reader r1794 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1794

def r1795 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1795 : ¬ Reader r1795 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1795

def r1796 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1796 : ¬ Reader r1796 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1796

def r1797 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1797 : ¬ Reader r1797 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1797

def r1798 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1798 : ¬ Reader r1798 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1798

def r1799 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1799 : ¬ Reader r1799 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1799

def r1800 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1800 : ¬ Reader r1800 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1800

def r1801 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1801 : ¬ Reader r1801 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1801

def r1802 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1802 : ¬ Reader r1802 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1802

def r1803 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1803 : ¬ Reader r1803 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1803

def r1804 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1804 : ¬ Reader r1804 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1804

def r1805 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1805 : ¬ Reader r1805 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1805

def r1806 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1806 : ¬ Reader r1806 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1806

def r1807 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1807 : ¬ Reader r1807 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1807

def r1808 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1808 : ¬ Reader r1808 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1808

def r1809 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1809 : ¬ Reader r1809 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1809

def r1810 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1810 : ¬ Reader r1810 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1810

def r1811 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1811 : ¬ Reader r1811 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1811

def r1812 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1812 : ¬ Reader r1812 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1812

def r1813 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1813 : ¬ Reader r1813 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1813

def r1814 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1814 : ¬ Reader r1814 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1814

def r1815 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1815 : ¬ Reader r1815 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1815

def r1816 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1816 : ¬ Reader r1816 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1816

def r1817 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1817 : ¬ Reader r1817 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1817

def r1818 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1818 : ¬ Reader r1818 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1818

def r1819 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1819 : ¬ Reader r1819 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1819

def r1820 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1820 : ¬ Reader r1820 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1820

def r1821 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1821 : ¬ Reader r1821 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1821

def r1822 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1822 : ¬ Reader r1822 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1822

def r1823 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1823 : ¬ Reader r1823 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1823

def r1824 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1824 : ¬ Reader r1824 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1824

def r1825 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1825 : ¬ Reader r1825 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1825

def r1826 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1826 : ¬ Reader r1826 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1826

def r1827 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1827 : ¬ Reader r1827 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1827

def r1828 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1828 : ¬ Reader r1828 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1828

def r1829 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1829 : ¬ Reader r1829 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1829

def r1830 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1830 : ¬ Reader r1830 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1830

def r1831 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1831 : ¬ Reader r1831 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1831

def r1832 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1832 : ¬ Reader r1832 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1832

def r1833 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1833 : ¬ Reader r1833 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1833

def r1834 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1834 : ¬ Reader r1834 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1834

def r1835 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1835 : ¬ Reader r1835 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1835

def r1836 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1836 : ¬ Reader r1836 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1836

def r1837 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1837 : ¬ Reader r1837 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1837

def r1838 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1838 : ¬ Reader r1838 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1838

def r1839 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1839 : ¬ Reader r1839 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1839

def r1840 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1840 : ¬ Reader r1840 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1840

def r1841 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1841 : ¬ Reader r1841 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1841

def r1842 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1842 : ¬ Reader r1842 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1842

def r1843 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1843 : ¬ Reader r1843 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1843

def r1844 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1844 : ¬ Reader r1844 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1844

def r1845 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1845 : ¬ Reader r1845 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1845

def r1846 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1846 : ¬ Reader r1846 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1846

def r1847 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1847 : ¬ Reader r1847 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1847

def r1848 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1848 : ¬ Reader r1848 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1848

def r1849 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1849 : ¬ Reader r1849 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1849

def r1850 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1850 : ¬ Reader r1850 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1850

def r1851 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1851 : ¬ Reader r1851 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1851

def r1852 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1852 : ¬ Reader r1852 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1852

def r1853 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1853 : ¬ Reader r1853 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1853

def r1854 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1854 : ¬ Reader r1854 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1854

def r1855 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1855 : ¬ Reader r1855 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1855

def r1856 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1856 : ¬ Reader r1856 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1856

def r1857 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1857 : ¬ Reader r1857 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1857

def r1858 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1858 : ¬ Reader r1858 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1858

def r1859 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1859 : ¬ Reader r1859 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1859

def r1860 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1860 : ¬ Reader r1860 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1860

def r1861 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1861 : ¬ Reader r1861 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1861

def r1862 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1862 : ¬ Reader r1862 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1862

def r1863 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1863 : ¬ Reader r1863 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1863

def r1864 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1864 : ¬ Reader r1864 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1864

def r1865 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1865 : ¬ Reader r1865 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 0) (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1865

def r1866 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1866 : ¬ Reader r1866 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1866

def r1867 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1867 : ¬ Reader r1867 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1867

def r1868 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1868 : ¬ Reader r1868 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1868

def r1869 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1869 : ¬ Reader r1869 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1869

def r1870 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1870 : ¬ Reader r1870 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1870

def r1871 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1871 : ¬ Reader r1871 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1871

def r1872 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1872 : ¬ Reader r1872 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1872

def r1873 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1873 : ¬ Reader r1873 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1873

def r1874 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1874 : ¬ Reader r1874 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1874

def r1875 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1875 : ¬ Reader r1875 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1875

def r1876 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1876 : ¬ Reader r1876 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1876

def r1877 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1877 : ¬ Reader r1877 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1877

def r1878 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1878 : ¬ Reader r1878 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1878

def r1879 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1879 : ¬ Reader r1879 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1879

def r1880 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1880 : ¬ Reader r1880 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1880

def r1881 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1881 : ¬ Reader r1881 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1881

def r1882 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1882 : ¬ Reader r1882 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1882

def r1883 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1883 : ¬ Reader r1883 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1883

def r1884 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1884 : ¬ Reader r1884 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1884

def r1885 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1885 : ¬ Reader r1885 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1885

def r1886 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1886 : ¬ Reader r1886 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1886
end Blc.HandlerLet.Proof4_Cs_x_1_1_03
