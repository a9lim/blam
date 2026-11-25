import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9557379028854
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 10,.lam 4,.app 5 9,.app 6 7,.var 0,.lam 8,.var 0,.var 0,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.app 14 17,.app 15 16,.var 1,.var 0,.app 18 21,.app 19 20,.var 1,.var 2,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit42 : Term := .lam lit47
def lit20 : Term := .var 2
def lit49 : Term := .lam lit50
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit14 : Term := .app lit50 lit47
def lit48 : Term := .lam lit49
def lit5 : Term := .app lit47 lit42
def lit18 : Term := .app lit50 lit20
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit4 : Term := .app lit5 lit47
def lit3 : Term := .lam lit4
def lit17 : Term := .app lit18 lit50
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit13 : Term := .app lit14 lit17
def lit12 : Term := .lam lit13
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit10
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit5,lit47,lit42,lit47,lit47,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit50,lit47,lit17,lit18,lit50,lit20,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨16,[7,5,2]⟩,⟨16,[9,4,1]⟩],[⟨20,[7,5,2]⟩,⟨20,[9,4,1]⟩],[⟨7,[10]⟩],[⟨17,[7,5,2]⟩,⟨17,[9,4,1]⟩],[⟨21,[7,5,2]⟩,⟨21,[9,4,1]⟩],[⟨9,[10]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨17,[6,3,0]⟩,⟨17,[8,3,0]⟩],[⟨16,[6,3,0]⟩,⟨16,[8,3,0]⟩],[⟨10,[]⟩]]
def values (i : Nat) : List AClo := if i < 11 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨17,[6,3,0]⟩,0⟩],[⟨⟨17,[7,5,2]⟩,1⟩],[⟨⟨17,[8,3,0]⟩,0⟩],[⟨⟨17,[9,4,1]⟩,3⟩,⟨⟨17,[9,4,1]⟩,5⟩],[⟨⟨16,[6,3,0]⟩,3⟩],[⟨⟨16,[7,5,2]⟩,4⟩],[⟨⟨16,[8,3,0]⟩,5⟩],[⟨⟨16,[9,4,1]⟩,6⟩],[⟨⟨21,[7,5,2]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨21,[7,5,2]⟩,9⟩],[⟨⟨21,[9,4,1]⟩,7⟩],[⟨⟨21,[9,4,1]⟩,9⟩],[⟨⟨20,[7,5,2]⟩,11⟩],[⟨⟨20,[7,5,2]⟩,12⟩],[⟨⟨20,[9,4,1]⟩,13⟩],[⟨⟨20,[9,4,1]⟩,14⟩],[⟨⟨10,[]⟩,2⟩],[⟨⟨9,[10]⟩,2⟩],[⟨⟨7,[10]⟩,20⟩]]
def konts (i : Nat) : List Frame := if i < 22 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,19⟩,⟨⟨4,[10]⟩,2⟩,⟨⟨5,[10]⟩,20⟩,⟨⟨6,[10]⟩,21⟩,⟨⟨9,[10]⟩,8⟩,⟨⟨9,[10]⟩,10⟩,⟨⟨9,[10]⟩,15⟩,⟨⟨9,[10]⟩,16⟩,⟨⟨9,[10]⟩,17⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[10]⟩,18⟩,⟨⟨10,[]⟩,8⟩,⟨⟨10,[]⟩,10⟩,⟨⟨10,[]⟩,15⟩,⟨⟨10,[]⟩,16⟩,⟨⟨10,[]⟩,17⟩,⟨⟨10,[]⟩,18⟩,⟨⟨10,[]⟩,21⟩,⟨⟨11,[0]⟩,4⟩,⟨⟨11,[0]⟩,6⟩,⟨⟨11,[1]⟩,11⟩,⟨⟨11,[1]⟩,12⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨11,[1]⟩,13⟩,⟨⟨11,[1]⟩,14⟩,⟨⟨11,[2]⟩,20⟩,⟨⟨12,[3,0]⟩,1⟩,⟨⟨12,[3,0]⟩,3⟩,⟨⟨12,[3,0]⟩,5⟩,⟨⟨12,[4,1]⟩,7⟩,⟨⟨12,[4,1]⟩,9⟩,⟨⟨12,[5,2]⟩,2⟩,⟨⟨13,[6,3,0]⟩,0⟩,⟨⟨13,[7,5,2]⟩,1⟩,⟨⟨13,[8,3,0]⟩,0⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨13,[9,4,1]⟩,3⟩,⟨⟨13,[9,4,1]⟩,5⟩,⟨⟨14,[6,3,0]⟩,3⟩,⟨⟨14,[7,5,2]⟩,4⟩,⟨⟨14,[8,3,0]⟩,5⟩,⟨⟨14,[9,4,1]⟩,6⟩,⟨⟨15,[6,3,0]⟩,7⟩,⟨⟨15,[7,5,2]⟩,8⟩,⟨⟨15,[8,3,0]⟩,9⟩,⟨⟨15,[9,4,1]⟩,10⟩,⟨⟨17,[7,5,2]⟩,7⟩,⟨⟨17,[7,5,2]⟩,9⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨17,[9,4,1]⟩,7⟩,⟨⟨17,[9,4,1]⟩,9⟩,⟨⟨18,[7,5,2]⟩,11⟩,⟨⟨18,[7,5,2]⟩,12⟩,⟨⟨18,[9,4,1]⟩,13⟩,⟨⟨18,[9,4,1]⟩,14⟩,⟨⟨19,[7,5,2]⟩,15⟩,⟨⟨19,[7,5,2]⟩,16⟩,⟨⟨19,[9,4,1]⟩,17⟩,⟨⟨19,[9,4,1]⟩,18⟩,⟨⟨21,[7,5,2]⟩,10⟩,⟨⟨21,[7,5,2]⟩,17⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨21,[7,5,2]⟩,18⟩,⟨⟨21,[9,4,1]⟩,10⟩,⟨⟨21,[9,4,1]⟩,17⟩,⟨⟨21,[9,4,1]⟩,18⟩]
def getSt (i : Nat) : AState := if i < 64 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[19],[13],[14],[15],[16],[17]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[18],[20],[21],[22],[23],[24],[25],[26],[27],[28,29],[30],[31]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[31],[32],[33],[35],[35],[36],[37],[34],[38],[39],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[41],[42],[43],[44],[45],[46,48],[7],[47,49],[58,61],[50],[51]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[52],[53],[54],[55],[56],[57],[9],[10],[59,62],[60,63],[8],[11]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[12],[58,61],[59,62],[60,63]]
def hints (i : Nat) : List Nat := if i < 64 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 64 getSt) i (hints i)
end Blc.Floor45.Reg9557379028854
