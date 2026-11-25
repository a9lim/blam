import Blc.SelfintFiniteChain
import Blc.SelfintResidual44.H44Base

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
private def sentinel (t : Term) : Nat := (blcCode t).foldl (fun n b => 2*n + if b then 1 else 0) 1
def opm1 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 1
  | 0,1 => 1
  | 1,0 => 1
  | 1,1 => 2
  | 2,0 => 1
  | _,_ => 3
def gm1 : Algebra 3 := ⟨opm1,0,by decide,by decide,by decide⟩
theorem bm1_0 : Typed gm1 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
theorem bm1_1 : Typed gm1 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
theorem sm1_0 : Typed gm1 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
theorem sm1_1 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bm1_0 sm1_0 (by decide) (by decide)
theorem sm1_2 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_1 (by decide) (by decide)
theorem sm1_3 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_2 (by decide) (by decide)
theorem sm1_4 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_3 (by decide) (by decide)
theorem sm1_5 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_4 (by decide) (by decide)
theorem sm1_6 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_5 (by decide) (by decide)
theorem sm1_7 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_6 (by decide) (by decide)
theorem sm1_8 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_7 (by decide) (by decide)
theorem sm1_9 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_8 (by decide) (by decide)
theorem sm1_10 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_9 (by decide) (by decide)
theorem sm1_11 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_10 (by decide) (by decide)
theorem sm1_12 : Typed gm1 (rho (n := 3) 0 0) (streamOf [true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_1 sm1_11 (by decide) (by decide)
theorem sm1_13 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_12 (by decide) (by decide)
theorem sm1_14 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_13 (by decide) (by decide)
theorem sm1_15 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_14 (by decide) (by decide)
theorem sm1_16 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_15 (by decide) (by decide)
theorem sm1_17 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_16 (by decide) (by decide)
theorem sm1_18 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_17 (by decide) (by decide)
theorem sm1_19 : Typed gm1 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade bm1_0 sm1_18 (by decide) (by decide)

def ob1_0 : Term := .var 0
def ob1_1 : Term := .var 2
def ob1_2 : Term := .var 1
def ob1_3 : Term := .app ob1_2 ob1_0
def ob1_4 : Term := .app ob1_1 ob1_3
def ob1_5 : Term := .lam ob1_2
def ob1_6 : Term := .app ob1_4 ob1_5
def ob1_7 : Term := .lam ob1_6
def ob1_8 : Term := .lam ob1_7
def ob1_9 : Term := .app ob1_0 ob1_8
def ob1_10 : Term := .lam ob1_9
def ob1_11 : Term := .app ob1_10 ob1_3
def ob1_12 : Term := .app ob1_11 ob1_5
def ob1_13 : Term := .lam ob1_12
def ob1_14 : Term := .lam ob1_13
def ob1_15 : Term := .app ob1_1 ob1_2
def ob1_16 : Term := .app ob1_15 ob1_0
def ob1_17 : Term := .app ob1_10 ob1_16
def ob1_18 : Term := .app ob1_17 ob1_5
def ob1_19 : Term := .lam ob1_18
def ob1_20 : Term := .app ob1_19 ob1_5
def ob1_21 : Term := .lam ob1_20
def ob1_22 : Term := .lam ob1_21
def ob1_23 : Term := .app ob1_14 ob1_22
def ob1_24 : Term := .app ob1_23 ob1_10
end Blc.H44Chain
