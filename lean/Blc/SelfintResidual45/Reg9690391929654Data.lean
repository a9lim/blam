import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391929654
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 19,.app 14 15,.var 2,.app 16 17,.var 0,.lam 18,.var 1,.app 20 21,.var 0,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit14 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit19 : Term := .app lit47 lit50
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit15 : Term := .app lit47 lit49
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit13 : Term := .app lit14 lit15
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit13 lit19
def lit11 : Term := .lam lit12
def lit9 : Term := .app lit50 lit11
def lit8 : Term := .lam lit9
def lit38 : Term := .app lit39 lit44
def lit7 : Term := .lam lit8
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit7
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit47,lit7,lit8,lit9,lit50,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit47,lit49,lit50,lit19,lit47,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨15,[1,8,7]⟩],[⟨17,[0,9,6]⟩,⟨17,[2,9,6]⟩],[⟨11,[8,7]⟩],[⟨17,[1,8,7]⟩],[⟨7,[]⟩],[⟨15,[0,9,6]⟩,⟨15,[2,9,6]⟩],[⟨6,[4]⟩],[⟨11,[9,6]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨19,[0,9,6]⟩,⟨19,[2,9,6]⟩]]
def values (i : Nat) : List AClo := if i < 11 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨19,[0,9,6]⟩,4⟩],[⟨⟨19,[1,8,7]⟩,16⟩],[⟨⟨19,[2,9,6]⟩,0⟩],[⟨⟨15,[0,9,6]⟩,3⟩],[⟨⟨15,[1,8,7]⟩,4⟩],[⟨⟨15,[2,9,6]⟩,5⟩],[⟨⟨17,[0,9,6]⟩,16⟩],[⟨⟨17,[1,8,7]⟩,9⟩],[⟨⟨17,[2,9,6]⟩,16⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[4]⟩,2⟩],[⟨⟨11,[8,7]⟩,0⟩],[⟨⟨11,[9,6]⟩,1⟩],[⟨⟨11,[10,5]⟩,0⟩,⟨⟨11,[10,5]⟩,4⟩]]
def konts (i : Nat) : List Frame := if i < 17 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,12⟩,⟨⟨4,[4]⟩,2⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨6,[4]⟩,6⟩,⟨⟨6,[4]⟩,8⟩,⟨⟨6,[4]⟩,15⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,13⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,15⟩,⟨⟨8,[5]⟩,3⟩,⟨⟨8,[5]⟩,5⟩,⟨⟨8,[6]⟩,2⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[8,7]⟩,0⟩,⟨⟨9,[9,6]⟩,1⟩,⟨⟨9,[10,5]⟩,0⟩,⟨⟨9,[10,5]⟩,4⟩,⟨⟨10,[8,7]⟩,14⟩,⟨⟨10,[9,6]⟩,15⟩,⟨⟨10,[10,5]⟩,16⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨11,[8,7]⟩,9⟩,⟨⟨11,[8,7]⟩,11⟩,⟨⟨11,[9,6]⟩,7⟩,⟨⟨11,[9,6]⟩,14⟩,⟨⟨12,[0,9,6]⟩,4⟩,⟨⟨12,[1,8,7]⟩,16⟩,⟨⟨12,[2,9,6]⟩,0⟩,⟨⟨13,[0,9,6]⟩,3⟩,⟨⟨13,[1,8,7]⟩,4⟩,⟨⟨13,[2,9,6]⟩,5⟩,⟨⟨14,[0,9,6]⟩,6⟩,⟨⟨14,[1,8,7]⟩,7⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨14,[2,9,6]⟩,8⟩,⟨⟨15,[0,9,6]⟩,16⟩,⟨⟨15,[1,8,7]⟩,9⟩,⟨⟨15,[2,9,6]⟩,16⟩,⟨⟨16,[0,9,6]⟩,9⟩,⟨⟨16,[1,8,7]⟩,10⟩,⟨⟨16,[2,9,6]⟩,11⟩,⟨⟨17,[0,9,6]⟩,10⟩,⟨⟨17,[2,9,6]⟩,10⟩,⟨⟨18,[3,0,9,6]⟩,9⟩,⟨⟨18,[3,2,9,6]⟩,9⟩]
def getSt (i : Nat) : AState := if i < 47 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[11],[9],[10],[12],[13],[14],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[20],[19],[18],[17],[21],[22],[23],[23],[27],[8],[37,39]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[29],[29],[28],[30],[31],[32],[33],[34],[35],[36],[6],[26]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[7],[40],[41],[42],[38],[43,44],[25],[45],[46],[38],[24]]
def hints (i : Nat) : List Nat := if i < 47 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 47 getSt) i (hints i)
end Blc.Floor45.Reg9690391929654
