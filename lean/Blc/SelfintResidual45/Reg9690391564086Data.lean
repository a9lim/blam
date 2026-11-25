import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391564086
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 17,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 2,.app 20 21,.var 0,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit18 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit19 : Term := .app lit47 lit50
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit13 : Term := .app lit47 lit49
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit17 : Term := .app lit18 lit19
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit13 lit17
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit47,lit49,lit50,lit17,lit18,lit19,lit47,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨17,[1,9,8]⟩],[⟨15,[2,10,7]⟩,⟨15,[3,10,7]⟩],[⟨19,[1,9,8]⟩],[⟨11,[9,8]⟩],[⟨15,[1,9,8]⟩],[⟨21,[1,9,8]⟩],[⟨7,[]⟩],[⟨6,[6]⟩],[⟨11,[10,7]⟩],[⟨23,[]⟩],[⟨22,[]⟩]]
def values (i : Nat) : List AClo := if i < 11 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨17,[0,9,8]⟩,5⟩,⟨⟨17,[0,9,8]⟩,6⟩],[⟨⟨17,[1,9,8]⟩,5⟩,⟨⟨17,[1,9,8]⟩,6⟩],[⟨⟨17,[2,10,7]⟩,7⟩],[⟨⟨17,[3,10,7]⟩,0⟩],[⟨⟨15,[0,9,8]⟩,3⟩],[⟨⟨15,[1,9,8]⟩,4⟩],[⟨⟨15,[2,10,7]⟩,5⟩],[⟨⟨15,[3,10,7]⟩,6⟩],[⟨⟨19,[1,9,8]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨21,[1,9,8]⟩,9⟩],[⟨⟨21,[1,9,8]⟩,4⟩],[⟨⟨21,[1,9,8]⟩,4⟩,⟨⟨21,[1,9,8]⟩,9⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[6]⟩,2⟩],[⟨⟨11,[9,8]⟩,0⟩],[⟨⟨11,[10,7]⟩,1⟩]]
def konts (i : Nat) : List Frame := if i < 19 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,15⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[6]⟩,16⟩,⟨⟨6,[6]⟩,18⟩,⟨⟨7,[]⟩,16⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[7]⟩,2⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[9,8]⟩,0⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[10,7]⟩,1⟩,⟨⟨10,[9,8]⟩,17⟩,⟨⟨10,[10,7]⟩,18⟩,⟨⟨11,[9,8]⟩,4⟩,⟨⟨11,[9,8]⟩,9⟩,⟨⟨11,[9,8]⟩,10⟩,⟨⟨11,[10,7]⟩,11⟩,⟨⟨11,[10,7]⟩,17⟩,⟨⟨12,[0,9,8]⟩,5⟩,⟨⟨12,[0,9,8]⟩,6⟩,⟨⟨12,[1,9,8]⟩,5⟩,⟨⟨12,[1,9,8]⟩,6⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨12,[2,10,7]⟩,7⟩,⟨⟨12,[3,10,7]⟩,0⟩,⟨⟨13,[0,9,8]⟩,3⟩,⟨⟨13,[1,9,8]⟩,4⟩,⟨⟨13,[2,10,7]⟩,5⟩,⟨⟨13,[3,10,7]⟩,6⟩,⟨⟨14,[0,9,8]⟩,7⟩,⟨⟨14,[1,9,8]⟩,8⟩,⟨⟨14,[2,10,7]⟩,9⟩,⟨⟨14,[3,10,7]⟩,10⟩,⟨⟨15,[2,10,7]⟩,8⟩,⟨⟨15,[2,10,7]⟩,12⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨15,[2,10,7]⟩,13⟩,⟨⟨15,[2,10,7]⟩,14⟩,⟨⟨15,[3,10,7]⟩,8⟩,⟨⟨15,[3,10,7]⟩,12⟩,⟨⟨15,[3,10,7]⟩,13⟩,⟨⟨15,[3,10,7]⟩,14⟩,⟨⟨16,[4,2,10,7]⟩,4⟩,⟨⟨16,[4,3,10,7]⟩,4⟩,⟨⟨16,[5,2,10,7]⟩,4⟩,⟨⟨16,[5,2,10,7]⟩,9⟩,⟨⟨16,[5,3,10,7]⟩,4⟩,⟨⟨16,[5,3,10,7]⟩,9⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨17,[1,9,8]⟩,7⟩,⟨⟨18,[1,9,8]⟩,11⟩,⟨⟨19,[1,9,8]⟩,4⟩,⟨⟨19,[1,9,8]⟩,9⟩,⟨⟨20,[1,9,8]⟩,12⟩,⟨⟨20,[1,9,8]⟩,13⟩,⟨⟨20,[1,9,8]⟩,14⟩]
def getSt (i : Nat) : AState := if i < 55 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[7],[8],[9],[10],[12],[11],[13]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[14],[19],[6],[20,21],[22],[23],[24],[25],[26],[26],[27],[27]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[28],[29],[30],[31],[32],[33],[48],[34,38],[51],[17],[42],[45]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[44],[44,45],[43],[47],[46],[46,47],[50],[15],[50],[51],[15],[16]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[49],[18],[53],[52],[35,39],[36,40],[37,41]]
def hints (i : Nat) : List Nat := if i < 55 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 55 getSt) i (hints i)
end Blc.Floor45.Reg9690391564086
