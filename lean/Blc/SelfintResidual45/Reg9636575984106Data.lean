import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9636575984106
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 8,.lam 2,.app 3 4,.var 0,.lam 5,.app 6 7,.var 1,.var 1,.lam 9,.app 10 19,.app 11 12,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 16,.var 1,.app 17 18,.var 2,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit15 : Term := .var 1
def lit17 : Term := .var 2
def lit5 : Term := .app lit15 lit15
def lit16 : Term := .app lit17 lit19
def lit4 : Term := .lam lit5
def lit14 : Term := .app lit15 lit16
def lit2 : Term := .app lit19 lit4
def lit13 : Term := .lam lit14
def lit1 : Term := .lam lit2
def lit12 : Term := .lam lit13
def lit10 : Term := .app lit19 lit12
def lit9 : Term := .app lit10 lit19
def lit8 : Term := .lam lit9
def lit0 : Term := .app lit1 lit8
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit4,lit5,lit15,lit15,lit8,lit9,lit10,lit19]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit17,lit19,lit19]
def getTerm (i : Nat) : Term := if i < 20 then (if i < 12 then getTermB0 i else getTermB12 i) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem alAll : RegProof.Span align 0 20 := (RegProof.merge al0 al10)
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 20
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨8,[]⟩],[⟨12,[10]⟩],[⟨12,[11]⟩],[⟨16,[6,1,13]⟩,⟨16,[7,2,13]⟩],[⟨16,[4,3,11]⟩,⟨16,[5,3,11]⟩],[⟨16,[8,3,10]⟩],[⟨19,[10]⟩],[⟨19,[11]⟩],[⟨19,[13]⟩],[⟨12,[12]⟩],[⟨12,[13]⟩],[⟨18,[6,1,13]⟩,⟨18,[7,2,13]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨4,[0]⟩],[⟨7,[9,0]⟩]]
def values (i : Nat) : List AClo := if i < 14 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨8,[]⟩,0⟩],[⟨⟨12,[10]⟩,19⟩],[⟨⟨12,[11]⟩,20⟩],[⟨⟨12,[12]⟩,21⟩],[⟨⟨12,[13]⟩,22⟩],[⟨⟨16,[4,3,11]⟩,21⟩],[⟨⟨16,[5,3,11]⟩,21⟩],[⟨⟨16,[6,1,13]⟩,22⟩],[⟨⟨16,[7,2,13]⟩,6⟩,⟨⟨16,[7,2,13]⟩,7⟩,⟨⟨16,[7,2,13]⟩,10⟩],[⟨⟨16,[8,3,10]⟩,21⟩],[⟨⟨18,[6,1,13]⟩,6⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨18,[6,1,13]⟩,7⟩],[⟨⟨18,[6,1,13]⟩,10⟩],[⟨⟨18,[7,2,13]⟩,6⟩],[⟨⟨18,[7,2,13]⟩,7⟩],[⟨⟨18,[7,2,13]⟩,10⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨7,[9,0]⟩,21⟩],[⟨⟨19,[10]⟩,22⟩],[⟨⟨19,[11]⟩,6⟩,⟨⟨19,[11]⟩,7⟩,⟨⟨19,[11]⟩,10⟩],[⟨⟨19,[12]⟩,0⟩],[⟨⟨19,[13]⟩,21⟩]]
def konts (i : Nat) : List Frame := if i < 23 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,17⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨5,[9,0]⟩,21⟩,⟨⟨6,[9,0]⟩,18⟩,⟨⟨7,[9,0]⟩,5⟩,⟨⟨7,[9,0]⟩,11⟩,⟨⟨7,[9,0]⟩,12⟩,⟨⟨7,[9,0]⟩,13⟩,⟨⟨7,[9,0]⟩,14⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[9,0]⟩,15⟩,⟨⟨7,[9,0]⟩,16⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,11⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,13⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,15⟩,⟨⟨8,[]⟩,16⟩,⟨⟨8,[]⟩,17⟩,⟨⟨8,[]⟩,18⟩,⟨⟨9,[10]⟩,22⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[11]⟩,6⟩,⟨⟨9,[11]⟩,7⟩,⟨⟨9,[11]⟩,10⟩,⟨⟨9,[12]⟩,0⟩,⟨⟨9,[13]⟩,21⟩,⟨⟨10,[10]⟩,19⟩,⟨⟨10,[11]⟩,20⟩,⟨⟨10,[12]⟩,21⟩,⟨⟨10,[13]⟩,22⟩,⟨⟨11,[10]⟩,2⟩,⟨⟨11,[11]⟩,3⟩,⟨⟨11,[12]⟩,4⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[13]⟩,5⟩,⟨⟨12,[10]⟩,8⟩,⟨⟨12,[11]⟩,9⟩,⟨⟨12,[13]⟩,2⟩,⟨⟨12,[13]⟩,3⟩,⟨⟨13,[1,13]⟩,19⟩,⟨⟨13,[2,13]⟩,20⟩,⟨⟨13,[3,10]⟩,22⟩,⟨⟨13,[3,11]⟩,6⟩,⟨⟨13,[3,11]⟩,7⟩,⟨⟨13,[3,11]⟩,10⟩,⟨⟨14,[4,3,11]⟩,21⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨14,[5,3,11]⟩,21⟩,⟨⟨14,[6,1,13]⟩,22⟩,⟨⟨14,[7,2,13]⟩,6⟩,⟨⟨14,[7,2,13]⟩,7⟩,⟨⟨14,[7,2,13]⟩,10⟩,⟨⟨14,[8,3,10]⟩,21⟩,⟨⟨15,[4,3,11]⟩,6⟩,⟨⟨15,[5,3,11]⟩,7⟩,⟨⟨15,[6,1,13]⟩,8⟩,⟨⟨15,[7,2,13]⟩,9⟩,⟨⟨15,[8,3,10]⟩,10⟩,⟨⟨16,[6,1,13]⟩,6⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨16,[6,1,13]⟩,7⟩,⟨⟨16,[6,1,13]⟩,10⟩,⟨⟨16,[7,2,13]⟩,6⟩,⟨⟨16,[7,2,13]⟩,7⟩,⟨⟨16,[7,2,13]⟩,10⟩,⟨⟨17,[6,1,13]⟩,11⟩,⟨⟨17,[6,1,13]⟩,12⟩,⟨⟨17,[6,1,13]⟩,13⟩,⟨⟨17,[7,2,13]⟩,14⟩,⟨⟨17,[7,2,13]⟩,15⟩,⟨⟨17,[7,2,13]⟩,16⟩,⟨⟨18,[6,1,13]⟩,3⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨18,[7,2,13]⟩,3⟩,⟨⟨19,[10]⟩,3⟩,⟨⟨19,[11]⟩,3⟩]
def getSt (i : Nat) : AState := if i < 75 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 60 then (if i < 48 then getStB36 i else getStB48 i) else (if i < 72 then getStB60 i else getStB72 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[21],[5],[6],[22],[14],[15],[16],[17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[20],[23],[24],[25],[26],[24],[25],[26],[27],[28],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[30],[30],[31],[32],[33],[34],[35],[36],[39],[71,72],[4]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[7],[43],[44,45,46],[41],[42],[49],[50,51,52],[53],[47],[47],[48],[54]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[55],[56],[57],[57],[57],[58],[59,62],[60,63],[37],[38],[61,64],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[66],[67],[68],[69],[70],[8],[9],[10],[11],[12],[13],[73]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[74],[40],[71,72]]
def hints (i : Nat) : List Nat := if i < 75 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 60 then (if i < 48 then hintsB36 i else hintsB48 i) else (if i < 72 then hintsB60 i else hintsB72 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 75 getSt) i (hints i)
end Blc.Floor45.Reg9636575984106
