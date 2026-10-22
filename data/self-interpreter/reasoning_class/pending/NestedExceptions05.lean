import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.NestedExceptions05
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r1500 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1500 : ¬ Reader r1500 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1500

def r1501 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1501 : ¬ Reader r1501 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1501

def r1502 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1502 : ¬ Reader r1502 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1502

def r1503 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1503 : ¬ Reader r1503 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1503

def r1504 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1504 : ¬ Reader r1504 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1504

def r1505 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1505 : ¬ Reader r1505 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1505

def r1506 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1506 : ¬ Reader r1506 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1506

def r1507 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1507 : ¬ Reader r1507 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1507

def r1508 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1508 : ¬ Reader r1508 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1508

def r1509 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1509 : ¬ Reader r1509 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1509

def r1510 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1510 : ¬ Reader r1510 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1510

def r1511 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1511 : ¬ Reader r1511 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1511

def r1512 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1512 : ¬ Reader r1512 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1512

def r1513 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1513 : ¬ Reader r1513 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1513

def r1514 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1514 : ¬ Reader r1514 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1514

def r1515 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1515 : ¬ Reader r1515 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1515

def r1516 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1516 : ¬ Reader r1516 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1516

def r1517 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1517 : ¬ Reader r1517 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1517

def r1518 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1518 : ¬ Reader r1518 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1518

def r1519 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1519 : ¬ Reader r1519 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1519

def r1520 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1520 : ¬ Reader r1520 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1520

def r1521 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1521 : ¬ Reader r1521 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1521

def r1522 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1522 : ¬ Reader r1522 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1522

def r1523 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1523 : ¬ Reader r1523 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1523

def r1524 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1524 : ¬ Reader r1524 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1524

def r1525 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1525 : ¬ Reader r1525 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1525

def r1526 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1526 : ¬ Reader r1526 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1526

def r1527 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1527 : ¬ Reader r1527 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1527

def r1528 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1528 : ¬ Reader r1528 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1528

def r1529 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1529 : ¬ Reader r1529 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1529

def r1530 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1530 : ¬ Reader r1530 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1530

def r1531 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1531 : ¬ Reader r1531 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1531

def r1532 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1532 : ¬ Reader r1532 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1532

def r1533 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1533 : ¬ Reader r1533 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1533

def r1534 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1534 : ¬ Reader r1534 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1534

def r1535 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1535 : ¬ Reader r1535 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1535

def r1536 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1536 : ¬ Reader r1536 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1536

def r1537 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1537 : ¬ Reader r1537 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1537

def r1538 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1538 : ¬ Reader r1538 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1538

def r1539 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1539 : ¬ Reader r1539 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1539

def r1540 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1540 : ¬ Reader r1540 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1540

def r1541 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject1541 : ¬ Reader r1541 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 1))) (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1541

def r1542 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject1542 : ¬ Reader r1542 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1542

def r1543 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1543 : ¬ Reader r1543 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1543

def r1544 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1544 : ¬ Reader r1544 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1544

def r1545 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1545 : ¬ Reader r1545 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1545

def r1546 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1546 : ¬ Reader r1546 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1546

def r1547 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1547 : ¬ Reader r1547 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject1547

def r1548 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1548 : ¬ Reader r1548 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1548

def r1549 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1549 : ¬ Reader r1549 := by
  exact replay_loop true [] 2 5 (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1549

def r1550 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1550 : ¬ Reader r1550 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1550

def r1551 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject1551 : ¬ Reader r1551 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1551

def r1552 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject1552 : ¬ Reader r1552 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1552

def r1553 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1553 : ¬ Reader r1553 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1553

def r1554 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1554 : ¬ Reader r1554 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1554

def r1555 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1555 : ¬ Reader r1555 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1555

def r1556 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1556 : ¬ Reader r1556 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1556

def r1557 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1557 : ¬ Reader r1557 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1557

def r1558 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1558 : ¬ Reader r1558 := by
 exact RootcertLark.reject [[1, 1, 1, 1, 0], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1558

def r1559 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1559 : ¬ Reader r1559 := by
 exact RootcertLark.reject [[1, 1, 1, 1, 0], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1559

def r1560 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1560 : ¬ Reader r1560 := by
 exact RootcertLark.reject [[1, 1, 1, 1, 0], [1, 1, 1]] (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1560

def r1561 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1561 : ¬ Reader r1561 := by
 exact RootcertLark.reject [[1, 1, 1, 1, 0], [1, 1, 1]] (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject1561

def r1562 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject1562 : ¬ Reader r1562 := by
 intro hr
 have he : betaSteps [[1, 1, 1, 0], [1, 1]] (.app r1562 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.var 0)) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject1562

def r1563 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1563 : ¬ Reader r1563 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1]] [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1563

def r1564 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1564 : ¬ Reader r1564 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1]] [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1564

def r1565 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject1565 : ¬ Reader r1565 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1565

def r1566 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject1566 : ¬ Reader r1566 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1566

def r1567 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject1567 : ¬ Reader r1567 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1567

def r1568 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject1568 : ¬ Reader r1568 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0, 2, 2]] [[2], [2], [2, 0, 2, 2], [], [], [1], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))))] [(.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1568

def r1569 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject1569 : ¬ Reader r1569 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1569

def r1570 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject1570 : ¬ Reader r1570 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1570

def r1571 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject1571 : ¬ Reader r1571 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1571

def r1572 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject1572 : ¬ Reader r1572 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1]] [[1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2]] (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1572

def r1573 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1573 : ¬ Reader r1573 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1], [1, 1, 2], [1, 1, 2], [1, 1]] [[], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1573

def r1574 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1574 : ¬ Reader r1574 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1]] [[], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1574

def r1575 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1575 : ¬ Reader r1575 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1]] [[], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1575

def r1576 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1))
theorem reject1576 : ¬ Reader r1576 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2], [1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1576

def r1577 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1))
theorem reject1577 : ¬ Reader r1577 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 2], [1, 1, 2], [1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1577

def r1578 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1))
theorem reject1578 : ¬ Reader r1578 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1], [1, 1, 2], [1, 1, 2], [1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1578

def r1579 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1579 : ¬ Reader r1579 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1], [1, 1, 2], [1, 1, 2], [1, 1], [1, 1, 2], [1, 1, 2]] [] (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1579

def r1580 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject1580 : ¬ Reader r1580 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1580

def r1581 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject1581 : ¬ Reader r1581 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [1, 1, 1]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1581

def r1582 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))) (.var 1))
theorem reject1582 : ¬ Reader r1582 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 2], [1, 1, 2], [1, 1, 2, 0, 2], [1, 1, 2, 0, 2]] [] (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1582

def r1583 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject1583 : ¬ Reader r1583 := by
 exact mixed_reduct true [[1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1, 1, 2, 2, 0, 2], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] (.app (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1583

def r1584 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject1584 : ¬ Reader r1584 := by
 exact mixed_reduct true [[1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1, 1, 2, 2, 0, 2], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] (.app (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1584

def r1585 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject1585 : ¬ Reader r1585 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2]] [] (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1585

def r1586 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))))) (.var 1))
theorem reject1586 : ¬ Reader r1586 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 1], [1, 1, 2], [1, 1, 2], [1, 1]] [[1, 1], [1, 1]] (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1586

def r1587 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject1587 : ¬ Reader r1587 := by
 exact mixed_reduct true [[1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1587

def r1588 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject1588 : ¬ Reader r1588 := by
 exact mixed_reduct true [[1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1]] [[1, 1, 1, 2], [1, 1, 1, 2]] (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1588

def r1589 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1))
theorem reject1589 : ¬ Reader r1589 := by
 exact mixed_reduct true [[1, 1], [1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1589

def r1590 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1590 : ¬ Reader r1590 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1]] (.app r1590 Z) = some (spine (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have red := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact RootcertOwl.no_nf (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0))))) (.atom 0) (.app (.atom 0) (.atom 0)) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] ⟨_,red,zeroOut_normal⟩
#print axioms reject1590

def r1591 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1591 : ¬ Reader r1591 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1]] (.app r1591 Z) = some (spine (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have red := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact RootcertOwl.no_nf (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0))))) (.atom 0) (.app (.atom 0) (.atom 0)) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] ⟨_,red,zeroOut_normal⟩
#print axioms reject1591

def r1592 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1592 : ¬ Reader r1592 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1]] (.app r1592 Z) = some (spine (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0))))) [(.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have red := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact RootcertOwl.no_nf (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.atom 0) (.atom 0) [(.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] ⟨_,red,zeroOut_normal⟩
#print axioms reject1592

def r1593 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1593 : ¬ Reader r1593 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1]] (.app r1593 Z) = some (spine (.app (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0))))) [(.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have red := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact RootcertOwl.no_nf (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.atom 0) (.atom 0) [(.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] ⟨_,red,zeroOut_normal⟩
#print axioms reject1593

def r1594 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1594 : ¬ Reader r1594 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1594

def r1595 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1595 : ¬ Reader r1595 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1595

def r1596 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1596 : ¬ Reader r1596 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1596

def r1597 : Term := (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1597 : ¬ Reader r1597 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1597

def r1598 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1598 : ¬ Reader r1598 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1598

def r1599 : Term := (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1599 : ¬ Reader r1599 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1599

def r1600 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1600 : ¬ Reader r1600 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1600

def r1601 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem reject1601 : ¬ Reader r1601 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1601

def r1602 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))
theorem reject1602 : ¬ Reader r1602 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1602

def r1603 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.var 2))) (.var 0))
theorem reject1603 : ¬ Reader r1603 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.var 3)))))) [(.app (.lam (.var 2)) (.lam (.var 2)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1603

def r1604 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.var 2))) (.var 0))
theorem reject1604 : ¬ Reader r1604 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 3)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 3))))) [(.lam (.var 2)), (.lam (.var 2))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1604

def r1605 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1605 : ¬ Reader r1605 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1605

def r1606 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
theorem reject1606 : ¬ Reader r1606 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) [(.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1606

def r1607 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
theorem reject1607 : ¬ Reader r1607 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) [(.var 1)] [(.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1607

def r1608 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1608 : ¬ Reader r1608 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1608

def r1609 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1609 : ¬ Reader r1609 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1609

def r1610 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.lam (.var 2)))
theorem reject1610 : ¬ Reader r1610 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.lam (.var 3)) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.lam (.var 3)) (.lam (.var 3))))))) [(.app (.var 0) (.app (.lam (.var 2)) (.lam (.var 2))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1610

def r1611 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.var 2)))
theorem reject1611 : ¬ Reader r1611 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.var 3)) (.lam (.var 3))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.var 3)) (.lam (.var 3))) (.var 1))))) [(.app (.app (.lam (.var 2)) (.lam (.var 2))) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1611

def r1612 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.lam (.var 2)))
theorem reject1612 : ¬ Reader r1612 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.app (.var 1) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.app (.var 1) (.lam (.var 3))))))) [(.app (.lam (.var 2)) (.app (.var 0) (.lam (.var 2))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1612

def r1613 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.lam (.var 2)))
theorem reject1613 : ¬ Reader r1613 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.app (.lam (.var 3)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.app (.lam (.var 3)) (.var 1)))))) [(.app (.lam (.var 2)) (.app (.lam (.var 2)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1613

def r1614 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.lam (.var 2)))
theorem reject1614 : ¬ Reader r1614 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 3)))))) [(.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1614

def r1615 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.lam (.var 2)))
theorem reject1615 : ¬ Reader r1615 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.var 3)) (.var 1)) (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.var 3)) (.var 1)) (.lam (.var 3)))))) [(.app (.app (.lam (.var 2)) (.var 0)) (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1615

def r1616 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 1)))))) (.lam (.var 2)))
theorem reject1616 : ¬ Reader r1616 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.lam (.var 3)) (.lam (.var 3))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.lam (.var 3)) (.lam (.var 3)))))) [(.var 0), (.app (.lam (.var 2)) (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1616

def r1617 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.var 2)))
theorem reject1617 : ¬ Reader r1617 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.var 3)))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.var 3)))) (.var 1)))) [(.app (.lam (.var 2)) (.lam (.var 2))), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1617

def r1618 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (.var 2)))
theorem reject1618 : ¬ Reader r1618 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.app (.var 1) (.lam (.var 3))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.app (.var 1) (.lam (.var 3)))))) [(.lam (.var 2)), (.app (.var 0) (.lam (.var 2)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1618

def r1619 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (.var 2)))
theorem reject1619 : ¬ Reader r1619 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.app (.lam (.var 3)) (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.app (.lam (.var 3)) (.var 1))))) [(.lam (.var 2)), (.app (.lam (.var 2)) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1619

def r1620 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 1))))) (.lam (.var 2)))
theorem reject1620 : ¬ Reader r1620 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 3)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 3))))) [(.app (.var 0) (.lam (.var 2))), (.lam (.var 2))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1620

def r1621 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 1))))) (.lam (.var 2)))
theorem reject1621 : ¬ Reader r1621 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.var 1))) (.lam (.var 3)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.var 1))) (.lam (.var 3))))) [(.app (.lam (.var 2)) (.var 0)), (.lam (.var 2))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1621

def r1622 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 1))))) (.lam (.var 2)))
theorem reject1622 : ¬ Reader r1622 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))) (.lam (.var 3)))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))) (.lam (.var 3))))) [(.var 0), (.lam (.var 2)), (.lam (.var 2))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1622

def r1623 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 1))))) (.lam (.var 2)))
theorem reject1623 : ¬ Reader r1623 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)) (.lam (.var 3)))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)) (.lam (.var 3))))) [(.lam (.var 2)), (.var 0), (.lam (.var 2))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1623

def r1624 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 2))))) (.lam (.var 2)))
theorem reject1624 : ¬ Reader r1624 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 3))) (.var 1))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 3))) (.var 1)))) [(.lam (.var 2)), (.lam (.var 2)), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1624

def r1625 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1625 : ¬ Reader r1625 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1625

def r1626 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2)))) (.var 0))
theorem reject1626 : ¬ Reader r1626 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1626

def r1627 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0))
theorem reject1627 : ¬ Reader r1627 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 2))), (.lam (.app (.var 0) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1627

def r1628 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1628 : ¬ Reader r1628 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1628

def r1629 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.var 0))
theorem reject1629 : ¬ Reader r1629 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1629

def r1630 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2)))
theorem reject1630 : ¬ Reader r1630 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1630

def r1631 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.var 0))
theorem reject1631 : ¬ Reader r1631 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1631

def r1632 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2)))
theorem reject1632 : ¬ Reader r1632 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1632

def r1633 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))
theorem reject1633 : ¬ Reader r1633 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1633

def r1634 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0))
theorem reject1634 : ¬ Reader r1634 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1634

def r1635 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))
theorem reject1635 : ¬ Reader r1635 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1635

def r1636 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0))
theorem reject1636 : ¬ Reader r1636 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1636

def r1637 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0))
theorem reject1637 : ¬ Reader r1637 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1637

def r1638 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))
theorem reject1638 : ¬ Reader r1638 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1638

def r1639 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0))
theorem reject1639 : ¬ Reader r1639 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.var 0) (.var 3))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 3))) (.app (.var 0) (.var 0))))) [(.var 1)] [(.lam (.app (.var 0) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1639

def r1640 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.var 0))
theorem reject1640 : ¬ Reader r1640 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 3)))))) [(.lam (.app (.var 0) (.var 2)))] [(.lam (.app (.var 0) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1640

def r1641 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1641 : ¬ Reader r1641 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1641

def r1642 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1642 : ¬ Reader r1642 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1642

def r1643 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1643 : ¬ Reader r1643 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 2)) (.var 1))), (.lam (.app (.app (.var 0) (.var 2)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1643

def r1644 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1644 : ¬ Reader r1644 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.var 2))), (.lam (.app (.app (.var 0) (.var 1)) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1644

def r1645 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1645 : ¬ Reader r1645 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1645

def r1646 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1646 : ¬ Reader r1646 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1646

def r1647 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
theorem reject1647 : ¬ Reader r1647 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) [(.var 1), (.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1647

def r1648 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
theorem reject1648 : ¬ Reader r1648 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) [(.var 0), (.var 1)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1648

def r1649 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 1)))
theorem reject1649 : ¬ Reader r1649 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1649

def r1650 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 1)))
theorem reject1650 : ¬ Reader r1650 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1650

def r1651 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 2)))
theorem reject1651 : ¬ Reader r1651 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1651

def r1652 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 2)))
theorem reject1652 : ¬ Reader r1652 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1652

def r1653 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))
theorem reject1653 : ¬ Reader r1653 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1653

def r1654 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))
theorem reject1654 : ¬ Reader r1654 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1654

def r1655 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))
theorem reject1655 : ¬ Reader r1655 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1655

def r1656 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))
theorem reject1656 : ¬ Reader r1656 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))))] [(.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1656

def r1657 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem reject1657 : ¬ Reader r1657 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1657

def r1658 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem reject1658 : ¬ Reader r1658 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1658

def r1659 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem reject1659 : ¬ Reader r1659 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1659

def r1660 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem reject1660 : ¬ Reader r1660 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1660

def r1661 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1661 : ¬ Reader r1661 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1661

def r1662 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1662 : ¬ Reader r1662 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1662

def r1663 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1663 : ¬ Reader r1663 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1663

def r1664 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1664 : ¬ Reader r1664 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1664

def r1665 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1665 : ¬ Reader r1665 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1665

def r1666 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1666 : ¬ Reader r1666 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1666

def r1667 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1667 : ¬ Reader r1667 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1667

def r1668 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 0))
theorem reject1668 : ¬ Reader r1668 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 1), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 1)) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 1))) (.var 1))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1668

def r1669 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))
theorem reject1669 : ¬ Reader r1669 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))) (.var 1))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))))) (.var 1)) (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1669

def r1670 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)))) (.var 0))
theorem reject1670 : ¬ Reader r1670 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1670

def r1671 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))) (.var 0))
theorem reject1671 : ¬ Reader r1671 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0))))] [(.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1671

def r1672 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.var 0))
theorem reject1672 : ¬ Reader r1672 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3))))) [(.var 1)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1672

def r1673 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.app (.var 0) (.var 0)))
theorem reject1673 : ¬ Reader r1673 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1673

def r1674 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0)) (.var 0))
theorem reject1674 : ¬ Reader r1674 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1674

def r1675 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))
theorem reject1675 : ¬ Reader r1675 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1675

def r1676 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))
theorem reject1676 : ¬ Reader r1676 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1676

def r1677 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))
theorem reject1677 : ¬ Reader r1677 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1677

def r1678 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))
theorem reject1678 : ¬ Reader r1678 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1678

def r1679 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.var 1)))
theorem reject1679 : ¬ Reader r1679 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1679

def r1680 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2)))
theorem reject1680 : ¬ Reader r1680 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1680

def r1681 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.var 2))) (.var 0))
theorem reject1681 : ¬ Reader r1681 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.var 3)) (.lam (.var 3)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1681

def r1682 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 1)))) (.lam (.var 2))) (.var 0))
theorem reject1682 : ¬ Reader r1682 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) [(.lam (.var 2))] [(.lam (.lam (.var 3))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1682

def r1683 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 0))) (.lam (.var 2))) (.var 0))
theorem reject1683 : ¬ Reader r1683 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))) [(.lam (.lam (.var 3)))] [(.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1683

def r1684 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1684 : ¬ Reader r1684 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4))))))) [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1684

def r1685 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1685 : ¬ Reader r1685 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1685

def r1686 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))
theorem reject1686 : ¬ Reader r1686 := by
  exact replay_loop true [] 2 3 (.app (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1686

def r1687 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))
theorem reject1687 : ¬ Reader r1687 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1687

def r1688 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))
theorem reject1688 : ¬ Reader r1688 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.var 1)))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1688

def r1689 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.var 2))) (.lam (.var 1)))
theorem reject1689 : ¬ Reader r1689 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.var 3)))))) [(.app (.lam (.var 2)) (.lam (.var 2)))] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1689

def r1690 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.var 2))) (.lam (.var 1)))
theorem reject1690 : ¬ Reader r1690 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 3)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 3))))) [(.lam (.var 2)), (.lam (.var 2))] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1690

def r1691 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 1)))
theorem reject1691 : ¬ Reader r1691 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1691

def r1692 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 2)))
theorem reject1692 : ¬ Reader r1692 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1692

def r1693 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))
theorem reject1693 : ¬ Reader r1693 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 3)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1693

def r1694 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))
theorem reject1694 : ¬ Reader r1694 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 3))))) [(.var 1)] [(.app (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1694

def r1695 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))
theorem reject1695 : ¬ Reader r1695 := by
  exact replay_loop true [] 2 5 (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1695

def r1696 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem reject1696 : ¬ Reader r1696 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 1))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.var 2))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1696

def r1697 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem reject1697 : ¬ Reader r1697 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1697

def r1698 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem reject1698 : ¬ Reader r1698 := by
  exact replay_loop true [] 2 3 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 1)) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.var 2)))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1698

def r1699 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 2))))))) (.lam (.var 2))) (.var 0))
theorem reject1699 : ¬ Reader r1699 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.lam (.var 4)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 3)) (.lam (.lam (.var 4))))))) [(.app (.lam (.var 2)) (.lam (.lam (.var 3))))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1699

def r1700 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 2)))))) (.lam (.var 2))) (.var 0))
theorem reject1700 : ¬ Reader r1700 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.lam (.var 4))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.lam (.var 4)))))) [(.lam (.var 2)), (.lam (.lam (.var 3)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1700

def r1701 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 1))))) (.lam (.var 2))) (.var 0))
theorem reject1701 : ¬ Reader r1701 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))) (.lam (.var 3)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))) (.lam (.var 3))))) [(.lam (.lam (.var 3))), (.lam (.var 2))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1701

def r1702 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject1702 : ¬ Reader r1702 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1702

def r1703 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.lam (.var 2))) (.var 0))
theorem reject1703 : ¬ Reader r1703 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.lam (.var 3)) (.lam (.var 3)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.lam (.var 4)) (.lam (.var 4)))) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1703

def r1704 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.lam (.var 2))) (.var 0))
theorem reject1704 : ¬ Reader r1704 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.lam (.var 3)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 0)) (.lam (.var 4)))))) [(.lam (.var 2))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1704

def r1705 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.lam (.var 1))))) (.lam (.var 2)))
theorem reject1705 : ¬ Reader r1705 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) [(.lam (.var 2))] [(.app (.var 0) (.lam (.lam (.var 3)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1705

def r1706 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.app (.var 1) (.var 0)))) (.lam (.var 2)))
theorem reject1706 : ¬ Reader r1706 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))) [(.lam (.lam (.var 3)))] [(.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1706

def r1707 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.app (.var 0) (.var 1)))) (.lam (.var 2)))
theorem reject1707 : ¬ Reader r1707 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))) [(.lam (.lam (.var 3)))] [(.app (.lam (.var 2)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1707

def r1708 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 1)))) (.lam (.var 2)))
theorem reject1708 : ¬ Reader r1708 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) [(.lam (.var 2))] [(.var 0), (.lam (.lam (.var 3))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1708

def r1709 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1)) (.var 0))) (.lam (.var 2)))
theorem reject1709 : ¬ Reader r1709 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))) [(.lam (.lam (.var 3)))] [(.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1709

def r1710 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1710 : ¬ Reader r1710 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1710

def r1711 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1711 : ¬ Reader r1711 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1711

def r1712 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1712 : ¬ Reader r1712 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1712

def r1713 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))
theorem reject1713 : ¬ Reader r1713 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1713

def r1714 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))
theorem reject1714 : ¬ Reader r1714 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 3)) (.var 0)))))) [] [(.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 3)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1714

def r1715 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))
theorem reject1715 : ¬ Reader r1715 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 4)) (.var 0)))))) [] [(.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 4)) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1715

def r1716 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
theorem reject1716 : ¬ Reader r1716 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 0)) (.var 3)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1716

def r1717 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
theorem reject1717 : ¬ Reader r1717 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) [(.var 1)] [(.lam (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 4)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1717

def r1718 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))
theorem reject1718 : ¬ Reader r1718 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject1718

def r1719 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1719 : ¬ Reader r1719 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1719

def r1720 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1)))
theorem reject1720 : ¬ Reader r1720 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1720

def r1721 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2)))
theorem reject1721 : ¬ Reader r1721 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1721

def r1722 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))
theorem reject1722 : ¬ Reader r1722 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1722

def r1723 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))
theorem reject1723 : ¬ Reader r1723 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1723

def r1724 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))) (.var 0))
theorem reject1724 : ¬ Reader r1724 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1724

def r1725 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 2)))
theorem reject1725 : ¬ Reader r1725 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1725

def r1726 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1726 : ¬ Reader r1726 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1726

def r1727 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1727 : ¬ Reader r1727 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1727

def r1728 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1728 : ¬ Reader r1728 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1728

def r1729 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1729 : ¬ Reader r1729 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1729

def r1730 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1730 : ¬ Reader r1730 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1730

def r1731 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject1731 : ¬ Reader r1731 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1731

def r1732 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1732 : ¬ Reader r1732 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1732

def r1733 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1733 : ¬ Reader r1733 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1733

def r1734 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1734 : ¬ Reader r1734 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1734

def r1735 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1735 : ¬ Reader r1735 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1735

def r1736 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1736 : ¬ Reader r1736 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1736

def r1737 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1737 : ¬ Reader r1737 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1737

def r1738 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1738 : ¬ Reader r1738 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1738

def r1739 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1739 : ¬ Reader r1739 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1739

def r1740 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1740 : ¬ Reader r1740 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1740

def r1741 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1741 : ¬ Reader r1741 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1741

def r1742 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1742 : ¬ Reader r1742 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1742

def r1743 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1743 : ¬ Reader r1743 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1743

def r1744 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1744 : ¬ Reader r1744 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1744

def r1745 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1745 : ¬ Reader r1745 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1745

def r1746 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1746 : ¬ Reader r1746 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1746

def r1747 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1747 : ¬ Reader r1747 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1747

def r1748 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1748 : ¬ Reader r1748 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1748

def r1749 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1749 : ¬ Reader r1749 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1749

def r1750 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1750 : ¬ Reader r1750 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1750

def r1751 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1751 : ¬ Reader r1751 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1751

def r1752 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1752 : ¬ Reader r1752 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1752

def r1753 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1753 : ¬ Reader r1753 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1753

def r1754 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1754 : ¬ Reader r1754 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1754

def r1755 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1755 : ¬ Reader r1755 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1755

def r1756 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1756 : ¬ Reader r1756 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1756

def r1757 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1757 : ¬ Reader r1757 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1757

def r1758 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1758 : ¬ Reader r1758 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1758

def r1759 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0))
theorem reject1759 : ¬ Reader r1759 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1759

def r1760 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1))
theorem reject1760 : ¬ Reader r1760 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1760

def r1761 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject1761 : ¬ Reader r1761 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1761

def r1762 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject1762 : ¬ Reader r1762 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1762

def r1763 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject1763 : ¬ Reader r1763 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1763

def r1764 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject1764 : ¬ Reader r1764 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1764

def r1765 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject1765 : ¬ Reader r1765 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1765

def r1766 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject1766 : ¬ Reader r1766 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1766

def r1767 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject1767 : ¬ Reader r1767 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1767

def r1768 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject1768 : ¬ Reader r1768 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1768

def r1769 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject1769 : ¬ Reader r1769 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1769

def r1770 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject1770 : ¬ Reader r1770 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1770

def r1771 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1771 : ¬ Reader r1771 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1771

def r1772 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1772 : ¬ Reader r1772 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1772

def r1773 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1773 : ¬ Reader r1773 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1773

def r1774 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1774 : ¬ Reader r1774 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1774

def r1775 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1775 : ¬ Reader r1775 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1775

def r1776 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1776 : ¬ Reader r1776 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1776

def r1777 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1777 : ¬ Reader r1777 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1777

def r1778 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1778 : ¬ Reader r1778 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1778

def r1779 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1779 : ¬ Reader r1779 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1779

def r1780 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1780 : ¬ Reader r1780 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1780

def r1781 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1781 : ¬ Reader r1781 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1781

def r1782 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1782 : ¬ Reader r1782 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1782

def r1783 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1783 : ¬ Reader r1783 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1783

def r1784 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1784 : ¬ Reader r1784 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1784

def r1785 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1785 : ¬ Reader r1785 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1785

def r1786 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1786 : ¬ Reader r1786 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1786

def r1787 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1787 : ¬ Reader r1787 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1787

def r1788 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1788 : ¬ Reader r1788 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1788

def r1789 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1789 : ¬ Reader r1789 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1789

def r1790 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1790 : ¬ Reader r1790 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1790

def r1791 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1791 : ¬ Reader r1791 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1791

def r1792 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1792 : ¬ Reader r1792 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1792

def r1793 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1793 : ¬ Reader r1793 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1793

def r1794 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1794 : ¬ Reader r1794 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1794

def r1795 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1795 : ¬ Reader r1795 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1795

def r1796 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1796 : ¬ Reader r1796 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1796

def r1797 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1797 : ¬ Reader r1797 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1797

def r1798 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1798 : ¬ Reader r1798 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1798

def r1799 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1799 : ¬ Reader r1799 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1799
end Blc.HandlerLet.NestedExceptions05
