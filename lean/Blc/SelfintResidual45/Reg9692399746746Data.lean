import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692399746746
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 18,.app 14 15,.var 0,.app 16 17,.var 3,.var 0,.var 2,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit18 : Term := .var 2
def lit16 : Term := .var 3
def lit2 : Term := .app lit19 lit19
def lit1 : Term := .lam lit2
def lit15 : Term := .app lit16 lit19
def lit13 : Term := .app lit19 lit15
def lit12 : Term := .app lit13 lit18
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit19 lit9
def lit6 : Term := .app lit7 lit19
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit19,lit5,lit6,lit7,lit19,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit19,lit15,lit16,lit19,lit18,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨19,[6]⟩],[⟨19,[4]⟩,⟨19,[5]⟩],[⟨15,[2,1,7,4]⟩,⟨15,[2,1,7,5]⟩],[⟨17,[2,1,7,4]⟩,⟨17,[2,1,7,5]⟩],[⟨4,[0]⟩],[⟨9,[4]⟩,⟨9,[5]⟩],[⟨9,[6]⟩]]
def values (i : Nat) : List AClo := if i < 8 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨18,[2,1,7,4]⟩,0⟩,⟨⟨18,[2,1,7,4]⟩,13⟩],[⟨⟨18,[2,1,7,5]⟩,0⟩,⟨⟨18,[2,1,7,5]⟩,13⟩],[⟨⟨15,[2,1,7,4]⟩,2⟩],[⟨⟨15,[2,1,7,5]⟩,3⟩],[⟨⟨17,[2,1,7,4]⟩,13⟩],[⟨⟨17,[2,1,7,5]⟩,13⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[3]⟩,2⟩,⟨⟨19,[3]⟩,3⟩],[⟨⟨19,[4]⟩,13⟩],[⟨⟨19,[5]⟩,0⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[6]⟩,10⟩,⟨⟨19,[6]⟩,11⟩],[⟨⟨9,[3]⟩,9⟩],[⟨⟨9,[4]⟩,10⟩],[⟨⟨9,[5]⟩,11⟩],[⟨⟨9,[6]⟩,12⟩]]
def konts (i : Nat) : List Frame := if i < 17 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,8⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,6⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨5,[]⟩,4⟩,⟨⟨5,[]⟩,5⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,7⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,14⟩,⟨⟨5,[]⟩,15⟩,⟨⟨6,[3]⟩,2⟩,⟨⟨6,[3]⟩,3⟩,⟨⟨6,[4]⟩,13⟩,⟨⟨6,[5]⟩,0⟩,⟨⟨6,[6]⟩,10⟩,⟨⟨6,[6]⟩,11⟩,⟨⟨7,[3]⟩,9⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨7,[4]⟩,10⟩,⟨⟨7,[5]⟩,11⟩,⟨⟨7,[6]⟩,12⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨8,[6]⟩,16⟩,⟨⟨9,[4]⟩,16⟩,⟨⟨9,[5]⟩,16⟩,⟨⟨10,[7,4]⟩,12⟩,⟨⟨10,[7,5]⟩,12⟩,⟨⟨11,[1,7,4]⟩,10⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[1,7,4]⟩,11⟩,⟨⟨11,[1,7,5]⟩,10⟩,⟨⟨11,[1,7,5]⟩,11⟩,⟨⟨12,[2,1,7,4]⟩,0⟩,⟨⟨12,[2,1,7,4]⟩,13⟩,⟨⟨12,[2,1,7,5]⟩,0⟩,⟨⟨12,[2,1,7,5]⟩,13⟩,⟨⟨13,[2,1,7,4]⟩,2⟩,⟨⟨13,[2,1,7,5]⟩,3⟩,⟨⟨14,[2,1,7,4]⟩,4⟩,⟨⟨14,[2,1,7,5]⟩,5⟩,⟨⟨15,[2,1,7,4]⟩,13⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨15,[2,1,7,5]⟩,13⟩,⟨⟨16,[2,1,7,4]⟩,6⟩,⟨⟨16,[2,1,7,5]⟩,7⟩,⟨⟨17,[2,1,7,4]⟩,4⟩,⟨⟨17,[2,1,7,4]⟩,5⟩,⟨⟨17,[2,1,7,4]⟩,6⟩,⟨⟨17,[2,1,7,4]⟩,14⟩,⟨⟨17,[2,1,7,5]⟩,4⟩,⟨⟨17,[2,1,7,5]⟩,5⟩,⟨⟨17,[2,1,7,5]⟩,6⟩,⟨⟨17,[2,1,7,5]⟩,14⟩,⟨⟨19,[4]⟩,4⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨19,[4]⟩,5⟩,⟨⟨19,[4]⟩,6⟩,⟨⟨19,[4]⟩,14⟩,⟨⟨19,[5]⟩,4⟩,⟨⟨19,[5]⟩,5⟩,⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,14⟩]
def getSt (i : Nat) : AState := if i < 67 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[14],[10],[11],[12],[13],[15],[16],[17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[19],[20],[21],[22],[23],[23],[24],[25],[26],[26],[27]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[28],[29],[30],[47,48],[54,58],[9],[31,32],[33],[34],[35,36],[37,38],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[39],[42],[41],[43],[43],[44],[44],[45],[46],[59,63],[60,64],[49]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[50],[53,57],[7],[59,63],[60,64],[61,65],[62,66],[59,63],[60,64],[61,65],[62,66],[51,55]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[52,56],[53,57],[54,58],[4],[5],[6],[8]]
def hints (i : Nat) : List Nat := if i < 67 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 67 getSt) i (hints i)
end Blc.Floor45.Reg9692399746746
