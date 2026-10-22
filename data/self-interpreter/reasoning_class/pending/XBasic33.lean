import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic33
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r11953 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11953 : ¬ Reader r11953 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11953

def r11954 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11954 : ¬ Reader r11954 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11954

def r11955 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11955 : ¬ Reader r11955 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11955

def r11956 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11956 : ¬ Reader r11956 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11956

def r11957 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11957 : ¬ Reader r11957 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11957

def r11958 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11958 : ¬ Reader r11958 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11958

def r11965 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11965 : ¬ Reader r11965 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11965

def r11966 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11966 : ¬ Reader r11966 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11966

def r11967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11967 : ¬ Reader r11967 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11967

def r11968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject11968 : ¬ Reader r11968 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11968

def r11969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11969 : ¬ Reader r11969 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11969

def r11970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject11970 : ¬ Reader r11970 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11970

def r11971 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11971 : ¬ Reader r11971 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11971

def r11972 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11972 : ¬ Reader r11972 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11972

def r11973 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11973 : ¬ Reader r11973 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11973

def r11974 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject11974 : ¬ Reader r11974 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11974

def r11975 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11975 : ¬ Reader r11975 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11975

def r11976 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject11976 : ¬ Reader r11976 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11976

def r11977 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject11977 : ¬ Reader r11977 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11977

def r11978 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject11978 : ¬ Reader r11978 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11978

def r11979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject11979 : ¬ Reader r11979 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11979

def r11980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject11980 : ¬ Reader r11980 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11980

def r11981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject11981 : ¬ Reader r11981 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11981

def r11982 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject11982 : ¬ Reader r11982 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11982

def r11983 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject11983 : ¬ Reader r11983 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11983

def r11984 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1)))
theorem reject11984 : ¬ Reader r11984 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11984

def r11985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))
theorem reject11985 : ¬ Reader r11985 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11985

def r11986 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject11986 : ¬ Reader r11986 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11986

def r11987 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 0)))))
theorem reject11987 : ¬ Reader r11987 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11987

def r11988 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject11988 : ¬ Reader r11988 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11988

def r11989 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject11989 : ¬ Reader r11989 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11989

def r11990 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11990 : ¬ Reader r11990 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11990

def r11991 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11991 : ¬ Reader r11991 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11991

def r11992 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11992 : ¬ Reader r11992 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11992

def r11993 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11993 : ¬ Reader r11993 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11993

def r11994 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11994 : ¬ Reader r11994 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11994

def r11995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11995 : ¬ Reader r11995 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11995

def r11996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject11996 : ¬ Reader r11996 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11996

def r11997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject11997 : ¬ Reader r11997 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11997

def r11998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.lam (.var 0)))))
theorem reject11998 : ¬ Reader r11998 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11998

def r11999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))))
theorem reject11999 : ¬ Reader r11999 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11999

def r12000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0)))
theorem reject12000 : ¬ Reader r12000 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12000

def r12001 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject12001 : ¬ Reader r12001 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12001

def r12002 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject12002 : ¬ Reader r12002 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12002

def r12003 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject12003 : ¬ Reader r12003 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12003

def r12004 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject12004 : ¬ Reader r12004 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12004

def r12005 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject12005 : ¬ Reader r12005 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12005

def r12006 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject12006 : ¬ Reader r12006 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12006

def r12007 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject12007 : ¬ Reader r12007 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12007

def r12008 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject12008 : ¬ Reader r12008 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12008

def r12009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12009 : ¬ Reader r12009 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12009

def r12010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12010 : ¬ Reader r12010 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12010

def r12011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12011 : ¬ Reader r12011 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12011

def r12012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12012 : ¬ Reader r12012 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12012

def r12013 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject12013 : ¬ Reader r12013 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12013

def r12014 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject12014 : ¬ Reader r12014 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12014

def r12015 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject12015 : ¬ Reader r12015 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12015

def r12016 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject12016 : ¬ Reader r12016 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12016

def r12017 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject12017 : ¬ Reader r12017 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12017

def r12018 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject12018 : ¬ Reader r12018 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12018

def r12019 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject12019 : ¬ Reader r12019 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12019

def r12020 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject12020 : ¬ Reader r12020 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12020

def r12021 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject12021 : ¬ Reader r12021 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12021

def r12022 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject12022 : ¬ Reader r12022 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12022

def r12023 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject12023 : ¬ Reader r12023 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12023

def r12024 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject12024 : ¬ Reader r12024 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12024

def r12025 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject12025 : ¬ Reader r12025 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12025

def r12026 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject12026 : ¬ Reader r12026 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12026

def r12027 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject12027 : ¬ Reader r12027 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12027

def r12028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject12028 : ¬ Reader r12028 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12028

def r12029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12029 : ¬ Reader r12029 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12029

def r12030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12030 : ¬ Reader r12030 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12030

def r12031 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject12031 : ¬ Reader r12031 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12031

def r12032 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject12032 : ¬ Reader r12032 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12032

def r12033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject12033 : ¬ Reader r12033 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12033

def r12034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject12034 : ¬ Reader r12034 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12034

def r12035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject12035 : ¬ Reader r12035 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12035

def r12036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject12036 : ¬ Reader r12036 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12036

def r12049 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject12049 : ¬ Reader r12049 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12049

def r12050 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject12050 : ¬ Reader r12050 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12050

def r12051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject12051 : ¬ Reader r12051 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12051

def r12052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject12052 : ¬ Reader r12052 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12052

def r12053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1)))
theorem reject12053 : ¬ Reader r12053 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12053

def r12054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))
theorem reject12054 : ¬ Reader r12054 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12054

def r12055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12055 : ¬ Reader r12055 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12055

def r12056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 0)))))
theorem reject12056 : ¬ Reader r12056 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12056

def r12057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject12057 : ¬ Reader r12057 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12057

def r12058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12058 : ¬ Reader r12058 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12058

def r12059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12059 : ¬ Reader r12059 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12059

def r12060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12060 : ¬ Reader r12060 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12060

def r12061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject12061 : ¬ Reader r12061 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12061

def r12062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject12062 : ¬ Reader r12062 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12062

def r12063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))
theorem reject12063 : ¬ Reader r12063 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12063

def r12064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject12064 : ¬ Reader r12064 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12064

def r12065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject12065 : ¬ Reader r12065 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12065

def r12066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject12066 : ¬ Reader r12066 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12066

def r12067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject12067 : ¬ Reader r12067 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12067

def r12068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject12068 : ¬ Reader r12068 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12068

def r12069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject12069 : ¬ Reader r12069 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12069

def r12070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject12070 : ¬ Reader r12070 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12070

def r12071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12071 : ¬ Reader r12071 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12071

def r12072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12072 : ¬ Reader r12072 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12072

def r12073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject12073 : ¬ Reader r12073 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12073

def r12074 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject12074 : ¬ Reader r12074 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12074

def r12075 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject12075 : ¬ Reader r12075 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12075

def r12076 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject12076 : ¬ Reader r12076 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12076

def r12077 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1)))
theorem reject12077 : ¬ Reader r12077 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12077

def r12078 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))
theorem reject12078 : ¬ Reader r12078 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12078

def r12079 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12079 : ¬ Reader r12079 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12079

def r12080 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 0)))))
theorem reject12080 : ¬ Reader r12080 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12080

def r12081 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject12081 : ¬ Reader r12081 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12081

def r12082 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12082 : ¬ Reader r12082 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12082

def r12083 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12083 : ¬ Reader r12083 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12083

def r12084 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12084 : ¬ Reader r12084 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12084

def r12085 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject12085 : ¬ Reader r12085 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12085

def r12086 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject12086 : ¬ Reader r12086 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12086

def r12087 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject12087 : ¬ Reader r12087 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12087

def r12088 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject12088 : ¬ Reader r12088 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12088

def r12089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12089 : ¬ Reader r12089 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12089

def r12090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12090 : ¬ Reader r12090 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12090

def r12091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject12091 : ¬ Reader r12091 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12091

def r12092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject12092 : ¬ Reader r12092 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12092

def r12093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))
theorem reject12093 : ¬ Reader r12093 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12093

def r12094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject12094 : ¬ Reader r12094 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12094

def r12095 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject12095 : ¬ Reader r12095 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12095

def r12096 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject12096 : ¬ Reader r12096 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12096

def r12097 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject12097 : ¬ Reader r12097 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12097

def r12098 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject12098 : ¬ Reader r12098 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12098

def r12099 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject12099 : ¬ Reader r12099 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12099

def r12100 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject12100 : ¬ Reader r12100 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12100

def r12101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject12101 : ¬ Reader r12101 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12101

def r12102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject12102 : ¬ Reader r12102 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12102

def r12103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject12103 : ¬ Reader r12103 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12103

def r12104 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject12104 : ¬ Reader r12104 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12104

def r12105 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject12105 : ¬ Reader r12105 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12105

def r12106 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject12106 : ¬ Reader r12106 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12106

def r12107 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject12107 : ¬ Reader r12107 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12107

def r12108 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject12108 : ¬ Reader r12108 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12108

def r12109 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject12109 : ¬ Reader r12109 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12109

def r12110 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject12110 : ¬ Reader r12110 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12110

def r12111 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject12111 : ¬ Reader r12111 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12111

def r12112 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2))))
theorem reject12112 : ¬ Reader r12112 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12112

def r12113 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1)))
theorem reject12113 : ¬ Reader r12113 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12113

def r12114 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0))
theorem reject12114 : ¬ Reader r12114 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12114

def r12115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12115 : ¬ Reader r12115 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12115

def r12116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 1)))))
theorem reject12116 : ¬ Reader r12116 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12116

def r12117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0))))
theorem reject12117 : ¬ Reader r12117 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 1), (.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12117

def r12118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1))
theorem reject12118 : ¬ Reader r12118 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12118

def r12119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12119 : ¬ Reader r12119 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12119

def r12120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12120 : ¬ Reader r12120 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12120

def r12121 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12121 : ¬ Reader r12121 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12121

def r12122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12122 : ¬ Reader r12122 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12122

def r12123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12123 : ¬ Reader r12123 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12123

def r12124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12124 : ¬ Reader r12124 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12124

def r12125 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12125 : ¬ Reader r12125 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12125

def r12126 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject12126 : ¬ Reader r12126 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12126

def r12127 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject12127 : ¬ Reader r12127 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12127

def r12128 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12128 : ¬ Reader r12128 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12128

def r12129 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12129 : ¬ Reader r12129 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12129

def r12130 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.lam (.var 0))) (.var 1))
theorem reject12130 : ¬ Reader r12130 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12130

def r12131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.lam (.var 0)))
theorem reject12131 : ¬ Reader r12131 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12131

def r12132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.lam (.var 1)))))
theorem reject12132 : ¬ Reader r12132 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12132

def r12133 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1))))
theorem reject12133 : ¬ Reader r12133 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12133

def r12134 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 0))))
theorem reject12134 : ¬ Reader r12134 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12134

def r12135 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.lam (.var 0)))
theorem reject12135 : ¬ Reader r12135 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12135

def r12136 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject12136 : ¬ Reader r12136 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12136

def r12137 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject12137 : ¬ Reader r12137 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12137

def r12138 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.var 1)))
theorem reject12138 : ¬ Reader r12138 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12138

def r12139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 1))
theorem reject12139 : ¬ Reader r12139 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12139

def r12140 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 1)) (.var 0))
theorem reject12140 : ¬ Reader r12140 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12140

def r12141 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.var 1))
theorem reject12141 : ¬ Reader r12141 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12141

def r12142 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 2))))
theorem reject12142 : ¬ Reader r12142 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12142

def r12143 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.var 1)))
theorem reject12143 : ¬ Reader r12143 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12143

def r12144 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 2))))) (.var 0))
theorem reject12144 : ¬ Reader r12144 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12144

def r12145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 2)))))
theorem reject12145 : ¬ Reader r12145 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12145

def r12146 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1))))
theorem reject12146 : ¬ Reader r12146 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12146

def r12147 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.var 0)))
theorem reject12147 : ¬ Reader r12147 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 2))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12147

def r12148 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject12148 : ¬ Reader r12148 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12148

def r12149 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject12149 : ¬ Reader r12149 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12149

def r12150 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject12150 : ¬ Reader r12150 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12150

def r12151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject12151 : ¬ Reader r12151 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12151

def r12152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 1))
theorem reject12152 : ¬ Reader r12152 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 2))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12152

def r12153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.var 0)))
theorem reject12153 : ¬ Reader r12153 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12153

def r12154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12154 : ¬ Reader r12154 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12154

def r12155 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12155 : ¬ Reader r12155 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12155

def r12156 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject12156 : ¬ Reader r12156 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12156

def r12157 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject12157 : ¬ Reader r12157 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12157

def r12158 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 0))))
theorem reject12158 : ¬ Reader r12158 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12158

def r12159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 0)))
theorem reject12159 : ¬ Reader r12159 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12159

def r12160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject12160 : ¬ Reader r12160 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12160

def r12161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject12161 : ¬ Reader r12161 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12161

def r12162 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject12162 : ¬ Reader r12162 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12162

def r12163 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject12163 : ¬ Reader r12163 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12163

def r12164 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject12164 : ¬ Reader r12164 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12164

def r12165 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject12165 : ¬ Reader r12165 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12165

def r12166 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject12166 : ¬ Reader r12166 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12166

def r12167 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject12167 : ¬ Reader r12167 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12167

def r12168 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject12168 : ¬ Reader r12168 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12168

def r12169 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject12169 : ¬ Reader r12169 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12169

def r12170 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject12170 : ¬ Reader r12170 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12170

def r12171 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject12171 : ¬ Reader r12171 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12171

def r12172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject12172 : ¬ Reader r12172 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12172

def r12173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject12173 : ¬ Reader r12173 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12173

def r12174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject12174 : ¬ Reader r12174 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12174

def r12175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject12175 : ¬ Reader r12175 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12175

def r12176 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject12176 : ¬ Reader r12176 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12176

def r12177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject12177 : ¬ Reader r12177 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12177

def r12196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject12196 : ¬ Reader r12196 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12196

def r12197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject12197 : ¬ Reader r12197 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12197

def r12198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject12198 : ¬ Reader r12198 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12198

def r12199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject12199 : ¬ Reader r12199 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12199

def r12200 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject12200 : ¬ Reader r12200 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12200

def r12201 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject12201 : ¬ Reader r12201 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12201

def r12202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2))))
theorem reject12202 : ¬ Reader r12202 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12202

def r12203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1)))
theorem reject12203 : ¬ Reader r12203 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12203

def r12204 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0))
theorem reject12204 : ¬ Reader r12204 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12204

def r12205 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12205 : ¬ Reader r12205 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12205

def r12206 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 1)))))
theorem reject12206 : ¬ Reader r12206 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12206

def r12207 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0))))
theorem reject12207 : ¬ Reader r12207 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12207

def r12208 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1))
theorem reject12208 : ¬ Reader r12208 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12208

def r12209 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12209 : ¬ Reader r12209 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12209

def r12210 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12210 : ¬ Reader r12210 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12210

def r12211 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12211 : ¬ Reader r12211 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12211

def r12212 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12212 : ¬ Reader r12212 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12212

def r12213 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12213 : ¬ Reader r12213 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12213

def r12214 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject12214 : ¬ Reader r12214 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12214

def r12215 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject12215 : ¬ Reader r12215 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12215

def r12216 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject12216 : ¬ Reader r12216 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12216

def r12217 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject12217 : ¬ Reader r12217 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12217

def r12218 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1)))
theorem reject12218 : ¬ Reader r12218 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12218

def r12219 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))
theorem reject12219 : ¬ Reader r12219 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12219

def r12220 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12220 : ¬ Reader r12220 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12220

def r12221 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 0)))))
theorem reject12221 : ¬ Reader r12221 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12221

def r12222 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject12222 : ¬ Reader r12222 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12222

def r12223 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12223 : ¬ Reader r12223 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12223

def r12224 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12224 : ¬ Reader r12224 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12224

def r12225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12225 : ¬ Reader r12225 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12225

def r12226 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject12226 : ¬ Reader r12226 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12226

def r12227 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject12227 : ¬ Reader r12227 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12227

def r12228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject12228 : ¬ Reader r12228 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12228

def r12229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject12229 : ¬ Reader r12229 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12229

def r12230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject12230 : ¬ Reader r12230 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12230

def r12231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject12231 : ¬ Reader r12231 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12231

def r12232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject12232 : ¬ Reader r12232 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12232

def r12233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject12233 : ¬ Reader r12233 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12233

def r12234 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12234 : ¬ Reader r12234 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12234

def r12235 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12235 : ¬ Reader r12235 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12235

def r12236 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12236 : ¬ Reader r12236 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12236

def r12237 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12237 : ¬ Reader r12237 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12237

def r12238 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject12238 : ¬ Reader r12238 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12238

def r12239 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject12239 : ¬ Reader r12239 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12239

def r12240 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject12240 : ¬ Reader r12240 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12240

def r12241 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject12241 : ¬ Reader r12241 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12241

def r12242 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject12242 : ¬ Reader r12242 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12242

def r12243 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject12243 : ¬ Reader r12243 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12243

def r12244 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2))))
theorem reject12244 : ¬ Reader r12244 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12244

def r12245 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1)))
theorem reject12245 : ¬ Reader r12245 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12245

def r12246 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0))
theorem reject12246 : ¬ Reader r12246 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12246

def r12247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12247 : ¬ Reader r12247 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12247

def r12248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 1)))))
theorem reject12248 : ¬ Reader r12248 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12248

def r12249 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0))))
theorem reject12249 : ¬ Reader r12249 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12249

def r12250 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1))
theorem reject12250 : ¬ Reader r12250 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12250

def r12251 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12251 : ¬ Reader r12251 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12251

def r12252 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12252 : ¬ Reader r12252 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12252

def r12253 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12253 : ¬ Reader r12253 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12253

def r12254 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12254 : ¬ Reader r12254 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12254

def r12255 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12255 : ¬ Reader r12255 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12255

def r12256 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject12256 : ¬ Reader r12256 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12256

def r12257 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject12257 : ¬ Reader r12257 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12257

def r12258 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject12258 : ¬ Reader r12258 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12258

def r12259 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject12259 : ¬ Reader r12259 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12259

def r12260 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject12260 : ¬ Reader r12260 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12260

def r12261 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject12261 : ¬ Reader r12261 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12261

def r12262 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject12262 : ¬ Reader r12262 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12262

def r12263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject12263 : ¬ Reader r12263 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12263

def r12264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12264 : ¬ Reader r12264 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12264

def r12265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12265 : ¬ Reader r12265 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12265

def r12266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12266 : ¬ Reader r12266 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12266

def r12267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12267 : ¬ Reader r12267 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12267

def r12268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject12268 : ¬ Reader r12268 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12268

def r12269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject12269 : ¬ Reader r12269 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12269

def r12270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject12270 : ¬ Reader r12270 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12270

def r12271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject12271 : ¬ Reader r12271 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12271

def r12272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12272 : ¬ Reader r12272 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12272

def r12273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12273 : ¬ Reader r12273 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12273

def r12274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject12274 : ¬ Reader r12274 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12274

def r12275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject12275 : ¬ Reader r12275 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12275

def r12276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject12276 : ¬ Reader r12276 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12276

def r12277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject12277 : ¬ Reader r12277 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12277

def r12278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1)))
theorem reject12278 : ¬ Reader r12278 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12278

def r12279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))
theorem reject12279 : ¬ Reader r12279 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12279

def r12280 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12280 : ¬ Reader r12280 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12280

def r12281 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 0)))))
theorem reject12281 : ¬ Reader r12281 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12281

def r12282 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject12282 : ¬ Reader r12282 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12282

def r12283 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12283 : ¬ Reader r12283 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12283

def r12284 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12284 : ¬ Reader r12284 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12284

def r12285 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12285 : ¬ Reader r12285 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12285

def r12286 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject12286 : ¬ Reader r12286 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12286

def r12287 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject12287 : ¬ Reader r12287 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12287

def r12288 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject12288 : ¬ Reader r12288 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12288
end Blc.HandlerLet.XBasic33
