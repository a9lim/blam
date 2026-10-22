import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_2_2_01
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r682 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject682 : ¬ Reader r682 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject682

def r683 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject683 : ¬ Reader r683 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject683

def r684 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject684 : ¬ Reader r684 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject684

def r685 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject685 : ¬ Reader r685 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject685

def r686 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject686 : ¬ Reader r686 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject686

def r687 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject687 : ¬ Reader r687 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject687

def r688 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject688 : ¬ Reader r688 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject688

def r689 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject689 : ¬ Reader r689 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject689

def r690 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject690 : ¬ Reader r690 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject690

def r691 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject691 : ¬ Reader r691 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject691

def r692 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject692 : ¬ Reader r692 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject692

def r693 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject693 : ¬ Reader r693 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject693

def r696 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject696 : ¬ Reader r696 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject696

def r697 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject697 : ¬ Reader r697 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject697

def r698 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject698 : ¬ Reader r698 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject698

def r699 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject699 : ¬ Reader r699 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject699

def r702 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject702 : ¬ Reader r702 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject702

def r703 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject703 : ¬ Reader r703 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject703

def r706 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject706 : ¬ Reader r706 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject706

def r707 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject707 : ¬ Reader r707 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject707

def r708 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject708 : ¬ Reader r708 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject708

def r709 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject709 : ¬ Reader r709 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject709

def r710 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject710 : ¬ Reader r710 := by
  exact replay_loop true [] 3 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject710

def r711 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject711 : ¬ Reader r711 := by
  exact replay_loop true [] 3 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject711

def r712 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject712 : ¬ Reader r712 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject712

def r713 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject713 : ¬ Reader r713 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject713

def r714 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject714 : ¬ Reader r714 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject714

def r715 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject715 : ¬ Reader r715 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject715

def r716 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject716 : ¬ Reader r716 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject716

def r717 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject717 : ¬ Reader r717 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject717

def r718 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject718 : ¬ Reader r718 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject718

def r719 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject719 : ¬ Reader r719 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject719

def r720 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject720 : ¬ Reader r720 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject720

def r721 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject721 : ¬ Reader r721 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject721

def r722 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject722 : ¬ Reader r722 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject722

def r723 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject723 : ¬ Reader r723 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject723

def r724 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject724 : ¬ Reader r724 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject724

def r725 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject725 : ¬ Reader r725 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject725

def r726 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject726 : ¬ Reader r726 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject726

def r727 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject727 : ¬ Reader r727 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject727

def r728 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject728 : ¬ Reader r728 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject728

def r729 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject729 : ¬ Reader r729 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject729

def r730 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject730 : ¬ Reader r730 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject730

def r731 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject731 : ¬ Reader r731 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject731

def r732 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject732 : ¬ Reader r732 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject732

def r733 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject733 : ¬ Reader r733 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject733

def r734 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject734 : ¬ Reader r734 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject734

def r735 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject735 : ¬ Reader r735 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject735

def r736 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject736 : ¬ Reader r736 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject737 : ¬ Reader r737 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject737

def r738 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject738 : ¬ Reader r738 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject738

def r739 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject739 : ¬ Reader r739 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject739

def r740 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject740 : ¬ Reader r740 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject740

def r741 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject741 : ¬ Reader r741 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject741

def r742 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject742 : ¬ Reader r742 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 1), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject742

def r743 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject743 : ¬ Reader r743 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.var 1)), (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject743

def r744 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 1)))
theorem reject744 : ¬ Reader r744 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject744

def r745 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject745 : ¬ Reader r745 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject745

def r746 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject746 : ¬ Reader r746 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject746

def r747 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject747 : ¬ Reader r747 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject747

def r748 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject748 : ¬ Reader r748 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject748

def r749 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject749 : ¬ Reader r749 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject749

def r752 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject752 : ¬ Reader r752 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject752

def r753 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject753 : ¬ Reader r753 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject753

def r754 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject754 : ¬ Reader r754 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject754

def r755 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject755 : ¬ Reader r755 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject755

def r758 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject758 : ¬ Reader r758 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject758

def r759 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject759 : ¬ Reader r759 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject759

def r760 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject760 : ¬ Reader r760 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject760

def r761 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject761 : ¬ Reader r761 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject761

def r772 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject772 : ¬ Reader r772 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject772

def r773 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject773 : ¬ Reader r773 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject773

def r774 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject774 : ¬ Reader r774 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject774

def r775 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject775 : ¬ Reader r775 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject775

def r776 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject776 : ¬ Reader r776 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject776

def r777 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject777 : ¬ Reader r777 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject777

def r778 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject778 : ¬ Reader r778 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject778

def r779 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject779 : ¬ Reader r779 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject779

def r780 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject780 : ¬ Reader r780 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject780

def r781 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject781 : ¬ Reader r781 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject781

def r782 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject782 : ¬ Reader r782 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject782

def r783 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject783 : ¬ Reader r783 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject783

def r784 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject784 : ¬ Reader r784 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject784

def r785 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject785 : ¬ Reader r785 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject785

def r786 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject786 : ¬ Reader r786 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject786

def r787 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject787 : ¬ Reader r787 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject787

def r788 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject788 : ¬ Reader r788 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject788

def r789 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject789 : ¬ Reader r789 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject789

def r790 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject790 : ¬ Reader r790 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject790

def r791 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject791 : ¬ Reader r791 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject791

def r792 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject792 : ¬ Reader r792 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject792

def r793 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject793 : ¬ Reader r793 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject793

def r794 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject794 : ¬ Reader r794 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject794

def r795 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject795 : ¬ Reader r795 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject795

def r796 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject796 : ¬ Reader r796 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject796

def r797 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject797 : ¬ Reader r797 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject797

def r798 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject798 : ¬ Reader r798 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject798

def r799 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject799 : ¬ Reader r799 := by
  exact replay_loop true [] 5 3 (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject799

def r800 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject800 : ¬ Reader r800 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.lam (.app (.var 1) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject800

def r801 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject801 : ¬ Reader r801 := by
  exact replay_loop true [] 1 3 (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.lam (.app (.var 1) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject801

def r802 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject802 : ¬ Reader r802 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject802

def r803 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject803 : ¬ Reader r803 := by
  exact replay_loop true [] 6 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject803

def r804 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject804 : ¬ Reader r804 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject804

def r805 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject805 : ¬ Reader r805 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject805

def r806 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject806 : ¬ Reader r806 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject806

def r807 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject807 : ¬ Reader r807 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject807

def r808 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject808 : ¬ Reader r808 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject808

def r809 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject809 : ¬ Reader r809 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject809

def r810 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)) (.var 0))
theorem reject810 : ¬ Reader r810 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject810

def r811 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 0)) (.var 1))
theorem reject811 : ¬ Reader r811 := by
  exact replay_loop true [] 9 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject811

def r812 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject812 : ¬ Reader r812 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject812

def r813 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject813 : ¬ Reader r813 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject813

def r814 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject814 : ¬ Reader r814 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject814

def r815 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject815 : ¬ Reader r815 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject815

def r816 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject816 : ¬ Reader r816 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject816

def r817 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject817 : ¬ Reader r817 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject817

def r818 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject818 : ¬ Reader r818 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject818

def r819 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject819 : ¬ Reader r819 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject819

def r820 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject820 : ¬ Reader r820 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject820

def r821 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject821 : ¬ Reader r821 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))))) [(.lam (.lam (.app (.var 1) (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject821

def r822 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject822 : ¬ Reader r822 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject822

def r823 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject823 : ¬ Reader r823 := by
  exact replay_loop true [] 4 7 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject823

def r824 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject824 : ¬ Reader r824 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject824

def r825 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject825 : ¬ Reader r825 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) [] [(.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject825

def r826 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))
theorem reject826 : ¬ Reader r826 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject826

def r827 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject827 : ¬ Reader r827 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject827

def r828 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject828 : ¬ Reader r828 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject828

def r829 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject829 : ¬ Reader r829 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject829

def r830 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject830 : ¬ Reader r830 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject830

def r831 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject831 : ¬ Reader r831 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject831

def r832 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject832 : ¬ Reader r832 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject832

def r833 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject833 : ¬ Reader r833 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) [(.lam (.app (.var 0) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject833

def r834 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject834 : ¬ Reader r834 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject834

def r835 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject835 : ¬ Reader r835 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject835

def r836 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject836 : ¬ Reader r836 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject836

def r837 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject837 : ¬ Reader r837 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject837

def r838 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject838 : ¬ Reader r838 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject838

def r839 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject839 : ¬ Reader r839 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject839

def r840 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject840 : ¬ Reader r840 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject840

def r841 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject841 : ¬ Reader r841 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject841

def r842 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject842 : ¬ Reader r842 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject842

def r843 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject843 : ¬ Reader r843 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject843

def r844 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject844 : ¬ Reader r844 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject844

def r845 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject845 : ¬ Reader r845 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject845

def r846 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject846 : ¬ Reader r846 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject846

def r847 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject847 : ¬ Reader r847 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject847

def r848 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject848 : ¬ Reader r848 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject848

def r849 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject849 : ¬ Reader r849 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject849

def r850 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject850 : ¬ Reader r850 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject850

def r851 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject851 : ¬ Reader r851 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject851

def r852 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject852 : ¬ Reader r852 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject852

def r853 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject853 : ¬ Reader r853 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject853

def r854 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject854 : ¬ Reader r854 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject854

def r855 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject855 : ¬ Reader r855 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject855

def r856 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject856 : ¬ Reader r856 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject856

def r857 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject857 : ¬ Reader r857 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject857

def r858 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject858 : ¬ Reader r858 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject858

def r859 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject859 : ¬ Reader r859 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject859

def r860 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject860 : ¬ Reader r860 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject860

def r861 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject861 : ¬ Reader r861 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject861

def r862 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject862 : ¬ Reader r862 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject862

def r863 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject863 : ¬ Reader r863 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject863

def r864 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject864 : ¬ Reader r864 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject864

def r865 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject865 : ¬ Reader r865 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject865

def r866 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 1)) (.var 0))
theorem reject866 : ¬ Reader r866 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject866

def r867 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 0)) (.var 1))
theorem reject867 : ¬ Reader r867 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject867

def r870 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject870 : ¬ Reader r870 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) [(.lam (.var 0)), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.lam (.var 0))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject870

def r871 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject871 : ¬ Reader r871 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) [(.lam (.var 0)), (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.lam (.var 0))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.lam (.var 0)))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject871

def r872 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject872 : ¬ Reader r872 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject872

def r873 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject873 : ¬ Reader r873 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject873

def r874 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject874 : ¬ Reader r874 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject874

def r875 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject875 : ¬ Reader r875 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject875

def r876 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject876 : ¬ Reader r876 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject876

def r877 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject877 : ¬ Reader r877 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject877

def r878 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject878 : ¬ Reader r878 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject878

def r879 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject879 : ¬ Reader r879 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject879

def r880 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject880 : ¬ Reader r880 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))) [(.lam (.var 0)), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject880

def r881 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject881 : ¬ Reader r881 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))) [(.lam (.var 0)), (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject881

def r882 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject882 : ¬ Reader r882 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject882

def r883 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject883 : ¬ Reader r883 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))))) [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject883

def r884 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject884 : ¬ Reader r884 := by
  exact replay_loop true [] 4 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject884

def r885 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject885 : ¬ Reader r885 := by
  exact replay_loop true [] 4 8 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject885

def r886 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject886 : ¬ Reader r886 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject886

def r887 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject887 : ¬ Reader r887 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject887

def r888 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject888 : ¬ Reader r888 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject888

def r889 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject889 : ¬ Reader r889 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject889

def r890 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject890 : ¬ Reader r890 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject890

def r891 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject891 : ¬ Reader r891 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))))] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject891

def r892 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject892 : ¬ Reader r892 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject892

def r893 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject893 : ¬ Reader r893 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject893

def r894 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject894 : ¬ Reader r894 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject894

def r895 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject895 : ¬ Reader r895 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject895

def r896 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject896 : ¬ Reader r896 := by
  exact replay_loop true [] 2 8 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject896

def r897 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject897 : ¬ Reader r897 := by
  exact replay_loop true [] 2 8 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject897

def r898 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject898 : ¬ Reader r898 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject898

def r899 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject899 : ¬ Reader r899 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject899

def r900 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject900 : ¬ Reader r900 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject900

def r901 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject901 : ¬ Reader r901 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject901

def r902 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject902 : ¬ Reader r902 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject902

def r903 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject903 : ¬ Reader r903 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject903

def r904 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject904 : ¬ Reader r904 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject904

def r905 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject905 : ¬ Reader r905 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject905

def r906 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject906 : ¬ Reader r906 := by
  exact replay_loop true [] 4 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject906

def r907 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject907 : ¬ Reader r907 := by
  exact replay_loop true [] 4 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject907

def r908 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject908 : ¬ Reader r908 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject908

def r909 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject909 : ¬ Reader r909 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject909

def r910 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject910 : ¬ Reader r910 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject910

def r911 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject911 : ¬ Reader r911 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0)))))] [(.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject911

def r912 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject912 : ¬ Reader r912 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject912

def r913 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject913 : ¬ Reader r913 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject913

def r914 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject914 : ¬ Reader r914 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject914

def r915 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject915 : ¬ Reader r915 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject915

def r916 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject916 : ¬ Reader r916 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject916

def r917 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject917 : ¬ Reader r917 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject917

def r918 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject918 : ¬ Reader r918 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject918

def r919 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject919 : ¬ Reader r919 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject919

def r920 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject920 : ¬ Reader r920 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject920

def r921 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject921 : ¬ Reader r921 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject921

def r922 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject922 : ¬ Reader r922 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject922

def r923 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject923 : ¬ Reader r923 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject923

def r924 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject924 : ¬ Reader r924 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject924

def r925 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject925 : ¬ Reader r925 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject925

def r926 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject926 : ¬ Reader r926 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject926

def r927 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject927 : ¬ Reader r927 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject927

def r928 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject928 : ¬ Reader r928 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject928

def r929 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject929 : ¬ Reader r929 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject929

def r930 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject930 : ¬ Reader r930 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject930

def r931 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject931 : ¬ Reader r931 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject931

def r932 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject932 : ¬ Reader r932 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject932

def r933 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject933 : ¬ Reader r933 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject933

def r934 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject934 : ¬ Reader r934 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject934

def r935 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject935 : ¬ Reader r935 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject935

def r936 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject936 : ¬ Reader r936 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject936

def r937 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject937 : ¬ Reader r937 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject937

def r938 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject938 : ¬ Reader r938 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject938

def r939 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject939 : ¬ Reader r939 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject939

def r940 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject940 : ¬ Reader r940 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject940

def r941 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject941 : ¬ Reader r941 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject941

def r948 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject948 : ¬ Reader r948 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject948

def r949 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject949 : ¬ Reader r949 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject949

def r950 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject950 : ¬ Reader r950 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject950

def r951 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject951 : ¬ Reader r951 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject951

def r952 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject952 : ¬ Reader r952 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject952

def r953 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject953 : ¬ Reader r953 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject953

def r956 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject956 : ¬ Reader r956 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject956

def r957 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject957 : ¬ Reader r957 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject957

def r958 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject958 : ¬ Reader r958 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject958

def r959 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject959 : ¬ Reader r959 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject959

def r960 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject960 : ¬ Reader r960 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject960

def r961 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject961 : ¬ Reader r961 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject961

def r964 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject964 : ¬ Reader r964 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject964

def r965 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject965 : ¬ Reader r965 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject965

def r966 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject966 : ¬ Reader r966 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject966

def r967 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject967 : ¬ Reader r967 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject967

def r968 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject968 : ¬ Reader r968 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject968

def r969 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject969 : ¬ Reader r969 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject969

def r970 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject970 : ¬ Reader r970 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject970

def r971 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject971 : ¬ Reader r971 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject971

def r972 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0))
theorem reject972 : ¬ Reader r972 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject972

def r973 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1))
theorem reject973 : ¬ Reader r973 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject973

def r974 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject974 : ¬ Reader r974 := by
  exact replay_loop true [] 9 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))] [(.lam (.var 0)), (.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject974

def r975 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject975 : ¬ Reader r975 := by
  exact replay_loop true [] 9 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject975

def r978 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject978 : ¬ Reader r978 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject978

def r979 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject979 : ¬ Reader r979 := by
  exact replay_loop true [] 3 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject979

def r980 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject980 : ¬ Reader r980 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject980

def r981 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject981 : ¬ Reader r981 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject981

def r982 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject982 : ¬ Reader r982 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject982

def r983 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject983 : ¬ Reader r983 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject983

def r984 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject984 : ¬ Reader r984 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject984

def r985 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject985 : ¬ Reader r985 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject985

def r986 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 1)) (.var 0))
theorem reject986 : ¬ Reader r986 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject986

def r987 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 0)) (.var 1))
theorem reject987 : ¬ Reader r987 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject987

def r988 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject988 : ¬ Reader r988 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject988

def r989 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject989 : ¬ Reader r989 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject989

def r990 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject990 : ¬ Reader r990 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject990

def r991 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject991 : ¬ Reader r991 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject991

def r992 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0))
theorem reject992 : ¬ Reader r992 := by
  exact replay_loop true [] 5 7 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.app (.app (.var 1) (.lam (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject992

def r993 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1))
theorem reject993 : ¬ Reader r993 := by
  exact replay_loop true [] 5 7 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject993

def r994 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject994 : ¬ Reader r994 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.lam (.var 0))) [(.app (.app (.lam (.var 0)) (.lam (.var 0))) (.lam (.var 0)))] [(.app (.app (.var 1) (.var 1)) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject994

def r995 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject995 : ¬ Reader r995 := by
  exact replay_loop true [] 5 4 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) (.lam (.var 0))) [(.app (.app (.lam (.var 0)) (.lam (.var 0))) (.lam (.var 0)))] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject995

def r996 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject996 : ¬ Reader r996 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject996

def r997 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject997 : ¬ Reader r997 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject997

def r998 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject998 : ¬ Reader r998 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) [(.app (.lam (.var 0)) (.lam (.var 0))), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject998

def r999 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject999 : ¬ Reader r999 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) [(.app (.lam (.var 0)) (.lam (.var 0))), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject999

def r1010 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1010 : ¬ Reader r1010 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1010

def r1011 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1011 : ¬ Reader r1011 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1011

def r1012 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1012 : ¬ Reader r1012 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1012

def r1013 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1013 : ¬ Reader r1013 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1013

def r1014 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1014 : ¬ Reader r1014 := by
  exact replay_loop true [] 10 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1014

def r1015 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1015 : ¬ Reader r1015 := by
  exact replay_loop true [] 10 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1015

def r1016 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))) (.var 1)) (.var 0))
theorem reject1016 : ¬ Reader r1016 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))) [(.lam (.var 0)), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1016

def r1017 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))) (.var 0)) (.var 1))
theorem reject1017 : ¬ Reader r1017 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))) [(.lam (.var 0)), (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1017

def r1018 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1018 : ¬ Reader r1018 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1018

def r1019 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1019 : ¬ Reader r1019 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1019

def r1020 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1020 : ¬ Reader r1020 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1020

def r1021 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1021 : ¬ Reader r1021 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1021

def r1022 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1022 : ¬ Reader r1022 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1022

def r1023 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1023 : ¬ Reader r1023 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1023

def r1024 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject1024 : ¬ Reader r1024 := by
  exact replay_loop true [] 10 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1024

def r1025 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject1025 : ¬ Reader r1025 := by
  exact replay_loop true [] 10 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1025

def r1026 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 1)) (.var 0))
theorem reject1026 : ¬ Reader r1026 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1026

def r1027 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 0)) (.var 1))
theorem reject1027 : ¬ Reader r1027 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1027

def r1028 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1028 : ¬ Reader r1028 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1028

def r1029 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1029 : ¬ Reader r1029 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1029

def r1030 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1030 : ¬ Reader r1030 := by
  exact replay_loop true [] 10 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1030

def r1031 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1031 : ¬ Reader r1031 := by
  exact replay_loop true [] 10 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1031

def r1032 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1032 : ¬ Reader r1032 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.lam (.var 0)), (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.app (.app (.var 1) (.lam (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1032

def r1033 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1033 : ¬ Reader r1033 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.lam (.var 0)), (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1033

def r1034 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1034 : ¬ Reader r1034 := by
  exact replay_loop true [] 7 7 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0)))) [(.lam (.var 0))] [(.lam (.var 0)), (.app (.app (.var 1) (.var 1)) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1034

def r1035 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1035 : ¬ Reader r1035 := by
  exact replay_loop true [] 7 7 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0)))) [(.lam (.var 0))] [(.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1035

def r1036 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1036 : ¬ Reader r1036 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) [(.app (.lam (.var 0)) (.lam (.var 0))), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1036

def r1037 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1037 : ¬ Reader r1037 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) [(.app (.lam (.var 0)) (.lam (.var 0))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1037

def r1044 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1044 : ¬ Reader r1044 := by
  exact replay_loop true [] 13 3 (.app (.app (.app (.lam (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1044

def r1045 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1))
theorem reject1045 : ¬ Reader r1045 := by
  exact replay_loop true [] 13 3 (.app (.app (.app (.lam (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1045

def r1046 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1046 : ¬ Reader r1046 := by
  exact replay_loop true [] 5 6 (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0)))) [(.app (.lam (.var 0)) (.lam (.var 0)))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1046

def r1047 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1047 : ¬ Reader r1047 := by
  exact replay_loop true [] 5 6 (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.var 0)))) [(.app (.lam (.var 0)) (.lam (.var 0)))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1047

def r1048 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1048 : ¬ Reader r1048 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1048

def r1049 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1049 : ¬ Reader r1049 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1049

def r1050 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1050 : ¬ Reader r1050 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1050

def r1051 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1051 : ¬ Reader r1051 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1051

def r1052 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1052 : ¬ Reader r1052 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1052

def r1053 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1053 : ¬ Reader r1053 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1053

def r1054 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1054 : ¬ Reader r1054 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1054

def r1055 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1055 : ¬ Reader r1055 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1055

def r1056 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject1056 : ¬ Reader r1056 := by
  exact replay_loop true [] 11 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1056

def r1057 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject1057 : ¬ Reader r1057 := by
  exact replay_loop true [] 11 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1057

def r1058 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 1)) (.var 0))
theorem reject1058 : ¬ Reader r1058 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1058

def r1059 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))) (.var 0)) (.var 1))
theorem reject1059 : ¬ Reader r1059 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1059

def r1060 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1060 : ¬ Reader r1060 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1060

def r1061 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1061 : ¬ Reader r1061 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1061

def r1062 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1062 : ¬ Reader r1062 := by
  exact replay_loop true [] 3 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1062

def r1063 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1063 : ¬ Reader r1063 := by
  exact replay_loop true [] 3 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1063

def r1066 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1066 : ¬ Reader r1066 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1066

def r1067 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1067 : ¬ Reader r1067 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1067

def r1068 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1068 : ¬ Reader r1068 := by
  exact replay_loop true [] 5 7 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0)))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1068

def r1069 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1069 : ¬ Reader r1069 := by
  exact replay_loop true [] 5 7 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0)))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1069

def r1070 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1070 : ¬ Reader r1070 := by
  exact replay_loop true [] 7 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1070

def r1071 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1071 : ¬ Reader r1071 := by
  exact replay_loop true [] 7 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))] [(.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1071

def r1074 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1074 : ¬ Reader r1074 := by
  exact replay_loop true [] 13 3 (.app (.app (.lam (.var 0)) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1074

def r1075 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject1075 : ¬ Reader r1075 := by
  exact replay_loop true [] 13 3 (.app (.app (.lam (.var 0)) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1075

def r1076 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1076 : ¬ Reader r1076 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1076

def r1077 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1077 : ¬ Reader r1077 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1077

def r1080 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1080 : ¬ Reader r1080 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.lam (.var 0)) (.lam (.var 0)))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1080

def r1081 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1081 : ¬ Reader r1081 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0)))) [(.app (.lam (.var 0)) (.lam (.var 0)))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1081

def r1082 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1082 : ¬ Reader r1082 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1082

def r1083 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1083 : ¬ Reader r1083 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1083

def r1084 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1084 : ¬ Reader r1084 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1084

def r1085 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1085 : ¬ Reader r1085 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1085

def r1086 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1086 : ¬ Reader r1086 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1086

def r1087 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1087 : ¬ Reader r1087 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1087

def r1088 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1088 : ¬ Reader r1088 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1088

def r1089 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1089 : ¬ Reader r1089 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1089

def r1092 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1092 : ¬ Reader r1092 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [] [(.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1092

def r1093 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1093 : ¬ Reader r1093 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1093

def r1096 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1096 : ¬ Reader r1096 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1096

def r1097 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1097 : ¬ Reader r1097 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1097

def r1098 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1098 : ¬ Reader r1098 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1098

def r1099 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1099 : ¬ Reader r1099 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1099

def r1100 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1100 : ¬ Reader r1100 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1100

def r1101 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1101 : ¬ Reader r1101 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1101

def r1102 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1102 : ¬ Reader r1102 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1102

def r1103 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1103 : ¬ Reader r1103 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1103

def r1104 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1104 : ¬ Reader r1104 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1104

def r1105 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1105 : ¬ Reader r1105 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1105

def r1106 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1106 : ¬ Reader r1106 := by
  exact replay_loop true [] 10 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1106

def r1107 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1107 : ¬ Reader r1107 := by
  exact replay_loop true [] 10 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1107

def r1108 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1108 : ¬ Reader r1108 := by
  exact replay_loop true [] 12 8 (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1108

def r1109 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1109 : ¬ Reader r1109 := by
  exact replay_loop true [] 12 8 (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1109

def r1112 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1112 : ¬ Reader r1112 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1112

def r1113 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1113 : ¬ Reader r1113 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1113

def r1130 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1130 : ¬ Reader r1130 := by
  exact replay_loop true [] 4 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1130

def r1131 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1131 : ¬ Reader r1131 := by
  exact replay_loop true [] 4 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1131

def r1132 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1132 : ¬ Reader r1132 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1132

def r1133 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1133 : ¬ Reader r1133 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1133

def r1134 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1134 : ¬ Reader r1134 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1134

def r1135 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1135 : ¬ Reader r1135 := by
  exact replay_loop true [] 6 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1135

def r1136 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1136 : ¬ Reader r1136 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1136

def r1137 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1137 : ¬ Reader r1137 := by
  exact replay_loop true [] 7 3 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1137

def r1138 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1138 : ¬ Reader r1138 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1138

def r1139 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1139 : ¬ Reader r1139 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1139

def r1140 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1140 : ¬ Reader r1140 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1140

def r1141 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1141 : ¬ Reader r1141 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1141

def r1142 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1142 : ¬ Reader r1142 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1142

def r1143 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1143 : ¬ Reader r1143 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1143

def r1144 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1144 : ¬ Reader r1144 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1144

def r1145 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1145 : ¬ Reader r1145 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1145

def r1146 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1146 : ¬ Reader r1146 := by
  exact replay_loop true [] 3 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1146

def r1147 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1147 : ¬ Reader r1147 := by
  exact replay_loop true [] 3 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1147

def r1148 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1148 : ¬ Reader r1148 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1148

def r1149 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1149 : ¬ Reader r1149 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1149

def r1150 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1150 : ¬ Reader r1150 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1150

def r1151 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1151 : ¬ Reader r1151 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1151

def r1152 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1152 : ¬ Reader r1152 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1152

def r1153 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1153 : ¬ Reader r1153 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1153

def r1154 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1154 : ¬ Reader r1154 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1154

def r1155 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1155 : ¬ Reader r1155 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1155

def r1156 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1156 : ¬ Reader r1156 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1156

def r1157 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1157 : ¬ Reader r1157 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))) [(.lam (.var 0))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1157

def r1158 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1158 : ¬ Reader r1158 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1158

def r1159 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1159 : ¬ Reader r1159 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1159

def r1160 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1160 : ¬ Reader r1160 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))))] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1160

def r1161 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1161 : ¬ Reader r1161 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))))) [(.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1161

def r1164 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1164 : ¬ Reader r1164 := by
  exact replay_loop true [] 5 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1164

def r1165 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1165 : ¬ Reader r1165 := by
  exact replay_loop true [] 5 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1165

def r1176 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1176 : ¬ Reader r1176 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1176

def r1177 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1177 : ¬ Reader r1177 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1177

def r1178 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1178 : ¬ Reader r1178 := by
  exact replay_loop true [] 1 7 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1178

def r1179 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1179 : ¬ Reader r1179 := by
  exact replay_loop true [] 1 7 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1179

def r1180 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1180 : ¬ Reader r1180 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1180

def r1181 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1181 : ¬ Reader r1181 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1181

def r1182 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1182 : ¬ Reader r1182 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1182

def r1183 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1183 : ¬ Reader r1183 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1183

def r1184 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1184 : ¬ Reader r1184 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1184

def r1185 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1185 : ¬ Reader r1185 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1185

def r1186 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1186 : ¬ Reader r1186 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1186

def r1187 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1187 : ¬ Reader r1187 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1187

def r1190 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1190 : ¬ Reader r1190 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1190

def r1191 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1191 : ¬ Reader r1191 := by
  exact replay_loop true [] 1 8 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1191

def r1200 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1200 : ¬ Reader r1200 := by
  exact replay_loop true [] 4 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1200

def r1201 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1201 : ¬ Reader r1201 := by
  exact replay_loop true [] 4 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1201

def r1202 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1202 : ¬ Reader r1202 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1202

def r1203 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1203 : ¬ Reader r1203 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1203

def r1204 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1204 : ¬ Reader r1204 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1204

def r1205 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1205 : ¬ Reader r1205 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1205

def r1206 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1206 : ¬ Reader r1206 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1206

def r1207 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1207 : ¬ Reader r1207 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1207

def r1208 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1208 : ¬ Reader r1208 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1208

def r1209 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1209 : ¬ Reader r1209 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1209

def r1220 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1220 : ¬ Reader r1220 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1220

def r1221 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1221 : ¬ Reader r1221 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1221

def r1222 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1222 : ¬ Reader r1222 := by
  exact replay_loop true [] 1 5 (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1222

def r1223 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1223 : ¬ Reader r1223 := by
  exact replay_loop true [] 1 5 (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1223

def r1224 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1224 : ¬ Reader r1224 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1224

def r1225 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1225 : ¬ Reader r1225 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1225

def r1226 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1226 : ¬ Reader r1226 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1226

def r1227 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1227 : ¬ Reader r1227 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1227

def r1228 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1228 : ¬ Reader r1228 := by
  exact replay_loop true [] 9 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1228

def r1229 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1229 : ¬ Reader r1229 := by
  exact replay_loop true [] 9 3 (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) [] [(.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1229

def r1234 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1234 : ¬ Reader r1234 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1234

def r1235 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1235 : ¬ Reader r1235 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1235

def r1236 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1236 : ¬ Reader r1236 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1236

def r1237 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1237 : ¬ Reader r1237 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1237

def r1238 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1238 : ¬ Reader r1238 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1238

def r1239 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1239 : ¬ Reader r1239 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1239

def r1246 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1246 : ¬ Reader r1246 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1246

def r1247 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1247 : ¬ Reader r1247 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1247

def r1248 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1248 : ¬ Reader r1248 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1248

def r1249 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1249 : ¬ Reader r1249 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1249

def r1250 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1250 : ¬ Reader r1250 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1250

def r1251 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1251 : ¬ Reader r1251 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1251
end Blc.HandlerLet.Proof4_Cs_x_2_2_01
