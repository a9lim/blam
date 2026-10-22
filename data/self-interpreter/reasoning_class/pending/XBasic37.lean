import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic37
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r11440 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11440 : ¬ Reader r11440 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11440

def r11441 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11441 : ¬ Reader r11441 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11441

def r11442 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11442 : ¬ Reader r11442 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11442

def r1662 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1662 : ¬ Reader r1662 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1662

def r1663 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1663 : ¬ Reader r1663 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1663

def r1664 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1664 : ¬ Reader r1664 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1664

def r6242 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6242 : ¬ Reader r6242 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6242

def r6243 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6243 : ¬ Reader r6243 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6243

def r6244 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6244 : ¬ Reader r6244 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6244

def r6245 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6245 : ¬ Reader r6245 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6245

def r6246 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6246 : ¬ Reader r6246 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6246

def r6247 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6247 : ¬ Reader r6247 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6247

def r7021 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7021 : ¬ Reader r7021 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7021

def r7022 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7022 : ¬ Reader r7022 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7022

def r7023 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7023 : ¬ Reader r7023 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7023

def r7024 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7024 : ¬ Reader r7024 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7024

def r7025 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7025 : ¬ Reader r7025 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7025

def r7026 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7026 : ¬ Reader r7026 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7026

def r8703 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8703 : ¬ Reader r8703 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8703

def r8704 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8704 : ¬ Reader r8704 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8704

def r8705 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8705 : ¬ Reader r8705 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8705

def r8706 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8706 : ¬ Reader r8706 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8706

def r8707 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8707 : ¬ Reader r8707 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8707

def r8708 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8708 : ¬ Reader r8708 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8708

def r11515 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11515 : ¬ Reader r11515 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11515

def r11516 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11516 : ¬ Reader r11516 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11516

def r11517 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11517 : ¬ Reader r11517 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11517

def r11518 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11518 : ¬ Reader r11518 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11518

def r11519 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11519 : ¬ Reader r11519 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11519

def r11520 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11520 : ¬ Reader r11520 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11520

def r1820 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1820 : ¬ Reader r1820 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1820

def r1821 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1821 : ¬ Reader r1821 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1821

def r1822 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1822 : ¬ Reader r1822 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1822

def r7536 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7536 : ¬ Reader r7536 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7536

def r7537 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7537 : ¬ Reader r7537 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7537

def r7538 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7538 : ¬ Reader r7538 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7538

def r7539 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7539 : ¬ Reader r7539 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7539

def r7540 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7540 : ¬ Reader r7540 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7540

def r7541 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7541 : ¬ Reader r7541 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7541

def r9408 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9408 : ¬ Reader r9408 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9408

def r9409 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9409 : ¬ Reader r9409 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9409

def r9410 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9410 : ¬ Reader r9410 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9410

def r9411 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9411 : ¬ Reader r9411 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9411

def r9412 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9412 : ¬ Reader r9412 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9412

def r9413 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9413 : ¬ Reader r9413 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1]] [[], [2], [2], [], [2], [2]] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9413

def r1928 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1928 : ¬ Reader r1928 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1928

def r1929 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1929 : ¬ Reader r1929 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1929

def r1930 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1930 : ¬ Reader r1930 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1930

def r1931 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1931 : ¬ Reader r1931 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1931

def r1932 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1932 : ¬ Reader r1932 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1932

def r1933 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1933 : ¬ Reader r1933 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1933

def r7721 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject7721 : ¬ Reader r7721 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7721

def r7722 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject7722 : ¬ Reader r7722 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7722

def r7723 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
theorem reject7723 : ¬ Reader r7723 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7723

def r8613 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject8613 : ¬ Reader r8613 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8613

def r8614 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject8614 : ¬ Reader r8614 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8614

def r8615 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject8615 : ¬ Reader r8615 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8615

def r8616 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject8616 : ¬ Reader r8616 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8616

def r8617 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject8617 : ¬ Reader r8617 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8617

def r8618 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject8618 : ¬ Reader r8618 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8618

def r9688 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject9688 : ¬ Reader r9688 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9688

def r9689 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject9689 : ¬ Reader r9689 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9689

def r9690 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject9690 : ¬ Reader r9690 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9690

def r9691 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject9691 : ¬ Reader r9691 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9691

def r9692 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject9692 : ¬ Reader r9692 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9692

def r9693 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject9693 : ¬ Reader r9693 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9693

def r9694 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject9694 : ¬ Reader r9694 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9694

def r9695 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject9695 : ¬ Reader r9695 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9695

def r9696 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject9696 : ¬ Reader r9696 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9696

def r9697 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject9697 : ¬ Reader r9697 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9697

def r9698 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject9698 : ¬ Reader r9698 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9698

def r9699 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject9699 : ¬ Reader r9699 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9699

def r1952 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1952 : ¬ Reader r1952 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1952

def r1953 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1953 : ¬ Reader r1953 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1953

def r1954 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1954 : ¬ Reader r1954 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1954

def r7742 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7742 : ¬ Reader r7742 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7742

def r7743 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7743 : ¬ Reader r7743 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7743

def r7744 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7744 : ¬ Reader r7744 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7744

def r7745 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7745 : ¬ Reader r7745 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7745

def r7746 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7746 : ¬ Reader r7746 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7746

def r7747 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7747 : ¬ Reader r7747 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7747

def r9742 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9742 : ¬ Reader r9742 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9742

def r9743 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9743 : ¬ Reader r9743 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9743

def r9744 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9744 : ¬ Reader r9744 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9744

def r9745 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9745 : ¬ Reader r9745 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9745

def r9746 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9746 : ¬ Reader r9746 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9746

def r9747 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9747 : ¬ Reader r9747 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2)))))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9747

def r1985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1985 : ¬ Reader r1985 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1985

def r1986 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1986 : ¬ Reader r1986 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1986

def r1987 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1987 : ¬ Reader r1987 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1987

def r7808 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7808 : ¬ Reader r7808 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7808

def r7809 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7809 : ¬ Reader r7809 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7809

def r7810 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7810 : ¬ Reader r7810 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7810

def r7811 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7811 : ¬ Reader r7811 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7811

def r7812 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7812 : ¬ Reader r7812 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7812

def r7813 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7813 : ¬ Reader r7813 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7813

def r9877 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9877 : ¬ Reader r9877 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9877

def r9878 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9878 : ¬ Reader r9878 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9878

def r9879 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9879 : ¬ Reader r9879 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9879

def r9880 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9880 : ¬ Reader r9880 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9880

def r9881 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9881 : ¬ Reader r9881 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9881

def r9882 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9882 : ¬ Reader r9882 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9882

def r2165 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2165 : ¬ Reader r2165 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2165

def r2166 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2166 : ¬ Reader r2166 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2166

def r2167 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2167 : ¬ Reader r2167 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2167

def r9036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9036 : ¬ Reader r9036 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9036

def r9037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9037 : ¬ Reader r9037 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9037

def r9038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9038 : ¬ Reader r9038 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9038

def r9039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9039 : ¬ Reader r9039 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9039

def r9040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9040 : ¬ Reader r9040 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9040

def r9041 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9041 : ¬ Reader r9041 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2]] [[2, 0, 2], [2, 0, 2], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9041

def r2177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2177 : ¬ Reader r2177 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2177

def r2178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2178 : ¬ Reader r2178 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2178

def r2179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2179 : ¬ Reader r2179 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2179

def r9060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9060 : ¬ Reader r9060 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9060

def r9061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9061 : ¬ Reader r9061 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9061

def r9062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9062 : ¬ Reader r9062 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9062

def r9063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9063 : ¬ Reader r9063 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9063

def r9064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9064 : ¬ Reader r9064 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9064

def r9065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9065 : ¬ Reader r9065 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 0, 2], [2, 0, 2], [2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9065

def r2683 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2683 : ¬ Reader r2683 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[2, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2, 1, 1], [2, 1], [2], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2683

def r2684 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2684 : ¬ Reader r2684 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[2, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2, 1, 1], [2, 1], [2], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2684

def r2685 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2685 : ¬ Reader r2685 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[2, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2, 1, 1], [2, 1], [2], [1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2685

def r2901 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2901 : ¬ Reader r2901 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2901

def r2902 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2902 : ¬ Reader r2902 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2902

def r2903 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2903 : ¬ Reader r2903 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2903

def r2904 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2904 : ¬ Reader r2904 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2904

def r2905 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2905 : ¬ Reader r2905 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2905

def r2906 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2906 : ¬ Reader r2906 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2906

def r2922 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2922 : ¬ Reader r2922 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1, 1], [1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2922

def r2923 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2923 : ¬ Reader r2923 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1, 1], [1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2923

def r2924 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2924 : ¬ Reader r2924 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1, 1], [1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2924

def r2964 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2964 : ¬ Reader r2964 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2964

def r2965 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2965 : ¬ Reader r2965 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2965

def r2966 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2966 : ¬ Reader r2966 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.var 0))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2966

def r3036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject3036 : ¬ Reader r3036 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 1], [2, 2, 1], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3036

def r3037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject3037 : ¬ Reader r3037 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 1], [2, 2, 1], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3037

def r3038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject3038 : ¬ Reader r3038 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 1], [2, 2, 1], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3038

def r3051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject3051 : ¬ Reader r3051 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], [2, 1], [2, 1], [2, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3051

def r3052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject3052 : ¬ Reader r3052 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], [2, 1], [2, 1], [2, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3052

def r3053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject3053 : ¬ Reader r3053 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], [2, 1], [2, 1], [2, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3053

def r3749 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject3749 : ¬ Reader r3749 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 2], [2, 2, 2], [], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3749

def r3750 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject3750 : ¬ Reader r3750 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 2], [2, 2, 2], [], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3750

def r3751 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject3751 : ¬ Reader r3751 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 2], [2, 2, 2], [], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3751

def r3752 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject3752 : ¬ Reader r3752 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 2], [2, 2, 2], [], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3752

def r3753 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject3753 : ¬ Reader r3753 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 2], [2, 2, 2], [], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3753

def r3754 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject3754 : ¬ Reader r3754 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 2], [2, 2, 2], [], [1]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3754

def r3791 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject3791 : ¬ Reader r3791 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3791

def r3792 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject3792 : ¬ Reader r3792 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3792

def r3793 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject3793 : ¬ Reader r3793 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3793

def r3794 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject3794 : ¬ Reader r3794 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3794

def r3795 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject3795 : ¬ Reader r3795 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3795

def r3796 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject3796 : ¬ Reader r3796 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3796

def r3809 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject3809 : ¬ Reader r3809 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3809

def r3810 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject3810 : ¬ Reader r3810 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3810

def r3811 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject3811 : ¬ Reader r3811 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3811

def r3812 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject3812 : ¬ Reader r3812 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3812

def r3813 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject3813 : ¬ Reader r3813 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3813

def r3814 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject3814 : ¬ Reader r3814 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3814

def r3827 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject3827 : ¬ Reader r3827 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3827

def r3828 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject3828 : ¬ Reader r3828 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3828

def r3829 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject3829 : ¬ Reader r3829 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3829

def r3830 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject3830 : ¬ Reader r3830 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3830

def r3831 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject3831 : ¬ Reader r3831 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3831

def r3832 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject3832 : ¬ Reader r3832 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3832

def r3875 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject3875 : ¬ Reader r3875 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3875

def r3876 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject3876 : ¬ Reader r3876 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3876

def r3877 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject3877 : ¬ Reader r3877 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3877

def r3878 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject3878 : ¬ Reader r3878 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3878

def r3879 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject3879 : ¬ Reader r3879 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3879

def r3880 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject3880 : ¬ Reader r3880 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3880

def r4151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4151 : ¬ Reader r4151 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [] (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4151

def r4152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4152 : ¬ Reader r4152 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [] (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4152

def r4153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4153 : ¬ Reader r4153 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1]] [] (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4153

def r4636 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4636 : ¬ Reader r4636 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4636

def r4637 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4637 : ¬ Reader r4637 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4637

def r4638 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4638 : ¬ Reader r4638 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 1))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4638

def r4905 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4905 : ¬ Reader r4905 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1], [1, 1, 2, 2], [1, 1, 2, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4905

def r4906 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4906 : ¬ Reader r4906 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1], [1, 1, 2, 2], [1, 1, 2, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4906

def r4907 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4907 : ¬ Reader r4907 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1], [1, 1, 2, 2], [1, 1, 2, 1], [1, 1, 1], [1, 1]] (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))), (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))] [(.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 1)))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4907

def r4908 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4908 : ¬ Reader r4908 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1]] [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4908

def r4909 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4909 : ¬ Reader r4909 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1]] [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4909

def r4910 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4910 : ¬ Reader r4910 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1]] [[1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 1]] (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))] [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4910

def r4929 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4929 : ¬ Reader r4929 := by
 exact mixed_reduct true [[1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4929

def r4930 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4930 : ¬ Reader r4930 := by
 exact mixed_reduct true [[1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4930

def r4931 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4931 : ¬ Reader r4931 := by
 exact mixed_reduct true [[1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4931

def r4932 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4932 : ¬ Reader r4932 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4932

def r4933 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4933 : ¬ Reader r4933 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4933

def r4934 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4934 : ¬ Reader r4934 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4934

def r4959 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject4959 : ¬ Reader r4959 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4959

def r4960 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject4960 : ¬ Reader r4960 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4960

def r4961 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject4961 : ¬ Reader r4961 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 1, 2], [1, 1, 2]] (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4961

def r4968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4968 : ¬ Reader r4968 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 1, 1, 1, 2, 2, 0], [1, 1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2, 2], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))] [(.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))), (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4968

def r4969 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4969 : ¬ Reader r4969 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 1, 1, 1, 2, 2, 0], [1, 1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2, 2], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))] [(.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))), (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4969

def r4970 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4970 : ¬ Reader r4970 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 1, 1, 1, 2, 2, 0], [1, 1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1, 1]] [[1], [1, 1, 1], [1, 1, 1, 2, 2], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))), (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))] [(.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))), (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4970

def r4983 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject4983 : ¬ Reader r4983 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 2, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[2, 2], [2, 2], [2, 1], [2, 1], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4983

def r4984 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject4984 : ¬ Reader r4984 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 2, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[2, 2], [2, 2], [2, 1], [2, 1], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4984

def r4985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject4985 : ¬ Reader r4985 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 2, 2], [1, 1, 1, 1, 2, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[2, 2], [2, 2], [2, 1], [2, 1], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))) (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject4985

def r5010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5010 : ¬ Reader r5010 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5010

def r5011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5011 : ¬ Reader r5011 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5011

def r5012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5012 : ¬ Reader r5012 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5012

def r5028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject5028 : ¬ Reader r5028 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))] [(.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5028

def r5029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject5029 : ¬ Reader r5029 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))] [(.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5029

def r5030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject5030 : ¬ Reader r5030 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))] [(.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5030

def r5121 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5121 : ¬ Reader r5121 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5121

def r5122 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5122 : ¬ Reader r5122 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5122

def r5123 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5123 : ¬ Reader r5123 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5123

def r5186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject5186 : ¬ Reader r5186 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5186

def r5187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject5187 : ¬ Reader r5187 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5187

def r5188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject5188 : ¬ Reader r5188 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5188

def r5195 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject5195 : ¬ Reader r5195 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5195

def r5196 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject5196 : ¬ Reader r5196 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5196

def r5197 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject5197 : ¬ Reader r5197 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5197

def r5537 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5537 : ¬ Reader r5537 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5537

def r5538 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5538 : ¬ Reader r5538 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5538

def r5539 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5539 : ¬ Reader r5539 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2], [2, 1, 2], []] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))))) (.lam (.var 0)))))) (.lam (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5539

def r5552 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5552 : ¬ Reader r5552 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2, 0], [2, 1, 2, 0], [2, 1, 2, 0, 1], [2, 1, 2, 0], [2, 1, 2, 0], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5552

def r5553 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5553 : ¬ Reader r5553 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2, 0], [2, 1, 2, 0], [2, 1, 2, 0, 1], [2, 1, 2, 0], [2, 1, 2, 0], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5553

def r5554 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5554 : ¬ Reader r5554 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 2, 0], [2, 1, 2, 0], [2, 1, 2, 0, 1], [2, 1, 2, 0], [2, 1, 2, 0], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5554

def r5555 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5555 : ¬ Reader r5555 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5555

def r5556 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5556 : ¬ Reader r5556 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5556

def r5557 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5557 : ¬ Reader r5557 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5557

def r5558 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5558 : ¬ Reader r5558 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5558

def r5559 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5559 : ¬ Reader r5559 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5559

def r5560 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5560 : ¬ Reader r5560 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5560

def r5579 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5579 : ¬ Reader r5579 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2, 1], [1, 2], [1, 2], [1], [1, 1], [1], [1], [], [], [2], [1, 2], [1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5579

def r5580 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5580 : ¬ Reader r5580 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2, 1], [1, 2], [1, 2], [1], [1, 1], [1], [1], [], [], [2], [1, 2], [1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5580

def r5581 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5581 : ¬ Reader r5581 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2, 1], [1, 2], [1, 2], [1], [1, 1], [1], [1], [], [], [2], [1, 2], [1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5581

def r5582 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5582 : ¬ Reader r5582 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2, 1], [2, 2], [2], [2, 1], [2], [1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5582

def r5583 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5583 : ¬ Reader r5583 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2, 1], [2, 2], [2], [2, 1], [2], [1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5583

def r5584 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5584 : ¬ Reader r5584 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2, 1], [2, 2], [2], [2, 1], [2], [1], [1, 2, 2], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5584

def r5600 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5600 : ¬ Reader r5600 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 1], [2], [1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0))), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5600

def r5601 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5601 : ¬ Reader r5601 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 1], [2], [1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0))), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5601

def r5602 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5602 : ¬ Reader r5602 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 1], [2], [1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0)))))) [(.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))))), (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))))) (.lam (.var 0))), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5602

def r5609 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5609 : ¬ Reader r5609 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5609

def r5610 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5610 : ¬ Reader r5610 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5610

def r5611 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5611 : ¬ Reader r5611 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2, 1, 1], [1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5611

def r5645 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5645 : ¬ Reader r5645 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0)), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5645

def r5646 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5646 : ¬ Reader r5646 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0)), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5646

def r5647 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5647 : ¬ Reader r5647 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))) [(.lam (.var 0)), (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5647

def r5672 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject5672 : ¬ Reader r5672 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1], [1], [1, 1, 2], [1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5672

def r5673 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject5673 : ¬ Reader r5673 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1], [1], [1, 1, 2], [1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5673

def r5674 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject5674 : ¬ Reader r5674 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1], [1], [1], [1, 1, 2], [1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))), (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5674

def r5675 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject5675 : ¬ Reader r5675 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1, 1], [1, 2, 1], [1, 2], [1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5675

def r5676 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject5676 : ¬ Reader r5676 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1, 1], [1, 2, 1], [1, 2], [1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5676

def r5677 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject5677 : ¬ Reader r5677 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1, 1], [1, 2, 1], [1, 2], [1, 1], [1, 1, 1, 2], [1, 1, 1, 1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0)))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5677

def r5702 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5702 : ¬ Reader r5702 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5702

def r5703 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5703 : ¬ Reader r5703 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5703

def r5704 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5704 : ¬ Reader r5704 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5704

def r5711 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject5711 : ¬ Reader r5711 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5711

def r5712 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject5712 : ¬ Reader r5712 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5712

def r5713 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject5713 : ¬ Reader r5713 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5713

def r7348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7348 : ¬ Reader r7348 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7348

def r7349 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7349 : ¬ Reader r7349 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7349

def r7350 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7350 : ¬ Reader r7350 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7350

def r11467 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11467 : ¬ Reader r11467 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11467

def r11468 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11468 : ¬ Reader r11468 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11468

def r11469 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11469 : ¬ Reader r11469 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11469

def r11470 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11470 : ¬ Reader r11470 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11470

def r11471 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11471 : ¬ Reader r11471 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11471

def r11472 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11472 : ¬ Reader r11472 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11472

def r7351 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7351 : ¬ Reader r7351 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7351

def r7352 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7352 : ¬ Reader r7352 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7352

def r7353 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7353 : ¬ Reader r7353 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7353

def r11473 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11473 : ¬ Reader r11473 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11473

def r11474 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11474 : ¬ Reader r11474 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11474

def r11475 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11475 : ¬ Reader r11475 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11475

def r11476 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11476 : ¬ Reader r11476 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11476

def r11477 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11477 : ¬ Reader r11477 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11477

def r11478 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11478 : ¬ Reader r11478 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11478

def r7363 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem reject7363 : ¬ Reader r7363 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7363

def r7364 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem reject7364 : ¬ Reader r7364 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7364

def r7365 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem reject7365 : ¬ Reader r7365 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7365

def r11497 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11497 : ¬ Reader r11497 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11497

def r11498 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11498 : ¬ Reader r11498 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11498

def r11499 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11499 : ¬ Reader r11499 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11499

def r11500 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11500 : ¬ Reader r11500 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11500

def r11501 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11501 : ¬ Reader r11501 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11501

def r11502 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11502 : ¬ Reader r11502 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11502

def r7393 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject7393 : ¬ Reader r7393 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7393

def r7394 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject7394 : ¬ Reader r7394 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7394

def r7395 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject7395 : ¬ Reader r7395 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7395

def r11617 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject11617 : ¬ Reader r11617 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11617

def r11618 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject11618 : ¬ Reader r11618 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11618

def r11619 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject11619 : ¬ Reader r11619 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11619

def r11620 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject11620 : ¬ Reader r11620 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11620

def r11621 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject11621 : ¬ Reader r11621 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11621

def r11622 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject11622 : ¬ Reader r11622 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11622

def r7736 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject7736 : ¬ Reader r7736 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7736

def r7737 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject7737 : ¬ Reader r7737 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7737

def r7738 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject7738 : ¬ Reader r7738 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7738

def r7739 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject7739 : ¬ Reader r7739 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7739

def r7740 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject7740 : ¬ Reader r7740 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7740

def r7741 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject7741 : ¬ Reader r7741 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7741

def r9736 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject9736 : ¬ Reader r9736 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9736

def r9737 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject9737 : ¬ Reader r9737 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9737

def r9738 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject9738 : ¬ Reader r9738 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9738

def r9739 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject9739 : ¬ Reader r9739 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9739

def r9740 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject9740 : ¬ Reader r9740 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9740

def r9741 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject9741 : ¬ Reader r9741 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] [[2], [2], [], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2)))))))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9741
end Blc.HandlerLet.XBasic37
