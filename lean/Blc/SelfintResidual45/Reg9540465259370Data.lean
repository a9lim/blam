import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9540465259370
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 9,.lam 2,.app 3 8,.app 4 7,.app 5 6,.var 0,.var 0,.var 0,.var 0,.lam 10,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 20,.app 14 19,.app 15 16,.var 2,.app 17 18,.var 0,.var 1,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit18 : Term := .var 1
def lit15 : Term := .var 2
def lit4 : Term := .app lit20 lit20
def lit16 : Term := .app lit20 lit18
def lit3 : Term := .app lit4 lit20
def lit14 : Term := .app lit15 lit16
def lit2 : Term := .app lit3 lit20
def lit1 : Term := .lam lit2
def lit13 : Term := .app lit14 lit20
def lit12 : Term := .app lit13 lit20
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit0 : Term := .app lit1 lit9
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit20,lit20,lit20,lit20,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit20,lit18,lit20,lit20]
def getTerm (i : Nat) : Term := if i < 21 then (if i < 12 then getTermB0 i else getTermB12 i) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 21 := RegProof.block (n := 1) (by decide +kernel)
theorem alAll : RegProof.Span align 0 21 := (RegProof.merge al0 (RegProof.merge al10 al20))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 21
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨9,[]⟩],[⟨7,[0]⟩,⟨16,[2,1,3]⟩,⟨19,[2,1,3]⟩],[⟨8,[0]⟩,⟨19,[2,1,3]⟩,⟨20,[2,1,3]⟩],[⟨6,[0]⟩,⟨16,[2,1,3]⟩,⟨18,[2,1,3]⟩]]
def values (i : Nat) : List AClo := if i < 4 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨9,[]⟩,0⟩],[⟨⟨20,[2,1,3]⟩,0⟩,⟨⟨20,[2,1,3]⟩,2⟩],[⟨⟨19,[2,1,3]⟩,2⟩],[⟨⟨16,[2,1,3]⟩,3⟩],[⟨⟨18,[2,1,3]⟩,4⟩],[⟨⟨8,[0]⟩,0⟩],[⟨⟨7,[0]⟩,6⟩],[⟨⟨6,[0]⟩,7⟩]]
def konts (i : Nat) : List Frame := if i < 9 then kontsB0 i else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨5,[0]⟩,8⟩,⟨⟨6,[0]⟩,4⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨8,[0]⟩,4⟩,⟨⟨8,[0]⟩,5⟩,⟨⟨9,[]⟩,4⟩,⟨⟨9,[]⟩,5⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[]⟩,8⟩,⟨⟨10,[3]⟩,3⟩,⟨⟨10,[3]⟩,4⟩,⟨⟨10,[3]⟩,7⟩,⟨⟨11,[1,3]⟩,2⟩,⟨⟨11,[1,3]⟩,3⟩,⟨⟨11,[1,3]⟩,6⟩,⟨⟨12,[2,1,3]⟩,0⟩,⟨⟨12,[2,1,3]⟩,2⟩,⟨⟨13,[2,1,3]⟩,2⟩,⟨⟨14,[2,1,3]⟩,3⟩,⟨⟨15,[2,1,3]⟩,4⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨16,[2,1,3]⟩,4⟩,⟨⟨17,[2,1,3]⟩,5⟩,⟨⟨18,[2,1,3]⟩,4⟩,⟨⟨19,[2,1,3]⟩,4⟩,⟨⟨19,[2,1,3]⟩,5⟩,⟨⟨20,[2,1,3]⟩,4⟩,⟨⟨20,[2,1,3]⟩,5⟩]
def getSt (i : Nat) : AState := if i < 31 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[12],[10],[10],[10],[11],[13],[14]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[15],[16],[17],[18],[19,20],[20],[19],[21],[21],[22],[23],[6,24,26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[25],[9,28,30],[7,24,27],[8,27,29],[9,28,30],[8,27,29],[9,28,30]]
def hints (i : Nat) : List Nat := if i < 31 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 31 getSt) i (hints i)
end Blc.Floor45.Reg9540465259370
