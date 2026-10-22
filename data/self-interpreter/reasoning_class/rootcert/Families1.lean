import Grow
namespace Blc.Rootcert.Families1
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetGrow BodyLetSpecial
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r287 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject287 : ¬ Reader r287 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject287

def r288 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject288 : ¬ Reader r288 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject288

def r289 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject289 : ¬ Reader r289 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 2) (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject289

def r290 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject290 : ¬ Reader r290 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 1) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject290

def r291 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject291 : ¬ Reader r291 := by
 exact grow_reduct true [[1], [1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject291

def r292 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject292 : ¬ Reader r292 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.var 2)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject292

def r293 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject293 : ¬ Reader r293 := by
 exact grow_reduct true [[1], [1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.var 2)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject293

def r294 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject294 : ¬ Reader r294 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject294

def r295 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject295 : ¬ Reader r295 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject295

def r296 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject296 : ¬ Reader r296 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject296

def r297 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject297 : ¬ Reader r297 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject297

def r298 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject298 : ¬ Reader r298 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.var 2)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject298

def r299 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject299 : ¬ Reader r299 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject299

def r300 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject300 : ¬ Reader r300 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 2)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject300

def r301 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject301 : ¬ Reader r301 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject301

def r302 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject302 : ¬ Reader r302 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject302

def r303 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject303 : ¬ Reader r303 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject303

def r304 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject304 : ¬ Reader r304 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject304

def r305 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject305 : ¬ Reader r305 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject305

def r306 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject306 : ¬ Reader r306 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject306

def r307 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject307 : ¬ Reader r307 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject307

def r308 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject308 : ¬ Reader r308 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject308

def r309 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject309 : ¬ Reader r309 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject309

def r310 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject310 : ¬ Reader r310 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject310

def r311 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject311 : ¬ Reader r311 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject311

def r312 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject312 : ¬ Reader r312 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject312

def r313 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject313 : ¬ Reader r313 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject313

def r314 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject314 : ¬ Reader r314 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject314

def r315 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject315 : ¬ Reader r315 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject315

def r316 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject316 : ¬ Reader r316 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject316

def r317 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject317 : ¬ Reader r317 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject317

def r318 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject318 : ¬ Reader r318 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject318

def r319 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject319 : ¬ Reader r319 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject319

def r320 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject320 : ¬ Reader r320 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject320

def r321 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject321 : ¬ Reader r321 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.var 1))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject321

def r322 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject322 : ¬ Reader r322 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 2))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject322

def r323 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject323 : ¬ Reader r323 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 1), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1)) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject323

def r324 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject324 : ¬ Reader r324 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 0), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 2)) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject324

def r325 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject325 : ¬ Reader r325 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject325

def r326 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject326 : ¬ Reader r326 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject326

def r327 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject327 : ¬ Reader r327 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject327

def r328 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject328 : ¬ Reader r328 := by
 exact grow_reduct true [[1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject328

def r329 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject329 : ¬ Reader r329 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject329

def r330 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject330 : ¬ Reader r330 := by
 exact grow_reduct true [[1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject330

def r331 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject331 : ¬ Reader r331 := by
 exact grow_reduct true [[1], [1, 1], [1, 1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject331

def r332 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject332 : ¬ Reader r332 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject332

def r333 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject333 : ¬ Reader r333 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject333

def r334 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject334 : ¬ Reader r334 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject334

def r335 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject335 : ¬ Reader r335 := by
 exact grow_reduct true [[1], [1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject335

def r336 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject336 : ¬ Reader r336 := by
 exact grow_reduct true [[1], [1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject336

def r337 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject337 : ¬ Reader r337 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject337

def r338 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject338 : ¬ Reader r338 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject338

def r339 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject339 : ¬ Reader r339 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject339

def r340 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject340 : ¬ Reader r340 := by
 exact grow_reduct true [[1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject340

def r341 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject341 : ¬ Reader r341 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject341

def r342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject342 : ¬ Reader r342 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject342

def r343 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject343 : ¬ Reader r343 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject343

def r344 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject344 : ¬ Reader r344 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject344

def r345 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject345 : ¬ Reader r345 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject345

def r346 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject346 : ¬ Reader r346 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject346

def r347 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject347 : ¬ Reader r347 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject347

def r348 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject348 : ¬ Reader r348 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject348

def r349 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject349 : ¬ Reader r349 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject349

def r350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject350 : ¬ Reader r350 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject350

def r351 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject351 : ¬ Reader r351 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject351

def r352 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject352 : ¬ Reader r352 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject352

def r353 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject353 : ¬ Reader r353 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject353

def r354 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject354 : ¬ Reader r354 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject354

def r355 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject355 : ¬ Reader r355 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject355

def r356 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject356 : ¬ Reader r356 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject356

def r357 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject357 : ¬ Reader r357 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject357

def r358 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject358 : ¬ Reader r358 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject358

def r359 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject359 : ¬ Reader r359 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject359

def r360 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject360 : ¬ Reader r360 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject360

def r361 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject361 : ¬ Reader r361 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject361

def r362 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject362 : ¬ Reader r362 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject362

def r363 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject363 : ¬ Reader r363 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject363

def r364 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject364 : ¬ Reader r364 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject364

def r365 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject365 : ¬ Reader r365 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject365

def r366 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject366 : ¬ Reader r366 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject366

def r367 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject367 : ¬ Reader r367 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject367

def r368 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject368 : ¬ Reader r368 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject368

def r369 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject369 : ¬ Reader r369 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject369

def r370 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject370 : ¬ Reader r370 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject370

def r371 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject371 : ¬ Reader r371 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject371

def r372 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject372 : ¬ Reader r372 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject372

def r373 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject373 : ¬ Reader r373 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject373

def r374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject374 : ¬ Reader r374 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject374

def r375 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject375 : ¬ Reader r375 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject375

def r376 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject376 : ¬ Reader r376 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject376

def r377 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject377 : ¬ Reader r377 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject377

def r378 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject378 : ¬ Reader r378 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject378

def r379 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject379 : ¬ Reader r379 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject379

def r380 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject380 : ¬ Reader r380 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject380

def r381 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject381 : ¬ Reader r381 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject381

def r382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject382 : ¬ Reader r382 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject382

def r383 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject383 : ¬ Reader r383 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject383

def r384 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject384 : ¬ Reader r384 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject384

def r385 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject385 : ¬ Reader r385 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject385

def r386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject386 : ¬ Reader r386 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject386

def r387 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject387 : ¬ Reader r387 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject387

def r388 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject388 : ¬ Reader r388 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject388

def r389 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject389 : ¬ Reader r389 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject389

def r390 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject390 : ¬ Reader r390 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject390

def r391 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject391 : ¬ Reader r391 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject391

def r392 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject392 : ¬ Reader r392 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject392

def r393 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject393 : ¬ Reader r393 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject393

def r394 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject394 : ¬ Reader r394 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject394

def r395 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject395 : ¬ Reader r395 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject395

def r396 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject396 : ¬ Reader r396 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject396

def r397 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject397 : ¬ Reader r397 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject397

def r398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject398 : ¬ Reader r398 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject398

def r399 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject399 : ¬ Reader r399 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject399

def r400 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject400 : ¬ Reader r400 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject400

def r401 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject401 : ¬ Reader r401 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject401

def r402 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject402 : ¬ Reader r402 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject402

def r403 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject403 : ¬ Reader r403 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject403

def r404 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject404 : ¬ Reader r404 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject404

def r405 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject405 : ¬ Reader r405 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject405

def r406 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject406 : ¬ Reader r406 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject406

def r407 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject407 : ¬ Reader r407 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject407

def r408 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject408 : ¬ Reader r408 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject408

def r409 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject409 : ¬ Reader r409 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject409

def r410 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject410 : ¬ Reader r410 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject410

def r411 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject411 : ¬ Reader r411 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject411

def r412 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject412 : ¬ Reader r412 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject412

def r413 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject413 : ¬ Reader r413 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.var 0)), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject413

def r414 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject414 : ¬ Reader r414 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.var 1)), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject414

def r415 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject415 : ¬ Reader r415 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject415

def r416 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject416 : ¬ Reader r416 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject416

def r417 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject417 : ¬ Reader r417 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject417

def r418 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject418 : ¬ Reader r418 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject418

def r419 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject419 : ¬ Reader r419 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject419

def r420 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject420 : ¬ Reader r420 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject420

def r421 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject421 : ¬ Reader r421 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject421

def r422 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject422 : ¬ Reader r422 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject422

def r423 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject423 : ¬ Reader r423 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject423

def r424 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject424 : ¬ Reader r424 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject424

def r425 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject425 : ¬ Reader r425 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject425

def r426 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject426 : ¬ Reader r426 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject426

def r427 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject427 : ¬ Reader r427 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject427

def r428 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject428 : ¬ Reader r428 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject428

def r429 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject429 : ¬ Reader r429 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject429

def r430 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject430 : ¬ Reader r430 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject430

def r431 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject431 : ¬ Reader r431 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject431

def r432 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject432 : ¬ Reader r432 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject432

def r433 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject433 : ¬ Reader r433 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject433

def r434 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject434 : ¬ Reader r434 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject434

def r435 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject435 : ¬ Reader r435 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject435

def r436 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject436 : ¬ Reader r436 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject436
end Blc.Rootcert.Families1
