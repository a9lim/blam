import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9673138959606
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 12,.lam 4,.app 5 6,.var 0,.app 7 8,.var 0,.lam 9,.app 10 11,.var 0,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.lam 15,.app 16 19,.app 17 18,.var 2,.var 0,.app 20 21,.var 2,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit20 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit9 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit8 : Term := .lam lit9
def lit16 : Term := .app lit20 lit47
def lit19 : Term := .app lit20 lit50
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit6 : Term := .app lit47 lit8
def lit4 : Term := .app lit47 lit6
def lit3 : Term := .lam lit4
def lit15 : Term := .app lit16 lit19
def lit45 : Term := .app lit46 lit51
def lit14 : Term := .lam lit15
def lit44 : Term := .lam lit45
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit12
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit6,lit47,lit8,lit9,lit47,lit47]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit20,lit47,lit19,lit20,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨6,[8]⟩],[⟨8,[8]⟩],[⟨22,[]⟩],[⟨18,[5,2,0]⟩],[⟨21,[5,2,0]⟩],[⟨23,[]⟩],[⟨19,[5,2,0]⟩],[⟨11,[9,8]⟩],[⟨12,[]⟩],[⟨18,[6,3,1]⟩,⟨18,[7,4,1]⟩]]
def values (i : Nat) : List AClo := if i < 10 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨19,[5,2,0]⟩,0⟩],[⟨⟨19,[6,3,1]⟩,0⟩],[⟨⟨19,[7,4,1]⟩,4⟩,⟨⟨19,[7,4,1]⟩,5⟩],[⟨⟨18,[5,2,0]⟩,3⟩],[⟨⟨18,[6,3,1]⟩,4⟩],[⟨⟨18,[7,4,1]⟩,5⟩],[⟨⟨21,[5,2,0]⟩,14⟩],[⟨⟨12,[]⟩,2⟩],[⟨⟨6,[8]⟩,2⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨8,[8]⟩,6⟩],[⟨⟨8,[8]⟩,9⟩],[⟨⟨11,[9,8]⟩,4⟩,⟨⟨11,[9,8]⟩,5⟩]]
def konts (i : Nat) : List Frame := if i < 15 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,10⟩,⟨⟨4,[8]⟩,2⟩,⟨⟨5,[8]⟩,11⟩,⟨⟨6,[8]⟩,6⟩,⟨⟨6,[8]⟩,9⟩,⟨⟨7,[8]⟩,12⟩,⟨⟨7,[8]⟩,13⟩,⟨⟨8,[8]⟩,7⟩,⟨⟨8,[8]⟩,8⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[9,8]⟩,4⟩,⟨⟨9,[9,8]⟩,5⟩,⟨⟨10,[9,8]⟩,14⟩,⟨⟨11,[9,8]⟩,14⟩,⟨⟨12,[]⟩,11⟩,⟨⟨12,[]⟩,12⟩,⟨⟨12,[]⟩,13⟩,⟨⟨13,[0]⟩,2⟩,⟨⟨13,[1]⟩,6⟩,⟨⟨13,[1]⟩,9⟩,⟨⟨14,[2,0]⟩,1⟩,⟨⟨14,[3,1]⟩,3⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨14,[4,1]⟩,14⟩,⟨⟨15,[5,2,0]⟩,0⟩,⟨⟨15,[6,3,1]⟩,0⟩,⟨⟨15,[7,4,1]⟩,4⟩,⟨⟨15,[7,4,1]⟩,5⟩,⟨⟨16,[5,2,0]⟩,3⟩,⟨⟨16,[6,3,1]⟩,4⟩,⟨⟨16,[7,4,1]⟩,5⟩,⟨⟨17,[5,2,0]⟩,6⟩,⟨⟨17,[6,3,1]⟩,7⟩,⟨⟨17,[7,4,1]⟩,8⟩,⟨⟨18,[6,3,1]⟩,14⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨18,[7,4,1]⟩,14⟩,⟨⟨19,[5,2,0]⟩,14⟩,⟨⟨20,[5,2,0]⟩,9⟩]
def getSt (i : Nat) : AState := if i < 39 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[16],[8],[9],[17],[18],[12],[13]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[14],[14],[35,36],[35,36],[19],[20],[21],[22],[23],[24],[25],[26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27,28],[29],[30],[31],[31],[32],[33],[34],[6],[10],[11],[37]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[15],[38],[7]]
def hints (i : Nat) : List Nat := if i < 39 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 39 getSt) i (hints i)
end Blc.Floor45.Reg9673138959606
