/-
Seven 35-bit frontier exclusions by open-payload head pumps and rigid-head
argument descent. The recurrences formalize Tromp's BB/BB.txt hand notes.
All payload cycles quantify over arbitrary open terms; exact BLC wire
identities connect the proof targets to the measured frontier.
-/
import Blc.BB33First
import Blc.Rigid
import Blc.Wire

namespace Blc.BB35Pump
open Term

namespace Reentry

def target : Term := .app
  (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) BB33First.A

theorem init : HeadReds 7 target
    (.lam (.app BB33First.P (BB33First.triple (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm target :=
  openPayloadPump_noNormalForm BB33First.P BB33First.triple 4 (by decide)
    BB33First.cycle target (BB33First.triple (.var 0)) 7 init

theorem wire : blcCode target =
    [false, true, false, false, false, true, false, true, true, false, false, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, false, true, false, true, false] := by decide

theorem closed : Closed target := by decide

end Reentry

namespace RightTwice

def A : Term := .lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))
def P : Term := .app (.app A A) A
def target : Term := .app BB33First.D3 A
def advance (u : Term) : Term := .app (.app u P) P

theorem cycle (u : Term) : HeadReds 4 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init : HeadReds 4 target (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm target :=
  openPayloadPump_noNormalForm P advance 4 (by decide) cycle
    target (advance (.var 0)) 4 init

theorem wire : blcCode target =
    [false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, false, true, true, false, true, true, false] := by decide

theorem closed : Closed target := by decide

end RightTwice

namespace BothSides

def A : Term := .lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))
def P : Term := .app (.app A A) A
def target : Term := .app BB33First.D3 A
def advance (u : Term) : Term := .app (.app P u) P

theorem cycle (u : Term) : HeadReds 4 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init : HeadReds 4 target (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm target :=
  openPayloadPump_noNormalForm P advance 4 (by decide) cycle
    target (advance (.var 0)) 4 init

theorem wire : blcCode target =
    [false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, true, false, true, false, true, true, false] := by decide

theorem closed : Closed target := by decide

end BothSides

namespace DoubleSquare

/-- A x y = x (y y); M x = x x. The shared core is (M A) (M A). -/
def A : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))
def M : Term := .lam (.app (.var 0) (.var 0))
def N : Term := .app M A
def P : Term := .app N N
def advance (u : Term) : Term := .app u u

def target8 : Term := .app (.lam (.app (.var 0) (.app (.var 0) A))) M
def target18 : Term := .app M N

theorem cycle (u : Term) : HeadReds 5 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init8 : HeadReds 6 target8 (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem init18 : HeadReds 5 target18 (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm8 : ¬ HasNormalForm target8 :=
  openPayloadPump_noNormalForm P advance 5 (by decide) cycle
    target8 (advance (.var 0)) 6 init8

theorem noNormalForm18 : ¬ HasNormalForm target18 :=
  openPayloadPump_noNormalForm P advance 5 (by decide) cycle
    target18 (advance (.var 0)) 5 init18

theorem wire8 : blcCode target8 =
    [false, true, false, false, false, true, true, false, false, true, true, false, false, false, false, false, false, true, true, true, false, false, true, true, false, true, false, false, false, false, true, true, false, true, false] := by decide

theorem wire18 : blcCode target18 =
    [false, true, false, false, false, true, true, false, true, false, false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, true, false, true, false] := by decide

theorem closed8 : Closed target8 := by decide
theorem closed18 : Closed target18 := by decide

end DoubleSquare

namespace HiddenSquare

/-- A x y = x (y (x x)). Its square C is head-divergent, while the two
frontier entries expose C inside a rigid head-normal spine. -/
def A : Term := .lam (.lam (.app (.var 1)
  (.app (.var 0) (.app (.var 1) (.var 1)))))
def AA : Term := .app A A
def B : Term := .app A AA
def C : Term := .app AA AA
def advance (u : Term) : Term := .app u (.app C C)

def target4 : Term := .app BB33First.D3 A
def target9 : Term := .app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) A

theorem cycle (u : Term) : HeadReds 4 (.app C u) (.app C (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem core_init : HeadReds 3 C (.lam (.app C (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem core_noNormalForm : ¬ HasNormalForm C :=
  openPayloadPump_noNormalForm C advance 4 (by decide) cycle
    C (advance (.var 0)) 3 core_init

/-- The head parameter is literal syntax under two leading binders. -/
def landing (h : Term) : Term :=
  .lam (.lam (.app h (.app (.var 0) (.app h h))))
def landing4 : Term :=
  landing (.app (.app (.app (.var 1) (.app B B)) C) AA)
def landing9 : Term := landing (.app (.app (.var 1) C) AA)

theorem noNormalForm4 : ¬ HasNormalForm target4 :=
  argKill (s := landing4) (a := C) (k := 9)
    (by decide) (by decide) (by decide) core_noNormalForm

theorem noNormalForm9 : ¬ HasNormalForm target9 :=
  argKill (s := landing9) (a := C) (k := 5)
    (by decide) (by decide) (by decide) core_noNormalForm

theorem wire4 : blcCode target4 =
    [false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, true, false, false, true, true, true, false, true, true, false] := by decide

theorem wire9 : blcCode target9 =
    [false, true, false, false, false, true, true, false, false, true, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, true, false, false, true, true, true, false, true, true, false] := by decide

theorem closed4 : Closed target4 := by decide
theorem closed9 : Closed target9 := by decide

end HiddenSquare
end Blc.BB35Pump
