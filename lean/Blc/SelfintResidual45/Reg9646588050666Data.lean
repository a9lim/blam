import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9646588050666
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 8,.lam 4,.app 5 6,.var 0,.lam 7,.var 1,.lam 9,.lam 10,.app 11 21,.app 12 15]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.var 0,.lam 16,.app 17 18,.var 2,.app 19 20,.var 1,.var 0,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit17 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit18 : Term := .app lit50 lit47
def lit48 : Term := .lam lit49
def lit4 : Term := .app lit47 lit49
def lit39 : Term := .app lit47 lit41
def lit3 : Term := .lam lit4
def lit46 : Term := .app lit47 lit48
def lit16 : Term := .app lit17 lit18
def lit15 : Term := .lam lit16
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit11 : Term := .app lit18 lit15
def lit10 : Term := .app lit11 lit47
def lit9 : Term := .lam lit10
def lit8 : Term := .lam lit9
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit8
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit49,lit50,lit8,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit18,lit50,lit47,lit15,lit16,lit17,lit18,lit50,lit47,lit47,lit50,lit23]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit24,lit46,lit47,lit48,lit49,lit50,lit30,lit31,lit46,lit47,lit48,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit50,lit37,lit38,lit39,lit47,lit41,lit42,lit47,lit44,lit45,lit46,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50,lit51]
def getTerm (i : Nat) : Term := if i < 52 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 52 := RegProof.block (n := 2) (by decide +kernel)
theorem alAll : RegProof.Span align 0 52 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 52
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨14,[3,2]⟩,⟨18,[0,3,2]⟩],[⟨8,[]⟩],[⟨6,[1]⟩,⟨15,[3,2]⟩],[⟨21,[3,2]⟩,⟨22,[]⟩]]
def values (i : Nat) : List AClo := if i < 4 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[3,2]⟩,1⟩],[⟨⟨15,[3,2]⟩,3⟩],[⟨⟨14,[3,2]⟩,4⟩],[⟨⟨18,[0,3,2]⟩,4⟩],[⟨⟨8,[]⟩,2⟩],[⟨⟨6,[1]⟩,2⟩]]
def konts (i : Nat) : List Frame := if i < 9 then kontsB0 i else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,7⟩,⟨⟨4,[1]⟩,2⟩,⟨⟨5,[1]⟩,8⟩,⟨⟨6,[1]⟩,5⟩,⟨⟨6,[1]⟩,6⟩,⟨⟨7,[0,1]⟩,4⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,8⟩,⟨⟨9,[2]⟩,2⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[2]⟩,3⟩,⟨⟨10,[3,2]⟩,1⟩,⟨⟨11,[3,2]⟩,3⟩,⟨⟨12,[3,2]⟩,4⟩,⟨⟨13,[3,2]⟩,5⟩,⟨⟨15,[3,2]⟩,5⟩,⟨⟨15,[3,2]⟩,6⟩,⟨⟨16,[0,3,2]⟩,4⟩,⟨⟨17,[0,3,2]⟩,6⟩]
def getSt (i : Nat) : AState := if i < 21 then (if i < 12 then getStB0 i else getStB12 i) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[10],[8],[8],[9],[12],[11],[13]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[13],[14],[15],[16],[6,17],[19],[19],[20],[7,18]]
def hints (i : Nat) : List Nat := if i < 21 then (if i < 12 then hintsB0 i else hintsB12 i) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 21 getSt) i (hints i)
end Blc.Floor45.Reg9646588050666
