import Grow
namespace Blc.Rootcert.Families2
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetGrow BodyLetSpecial
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r437 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject437 : ¬ Reader r437 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject437

def r438 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject438 : ¬ Reader r438 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject438

def r439 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject439 : ¬ Reader r439 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject439

def r440 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject440 : ¬ Reader r440 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject440

def r441 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject441 : ¬ Reader r441 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject441

def r442 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject442 : ¬ Reader r442 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject442

def r443 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject443 : ¬ Reader r443 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject443

def r444 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject444 : ¬ Reader r444 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject444

def r445 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject445 : ¬ Reader r445 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject445

def r446 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject446 : ¬ Reader r446 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject446

def r447 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject447 : ¬ Reader r447 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject447

def r448 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject448 : ¬ Reader r448 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject448

def r449 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject449 : ¬ Reader r449 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject449

def r450 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject450 : ¬ Reader r450 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject450

def r451 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject451 : ¬ Reader r451 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject451

def r452 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject452 : ¬ Reader r452 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject452

def r453 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject453 : ¬ Reader r453 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject453

def r454 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject454 : ¬ Reader r454 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject454

def r455 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject455 : ¬ Reader r455 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject455

def r456 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject456 : ¬ Reader r456 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject456

def r457 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject457 : ¬ Reader r457 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject457

def r458 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject458 : ¬ Reader r458 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject458

def r459 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject459 : ¬ Reader r459 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject459

def r460 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject460 : ¬ Reader r460 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject460

def r461 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject461 : ¬ Reader r461 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject461

def r462 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject462 : ¬ Reader r462 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject462

def r463 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject463 : ¬ Reader r463 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject463

def r464 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject464 : ¬ Reader r464 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject464

def r465 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject465 : ¬ Reader r465 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject465

def r466 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject466 : ¬ Reader r466 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject466

def r467 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject467 : ¬ Reader r467 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject467

def r468 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject468 : ¬ Reader r468 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject468

def r469 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject469 : ¬ Reader r469 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject469

def r470 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject470 : ¬ Reader r470 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject470

def r471 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject471 : ¬ Reader r471 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject471

def r472 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject472 : ¬ Reader r472 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject472

def r473 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject473 : ¬ Reader r473 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject473

def r474 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject474 : ¬ Reader r474 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject474

def r475 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject475 : ¬ Reader r475 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject475

def r476 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject476 : ¬ Reader r476 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject476

def r477 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject477 : ¬ Reader r477 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject477

def r478 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject478 : ¬ Reader r478 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject478

def r479 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject479 : ¬ Reader r479 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject479

def r480 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject480 : ¬ Reader r480 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject480

def r481 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject481 : ¬ Reader r481 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject481

def r482 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject482 : ¬ Reader r482 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject482

def r483 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject483 : ¬ Reader r483 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject483

def r484 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject484 : ¬ Reader r484 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject484

def r485 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject485 : ¬ Reader r485 := by
 exact grow_reduct true [[1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject485

def r486 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject486 : ¬ Reader r486 := by
 exact grow_reduct true [[1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject486

def r487 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject487 : ¬ Reader r487 := by
 exact grow_reduct true [[1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject487

def r488 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject488 : ¬ Reader r488 := by
 intro hr
 have he : betaSteps [[1], [1], [], [1]] (.app r488 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject488

def r489 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject489 : ¬ Reader r489 := by
 intro hr
 have he : betaSteps [[1], [1], [], [1]] (.app r489 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.var 1))) [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject489

def r490 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject490 : ¬ Reader r490 := by
 intro hr
 have he : betaSteps [[1], [1], [], [1]] (.app r490 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.var 1)) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject490

def r491 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject491 : ¬ Reader r491 := by
 intro hr
 have he : betaSteps [[1], [1], [], [1]] (.app r491 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.var 3), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject491

def r492 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject492 : ¬ Reader r492 := by
 intro hr
 have he : betaSteps [[1], [1, 1], [1]] (.app r492 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) [(.app (.var 0) (.var 1)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject492

def r493 : Term := (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject493 : ¬ Reader r493 := by
 intro hr
 have he : betaSteps [[1], [1, 1], [1]] (.app r493 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.app (.var 1) (.var 0)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject493

def r494 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject494 : ¬ Reader r494 := by
 intro hr
 have he : betaSteps [[1]] (.app r494 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.var 1)) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject494

def r495 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject495 : ¬ Reader r495 := by
 intro hr
 have he : betaSteps [[1]] (.app r495 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.var 1)) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject495

def r496 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject496 : ¬ Reader r496 := by
 intro hr
 have he : betaSteps [[1]] (.app r496 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject496

def r497 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject497 : ¬ Reader r497 := by
 intro hr
 have he : betaSteps [[1]] (.app r497 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject497

def r498 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject498 : ¬ Reader r498 := by
 intro hr
 have he : betaSteps [[1]] (.app r498 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject498

def r499 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject499 : ¬ Reader r499 := by
 intro hr
 have he : betaSteps [[1]] (.app r499 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject499

def r500 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject500 : ¬ Reader r500 := by
 intro hr
 have he : betaSteps [[1]] (.app r500 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject500

def r501 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject501 : ¬ Reader r501 := by
 intro hr
 have he : betaSteps [[1]] (.app r501 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.var 1)))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject501

def r502 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject502 : ¬ Reader r502 := by
 intro hr
 have he : betaSteps [[1]] (.app r502 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject502

def r503 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject503 : ¬ Reader r503 := by
 intro hr
 have he : betaSteps [[1]] (.app r503 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject503

def r504 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject504 : ¬ Reader r504 := by
 intro hr
 have he : betaSteps [[1]] (.app r504 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject504

def r505 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject505 : ¬ Reader r505 := by
 intro hr
 have he : betaSteps [[1]] (.app r505 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject505

def r506 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject506 : ¬ Reader r506 := by
 intro hr
 have he : betaSteps [[1]] (.app r506 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject506

def r507 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject507 : ¬ Reader r507 := by
 intro hr
 have he : betaSteps [[1]] (.app r507 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))) [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject507

def r508 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject508 : ¬ Reader r508 := by
 intro hr
 have he : betaSteps [[1]] (.app r508 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject508

def r509 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject509 : ¬ Reader r509 := by
 intro hr
 have he : betaSteps [[1]] (.app r509 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject509

def r510 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject510 : ¬ Reader r510 := by
 intro hr
 have he : betaSteps [[1]] (.app r510 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.var 1))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject510

def r511 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject511 : ¬ Reader r511 := by
 intro hr
 have he : betaSteps [[1]] (.app r511 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.var 1))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject511

def r512 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject512 : ¬ Reader r512 := by
 intro hr
 have he : betaSteps [[1]] (.app r512 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.var 1)) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject512

def r513 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject513 : ¬ Reader r513 := by
 intro hr
 have he : betaSteps [[1]] (.app r513 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.var 1)) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject513

def r514 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject514 : ¬ Reader r514 := by
 exact grow_reduct true [[1], [1], [1, 1]] [(.var 0)] [] [] [(.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2)) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject514

def r515 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject515 : ¬ Reader r515 := by
 exact grow_reduct true [[1], [1]] [(.var 0)] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject515

def r516 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject516 : ¬ Reader r516 := by
 exact grow_reduct true [[1], [1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.var 2))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject516

def r517 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject517 : ¬ Reader r517 := by
 exact grow_reduct true [[1], [1]] [(.var 0)] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject517

def r518 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject518 : ¬ Reader r518 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 2)) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject518

def r519 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject519 : ¬ Reader r519 := by
 exact grow_reduct true [[1], [1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2)) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject519

def r520 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject520 : ¬ Reader r520 := by
 exact grow_reduct true [[1], [1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject520

def r521 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject521 : ¬ Reader r521 := by
 exact grow_reduct true [[1], [1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject521

def r522 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject522 : ¬ Reader r522 := by
 exact grow_reduct true [[1], [1, 1]] [(.var 0)] [] [] [(.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2)) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject522

def r523 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject523 : ¬ Reader r523 := by
 exact grow_reduct true [[1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject523

def r524 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject524 : ¬ Reader r524 := by
 intro hr
 have he : betaSteps [[1], [1, 1], [1]] (.app r524 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.var 1)) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject524

def r525 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject525 : ¬ Reader r525 := by
 intro hr
 have he : betaSteps [[1], [1, 1], [1, 1, 0, 1, 2], [1]] (.app r525 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.var 1)) [(.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject525

def r526 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject526 : ¬ Reader r526 := by
 intro hr
 have he : betaSteps [[1]] (.app r526 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject526

def r527 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject527 : ¬ Reader r527 := by
 intro hr
 have he : betaSteps [[1]] (.app r527 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject527

def r528 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject528 : ¬ Reader r528 := by
 intro hr
 have he : betaSteps [[1]] (.app r528 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject528

def r529 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject529 : ¬ Reader r529 := by
 intro hr
 have he : betaSteps [[1]] (.app r529 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject529

def r530 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem reject530 : ¬ Reader r530 := by
 intro hr
 have he : betaSteps [[1]] (.app r530 Z) = some (spine (templateState (.app (.var 2) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) [(.var 1), (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject530

def r531 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem reject531 : ¬ Reader r531 := by
 intro hr
 have he : betaSteps [[1]] (.app r531 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.var 1), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject531

def r532 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject532 : ¬ Reader r532 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject532

def r533 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject533 : ¬ Reader r533 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject533

def r534 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject534 : ¬ Reader r534 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject534

def r535 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject535 : ¬ Reader r535 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject535

def r536 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject536 : ¬ Reader r536 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject536

def r537 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject537 : ¬ Reader r537 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject537

def r538 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject538 : ¬ Reader r538 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject538

def r539 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject539 : ¬ Reader r539 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject539

def r540 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject540 : ¬ Reader r540 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject540

def r541 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject541 : ¬ Reader r541 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject541

def r542 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject542 : ¬ Reader r542 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject542

def r543 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject543 : ¬ Reader r543 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject543

def r544 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem reject544 : ¬ Reader r544 := by
 exact grow_reduct true [[1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject544

def r547 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject547 : ¬ Reader r547 := by
 exact grow_reduct true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 2, 0, 1], [1, 1, 2, 0], [1, 1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject547

def r548 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject548 : ¬ Reader r548 := by
 exact grow_reduct true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 2, 0, 1], [1, 1, 2, 0], [1, 1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject548

def r549 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject549 : ¬ Reader r549 := by
 exact grow_reduct true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 2, 0, 1, 1], [1, 1, 2, 0, 1], [1, 1, 2, 0, 1], [1, 1, 2, 0], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 2, 0], [1, 1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject549

def r550 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject550 : ¬ Reader r550 := by
 exact grow_reduct true [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 2, 0], [1, 1, 1], [1, 1], [1, 1, 2, 0, 1], [1, 1, 2, 0], [1, 1, 1]] [] [] [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject550

def r551 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject551 : ¬ Reader r551 := by
 exact grow_reduct true [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1, 1]] [] [] [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject551

def r556 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject556 : ¬ Reader r556 := by
 exact grow_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject556

def r557 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject557 : ¬ Reader r557 := by
 exact grow_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject557

def r558 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject558 : ¬ Reader r558 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject558

def r559 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject559 : ¬ Reader r559 := by
 exact grow_reduct true [[1, 1, 1], [1, 1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject559

def r560 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject560 : ¬ Reader r560 := by
 exact grow_reduct true [[1, 1, 1], [1, 1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject560

def r561 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject561 : ¬ Reader r561 := by
 exact grow_reduct true [[1, 1], [1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject561

def r562 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject562 : ¬ Reader r562 := by
 exact grow_reduct true [[1, 1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject562

def r563 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject563 : ¬ Reader r563 := by
 exact grow_reduct true [[1, 1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject563

def r564 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject564 : ¬ Reader r564 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject564

def r574 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject574 : ¬ Reader r574 := by
 exact grow_reduct true [[1, 1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject574

def r575 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject575 : ¬ Reader r575 := by
 exact grow_reduct true [[1, 1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject575

def r576 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject576 : ¬ Reader r576 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject576

def r577 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject577 : ¬ Reader r577 := by
 exact grow_reduct true [[1, 1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject577

def r578 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject578 : ¬ Reader r578 := by
 exact grow_reduct true [[1, 1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject578

def r579 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject579 : ¬ Reader r579 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 0) (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject579
end Blc.Rootcert.Families2
