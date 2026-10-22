import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic05
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r1854 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1854 : ¬ Reader r1854 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1854

def r1855 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1855 : ¬ Reader r1855 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1855

def r1856 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject1856 : ¬ Reader r1856 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1856

def r1857 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject1857 : ¬ Reader r1857 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1857

def r1858 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject1858 : ¬ Reader r1858 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1858

def r1859 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject1859 : ¬ Reader r1859 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1859

def r1860 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1860 : ¬ Reader r1860 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1860

def r1861 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject1861 : ¬ Reader r1861 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1861

def r1862 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject1862 : ¬ Reader r1862 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1862

def r1863 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject1863 : ¬ Reader r1863 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1863

def r1864 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject1864 : ¬ Reader r1864 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1864

def r1865 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject1865 : ¬ Reader r1865 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1865

def r1866 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject1866 : ¬ Reader r1866 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1866

def r1867 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject1867 : ¬ Reader r1867 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1867

def r1868 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject1868 : ¬ Reader r1868 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1868

def r1869 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject1869 : ¬ Reader r1869 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1869

def r1870 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject1870 : ¬ Reader r1870 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1870

def r1871 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject1871 : ¬ Reader r1871 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1871

def r1872 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject1872 : ¬ Reader r1872 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1872

def r1873 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject1873 : ¬ Reader r1873 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0))) (.var 0))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1873

def r1874 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject1874 : ¬ Reader r1874 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1874

def r1875 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject1875 : ¬ Reader r1875 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1875

def r1876 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject1876 : ¬ Reader r1876 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1876

def r1877 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject1877 : ¬ Reader r1877 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1877

def r1878 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject1878 : ¬ Reader r1878 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1878

def r1879 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject1879 : ¬ Reader r1879 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1879

def r1880 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject1880 : ¬ Reader r1880 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1880

def r1881 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject1881 : ¬ Reader r1881 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1881

def r1882 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject1882 : ¬ Reader r1882 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1882

def r1883 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject1883 : ¬ Reader r1883 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1883

def r1884 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject1884 : ¬ Reader r1884 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1884

def r1885 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject1885 : ¬ Reader r1885 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))), (.var 0), (.var 0)] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1885

def r1886 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject1886 : ¬ Reader r1886 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1886

def r1887 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject1887 : ¬ Reader r1887 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1887

def r1888 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject1888 : ¬ Reader r1888 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1888

def r1889 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject1889 : ¬ Reader r1889 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1889

def r1890 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject1890 : ¬ Reader r1890 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1890

def r1891 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject1891 : ¬ Reader r1891 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) [(.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))] [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1891

def r1892 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject1892 : ¬ Reader r1892 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1892

def r1893 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject1893 : ¬ Reader r1893 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1893

def r1894 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject1894 : ¬ Reader r1894 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1894

def r1895 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject1895 : ¬ Reader r1895 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1895

def r1896 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject1896 : ¬ Reader r1896 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1896

def r1897 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject1897 : ¬ Reader r1897 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1897

def r1904 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))
theorem reject1904 : ¬ Reader r1904 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1904

def r1905 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))
theorem reject1905 : ¬ Reader r1905 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1905

def r1906 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject1906 : ¬ Reader r1906 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1906

def r1907 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject1907 : ¬ Reader r1907 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1907

def r1908 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject1908 : ¬ Reader r1908 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1908

def r1909 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject1909 : ¬ Reader r1909 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1909

def r1910 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject1910 : ¬ Reader r1910 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1910

def r1911 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject1911 : ¬ Reader r1911 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1911

def r1912 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject1912 : ¬ Reader r1912 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1912

def r1913 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject1913 : ¬ Reader r1913 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1913

def r1914 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject1914 : ¬ Reader r1914 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1914

def r1915 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject1915 : ¬ Reader r1915 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1915

def r1916 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject1916 : ¬ Reader r1916 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1916

def r1917 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject1917 : ¬ Reader r1917 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1917

def r1918 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject1918 : ¬ Reader r1918 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1918

def r1919 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject1919 : ¬ Reader r1919 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1919

def r1920 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject1920 : ¬ Reader r1920 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1920

def r1921 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject1921 : ¬ Reader r1921 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1921

def r1922 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1922 : ¬ Reader r1922 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1922

def r1923 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1923 : ¬ Reader r1923 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1923

def r1924 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1924 : ¬ Reader r1924 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1924

def r1925 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1925 : ¬ Reader r1925 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1925

def r1926 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1926 : ¬ Reader r1926 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1926

def r1927 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1927 : ¬ Reader r1927 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))) (.lam (.var 1)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1927

def r1934 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1934 : ¬ Reader r1934 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1934

def r1935 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1935 : ¬ Reader r1935 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1935

def r1936 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1936 : ¬ Reader r1936 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1936

def r1937 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1937 : ¬ Reader r1937 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1937

def r1938 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1938 : ¬ Reader r1938 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1938

def r1939 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1939 : ¬ Reader r1939 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1939

def r1940 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1940 : ¬ Reader r1940 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1940

def r1941 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1941 : ¬ Reader r1941 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1941

def r1942 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1942 : ¬ Reader r1942 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1942

def r1943 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1943 : ¬ Reader r1943 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1943

def r1944 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1944 : ¬ Reader r1944 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1944

def r1945 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1945 : ¬ Reader r1945 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))), (.var 0), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1945

def r1946 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1946 : ¬ Reader r1946 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1946

def r1947 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1947 : ¬ Reader r1947 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1947

def r1948 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1948 : ¬ Reader r1948 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1948

def r1955 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1955 : ¬ Reader r1955 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1955

def r1956 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1956 : ¬ Reader r1956 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1956

def r1957 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1957 : ¬ Reader r1957 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))))) [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 1))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1957

def r1958 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1958 : ¬ Reader r1958 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1958

def r1959 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1959 : ¬ Reader r1959 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1959

def r1960 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1960 : ¬ Reader r1960 := by
  exact replay_loop true [] 10 5 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1960

def r1961 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1961 : ¬ Reader r1961 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1961

def r1962 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1962 : ¬ Reader r1962 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1962

def r1963 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1963 : ¬ Reader r1963 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1963

def r1964 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject1964 : ¬ Reader r1964 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1964

def r1965 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject1965 : ¬ Reader r1965 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1965

def r1966 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject1966 : ¬ Reader r1966 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1966

def r1967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject1967 : ¬ Reader r1967 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1967

def r1968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject1968 : ¬ Reader r1968 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1968

def r1969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject1969 : ¬ Reader r1969 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))))))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1969

def r1970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject1970 : ¬ Reader r1970 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1970

def r1971 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject1971 : ¬ Reader r1971 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1971

def r1972 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject1972 : ¬ Reader r1972 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1972

def r1973 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject1973 : ¬ Reader r1973 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1973

def r1974 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject1974 : ¬ Reader r1974 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1974

def r1975 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject1975 : ¬ Reader r1975 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.lam (.app (.var 0) (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1975

def r1976 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject1976 : ¬ Reader r1976 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1976

def r1977 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject1977 : ¬ Reader r1977 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1977

def r1978 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject1978 : ¬ Reader r1978 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1978

def r1979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject1979 : ¬ Reader r1979 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1979

def r1980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject1980 : ¬ Reader r1980 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1980

def r1981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject1981 : ¬ Reader r1981 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1981

def r1982 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1982 : ¬ Reader r1982 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1982

def r1983 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1983 : ¬ Reader r1983 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1983

def r1984 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1984 : ¬ Reader r1984 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1984

def r1988 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1988 : ¬ Reader r1988 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1988

def r1989 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1989 : ¬ Reader r1989 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1989

def r1990 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1990 : ¬ Reader r1990 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))] [(.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1990

def r1991 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject1991 : ¬ Reader r1991 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1991

def r1992 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject1992 : ¬ Reader r1992 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1992

def r1993 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject1993 : ¬ Reader r1993 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1993

def r1994 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))
theorem reject1994 : ¬ Reader r1994 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1994

def r1995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))
theorem reject1995 : ¬ Reader r1995 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1995

def r1996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject1996 : ¬ Reader r1996 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1996

def r1997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject1997 : ¬ Reader r1997 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1997

def r1998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject1998 : ¬ Reader r1998 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1998

def r1999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject1999 : ¬ Reader r1999 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1999

def r2000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2000 : ¬ Reader r2000 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2000

def r2001 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2001 : ¬ Reader r2001 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2001

def r2002 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2002 : ¬ Reader r2002 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2002

def r2003 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2003 : ¬ Reader r2003 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2003

def r2004 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2004 : ¬ Reader r2004 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2004

def r2005 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2005 : ¬ Reader r2005 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2005

def r2006 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2006 : ¬ Reader r2006 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2006

def r2007 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2007 : ¬ Reader r2007 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2007

def r2008 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2008 : ¬ Reader r2008 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2008

def r2009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2009 : ¬ Reader r2009 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2009

def r2010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2010 : ¬ Reader r2010 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2010

def r2011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2011 : ¬ Reader r2011 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2011

def r2012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2012 : ¬ Reader r2012 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2012

def r2013 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2013 : ¬ Reader r2013 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2013

def r2014 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2014 : ¬ Reader r2014 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2014

def r2015 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2015 : ¬ Reader r2015 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2015

def r2016 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2016 : ¬ Reader r2016 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2016

def r2017 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2017 : ¬ Reader r2017 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2017

def r2018 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2018 : ¬ Reader r2018 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2018

def r2019 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2019 : ¬ Reader r2019 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2019

def r2020 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2020 : ¬ Reader r2020 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2020

def r2021 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2021 : ¬ Reader r2021 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2021

def r2022 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2022 : ¬ Reader r2022 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2022

def r2023 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2023 : ¬ Reader r2023 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))) [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2023

def r2024 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2024 : ¬ Reader r2024 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2024

def r2025 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2025 : ¬ Reader r2025 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2025

def r2026 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2026 : ¬ Reader r2026 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2026

def r2027 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2027 : ¬ Reader r2027 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2027

def r2028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2028 : ¬ Reader r2028 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2028

def r2029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2029 : ¬ Reader r2029 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2029

def r2033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2033 : ¬ Reader r2033 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2033

def r2034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2034 : ¬ Reader r2034 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2034

def r2035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2035 : ¬ Reader r2035 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2035

def r2036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2036 : ¬ Reader r2036 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2036

def r2037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2037 : ¬ Reader r2037 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2037

def r2038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2038 : ¬ Reader r2038 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2038

def r2039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 1))))
theorem reject2039 : ¬ Reader r2039 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2039

def r2040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.app (.var 0) (.var 0)))
theorem reject2040 : ¬ Reader r2040 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2040

def r2041 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 1)))
theorem reject2041 : ¬ Reader r2041 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2041

def r2042 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.var 0))
theorem reject2042 : ¬ Reader r2042 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.app (.var 0) (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2042

def r2043 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 1))))
theorem reject2043 : ¬ Reader r2043 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2043

def r2044 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 1))
theorem reject2044 : ¬ Reader r2044 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.app (.var 0) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2044

def r2045 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject2045 : ¬ Reader r2045 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2045

def r2046 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject2046 : ¬ Reader r2046 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2046

def r2047 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject2047 : ¬ Reader r2047 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2047

def r2048 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject2048 : ¬ Reader r2048 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2048

def r2049 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject2049 : ¬ Reader r2049 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2049

def r2050 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject2050 : ¬ Reader r2050 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.app (.var 0) (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2050

def r2051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2051 : ¬ Reader r2051 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2051

def r2052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2052 : ¬ Reader r2052 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2052

def r2053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2053 : ¬ Reader r2053 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2053

def r2054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2054 : ¬ Reader r2054 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2054

def r2055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2055 : ¬ Reader r2055 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2055

def r2056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2056 : ¬ Reader r2056 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2056

def r2057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2057 : ¬ Reader r2057 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2057

def r2058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2058 : ¬ Reader r2058 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2058

def r2059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2059 : ¬ Reader r2059 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2059

def r2060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject2060 : ¬ Reader r2060 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2060

def r2061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject2061 : ¬ Reader r2061 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2061

def r2062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject2062 : ¬ Reader r2062 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2062

def r2063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject2063 : ¬ Reader r2063 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2063

def r2064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject2064 : ¬ Reader r2064 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2064

def r2065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject2065 : ¬ Reader r2065 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2065

def r2066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject2066 : ¬ Reader r2066 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2066

def r2067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2067 : ¬ Reader r2067 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2067

def r2068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject2068 : ¬ Reader r2068 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2068

def r2069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject2069 : ¬ Reader r2069 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2069

def r2070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject2070 : ¬ Reader r2070 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2070

def r2071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject2071 : ¬ Reader r2071 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2071

def r2072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2072 : ¬ Reader r2072 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2072

def r2073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2073 : ¬ Reader r2073 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2073

def r2074 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2074 : ¬ Reader r2074 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2074

def r2075 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2075 : ¬ Reader r2075 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2075

def r2076 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2076 : ¬ Reader r2076 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2076

def r2077 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2077 : ¬ Reader r2077 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2077

def r2078 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2078 : ¬ Reader r2078 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2078

def r2079 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2079 : ¬ Reader r2079 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2079

def r2080 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2080 : ¬ Reader r2080 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2080

def r2081 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2081 : ¬ Reader r2081 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2081

def r2082 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2082 : ¬ Reader r2082 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2082

def r2083 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2083 : ¬ Reader r2083 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2083

def r2084 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2084 : ¬ Reader r2084 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2084

def r2085 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2085 : ¬ Reader r2085 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2085

def r2086 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2086 : ¬ Reader r2086 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2086

def r2087 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2087 : ¬ Reader r2087 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2087

def r2088 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2088 : ¬ Reader r2088 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2088

def r2089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2089 : ¬ Reader r2089 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2089

def r2090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2090 : ¬ Reader r2090 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2090

def r2091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2091 : ¬ Reader r2091 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2091

def r2092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2092 : ¬ Reader r2092 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2092

def r2093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2093 : ¬ Reader r2093 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2093

def r2094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2094 : ¬ Reader r2094 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2094

def r2095 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2095 : ¬ Reader r2095 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2095

def r2102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2102 : ¬ Reader r2102 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2102

def r2103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2103 : ¬ Reader r2103 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2103

def r2104 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2104 : ¬ Reader r2104 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2104

def r2105 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2105 : ¬ Reader r2105 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2105

def r2106 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2106 : ¬ Reader r2106 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2106

def r2107 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2107 : ¬ Reader r2107 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2107

def r2108 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2108 : ¬ Reader r2108 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2108

def r2109 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2109 : ¬ Reader r2109 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2109

def r2110 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2110 : ¬ Reader r2110 := by
  exact replay_loop true [] 6 5 (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2110

def r2114 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2114 : ¬ Reader r2114 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2114

def r2115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2115 : ¬ Reader r2115 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2115

def r2116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2116 : ¬ Reader r2116 := by
  exact replay_loop true [] 2 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2116

def r2123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2123 : ¬ Reader r2123 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2123

def r2124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2124 : ¬ Reader r2124 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2124

def r2125 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2125 : ¬ Reader r2125 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2125

def r2126 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2126 : ¬ Reader r2126 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2126

def r2127 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2127 : ¬ Reader r2127 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2127

def r2128 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2128 : ¬ Reader r2128 := by
  exact replay_loop true [] 2 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) [(.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))), (.lam (.app (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))))))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2128

def r2129 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2129 : ¬ Reader r2129 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2129

def r2130 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2130 : ¬ Reader r2130 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2130

def r2131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2131 : ¬ Reader r2131 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2131

def r2132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2132 : ¬ Reader r2132 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2132

def r2133 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2133 : ¬ Reader r2133 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2133

def r2134 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2134 : ¬ Reader r2134 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) [(.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))))))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2134

def r2141 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2141 : ¬ Reader r2141 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2141

def r2142 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2142 : ¬ Reader r2142 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2142

def r2143 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2143 : ¬ Reader r2143 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2143

def r2144 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2144 : ¬ Reader r2144 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2144

def r2145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2145 : ¬ Reader r2145 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2145

def r2146 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2146 : ¬ Reader r2146 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))))) [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2146

def r2147 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))
theorem reject2147 : ¬ Reader r2147 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2147

def r2148 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))
theorem reject2148 : ¬ Reader r2148 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.app (.var 0) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2148

def r2149 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject2149 : ¬ Reader r2149 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2149

def r2150 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2150 : ¬ Reader r2150 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2150

def r2151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))
theorem reject2151 : ¬ Reader r2151 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2151

def r2152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))
theorem reject2152 : ¬ Reader r2152 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.app (.var 0) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2152

def r2153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2153 : ¬ Reader r2153 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2153

def r2154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2154 : ¬ Reader r2154 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2154

def r2155 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2155 : ¬ Reader r2155 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2155

def r2156 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2156 : ¬ Reader r2156 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2156

def r2157 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2157 : ¬ Reader r2157 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2157

def r2158 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2158 : ¬ Reader r2158 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) [(.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2158

def r2159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2159 : ¬ Reader r2159 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2159

def r2160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2160 : ¬ Reader r2160 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2160

def r2161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2161 : ¬ Reader r2161 := by
  exact replay_loop true [] 4 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2161

def r2171 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2171 : ¬ Reader r2171 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2171

def r2172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2172 : ¬ Reader r2172 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2172

def r2173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2173 : ¬ Reader r2173 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))), (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2173

def r2174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2174 : ¬ Reader r2174 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2174

def r2175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2175 : ¬ Reader r2175 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2175

def r2176 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2176 : ¬ Reader r2176 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))) [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2176

def r2180 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2180 : ¬ Reader r2180 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2180

def r2181 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2181 : ¬ Reader r2181 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2181

def r2182 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2182 : ¬ Reader r2182 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) [(.lam (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1)))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.var 1))))) (.lam (.var 1)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2182

def r2186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2186 : ¬ Reader r2186 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2186

def r2187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2187 : ¬ Reader r2187 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2187

def r2188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2188 : ¬ Reader r2188 := by
  exact replay_loop true [] 6 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2188

def r2189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2189 : ¬ Reader r2189 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject2189

def r2190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2190 : ¬ Reader r2190 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject2190

def r2191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2191 : ¬ Reader r2191 := by
  exact replay_loop true [] 8 2 (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2191

def r2192 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2192 : ¬ Reader r2192 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2192

def r2193 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2193 : ¬ Reader r2193 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2193

def r2194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2194 : ¬ Reader r2194 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2194

def r2195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject2195 : ¬ Reader r2195 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject2195

def r2196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject2196 : ¬ Reader r2196 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2196

def r2197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject2197 : ¬ Reader r2197 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2197

def r2198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.var 1))))
theorem reject2198 : ¬ Reader r2198 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.app (.var 1) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2198

def r2199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.app (.var 1) (.var 1)))) (.var 0))
theorem reject2199 : ¬ Reader r2199 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.app (.var 1) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2199

def r2200 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.var 1))))
theorem reject2200 : ¬ Reader r2200 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.app (.var 1) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2200

def r2201 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.app (.var 1) (.var 1)))) (.var 1))
theorem reject2201 : ¬ Reader r2201 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.app (.var 1) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2201

def r2202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.var 1)))) (.var 1)) (.var 0))
theorem reject2202 : ¬ Reader r2202 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2202

def r2203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.var 1))
theorem reject2203 : ¬ Reader r2203 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 1) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2203

def r2204 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2204 : ¬ Reader r2204 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2204

def r2205 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject2205 : ¬ Reader r2205 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2205

def r2206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject2206 : ¬ Reader r2206 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2206

def r2207 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject2207 : ¬ Reader r2207 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2207

def r2208 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject2208 : ¬ Reader r2208 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2208

def r2209 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject2209 : ¬ Reader r2209 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))) [(.var 0)] [(.var 0), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2209

def r2210 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2210 : ¬ Reader r2210 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2210

def r2211 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2211 : ¬ Reader r2211 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2211

def r2212 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2212 : ¬ Reader r2212 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 1)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2212

def r2213 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject2213 : ¬ Reader r2213 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2213
end Blc.HandlerLet.XBasic05
