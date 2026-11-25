import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9573493546734
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 22,.app 2 21,.app 3 9,.lam 4,.app 5 8,.app 6 7,.var 0,.var 0,.var 0,.lam 10,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 20,.app 14 17,.app 15 16,.var 1,.var 0,.app 18 19,.var 2,.var 2,.var 2,.opaque,.lam 23,.app 24 29]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 26,.var 0,.lam 27,.lam 28,.var 1,.lam 30,.app 31 36,.app 32 33,.var 0,.lam 34,.lam 35,.var 1]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.lam 37,.app 38 43,.app 39 40,.var 0,.lam 41,.lam 42,.var 0,.lam 44,.app 45 50,.app 46 47,.var 0,.lam 48]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 51 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit46 : Term := .var 0
def lit49 : Term := .var 1
def lit20 : Term := .var 2
def lit41 : Term := .lam lit46
def lit48 : Term := .lam lit49
def lit5 : Term := .app lit46 lit46
def lit40 : Term := .lam lit41
def lit50 : Term := .var 4
def lit14 : Term := .app lit49 lit46
def lit47 : Term := .lam lit48
def lit4 : Term := .app lit5 lit46
def lit17 : Term := .app lit20 lit20
def lit38 : Term := .app lit46 lit40
def lit45 : Term := .app lit46 lit47
def lit3 : Term := .lam lit4
def lit13 : Term := .app lit14 lit17
def lit44 : Term := .app lit45 lit50
def lit43 : Term := .lam lit44
def lit12 : Term := .app lit13 lit20
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit37 : Term := .app lit38 lit43
def lit36 : Term := .lam lit37
def lit2 : Term := .app lit3 lit9
def lit30 : Term := .app lit45 lit36
def lit1 : Term := .app lit2 lit49
def lit29 : Term := .lam lit30
def lit23 : Term := .app lit45 lit29
def lit22 : Term := .lam lit23
def lit0 : Term := .app lit1 lit22
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit5,lit46,lit46,lit46,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit49,lit46,lit17,lit20,lit20,lit20,lit49,lit22,lit23]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit45,lit46,lit47,lit48,lit49,lit29,lit30,lit45,lit46,lit47,lit48,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit36,lit37,lit38,lit46,lit40,lit41,lit46,lit43,lit44,lit45,lit46,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50]
def getTerm (i : Nat) : Term := if i < 51 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 51 := RegProof.block (n := 1) (by decide +kernel)
theorem alAll : RegProof.Span align 0 51 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 51
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨17,[3,2,9]⟩,⟨17,[5,1,8]⟩],[⟨16,[4,0,7]⟩],[⟨8,[6]⟩],[⟨21,[]⟩],[⟨20,[3,2,9]⟩,⟨20,[5,1,8]⟩],[⟨17,[4,0,7]⟩],[⟨9,[]⟩],[⟨16,[3,2,9]⟩,⟨16,[5,1,8]⟩],[⟨19,[3,2,9]⟩,⟨19,[5,1,8]⟩],[⟨7,[6]⟩]]
def values (i : Nat) : List AClo := if i < 10 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨22,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨20,[3,2,9]⟩,1⟩],[⟨⟨20,[4,0,7]⟩,1⟩,⟨⟨20,[4,0,7]⟩,4⟩],[⟨⟨20,[5,1,8]⟩,4⟩],[⟨⟨17,[3,2,9]⟩,3⟩],[⟨⟨17,[4,0,7]⟩,4⟩],[⟨⟨17,[5,1,8]⟩,5⟩],[⟨⟨16,[3,2,9]⟩,6⟩],[⟨⟨16,[4,0,7]⟩,7⟩],[⟨⟨16,[5,1,8]⟩,8⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[3,2,9]⟩,10⟩],[⟨⟨19,[5,1,8]⟩,10⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨8,[6]⟩,2⟩],[⟨⟨7,[6]⟩,15⟩]]
def konts (i : Nat) : List Frame := if i < 17 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,14⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[6]⟩,15⟩,⟨⟨6,[6]⟩,16⟩,⟨⟨7,[6]⟩,11⟩,⟨⟨7,[6]⟩,12⟩,⟨⟨7,[6]⟩,13⟩,⟨⟨8,[6]⟩,9⟩,⟨⟨9,[]⟩,9⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[]⟩,11⟩,⟨⟨9,[]⟩,12⟩,⟨⟨9,[]⟩,13⟩,⟨⟨9,[]⟩,16⟩,⟨⟨10,[7]⟩,6⟩,⟨⟨10,[7]⟩,8⟩,⟨⟨10,[8]⟩,10⟩,⟨⟨10,[9]⟩,15⟩,⟨⟨11,[0,7]⟩,3⟩,⟨⟨11,[0,7]⟩,5⟩,⟨⟨11,[1,8]⟩,7⟩,⟨⟨11,[2,9]⟩,2⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨12,[3,2,9]⟩,1⟩,⟨⟨12,[4,0,7]⟩,1⟩,⟨⟨12,[4,0,7]⟩,4⟩,⟨⟨12,[5,1,8]⟩,4⟩,⟨⟨13,[3,2,9]⟩,3⟩,⟨⟨13,[4,0,7]⟩,4⟩,⟨⟨13,[5,1,8]⟩,5⟩,⟨⟨14,[3,2,9]⟩,6⟩,⟨⟨14,[4,0,7]⟩,7⟩,⟨⟨14,[5,1,8]⟩,8⟩,⟨⟨15,[3,2,9]⟩,9⟩,⟨⟨15,[4,0,7]⟩,10⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨15,[5,1,8]⟩,11⟩,⟨⟨16,[4,0,7]⟩,11⟩,⟨⟨17,[3,2,9]⟩,10⟩,⟨⟨17,[5,1,8]⟩,10⟩,⟨⟨18,[3,2,9]⟩,12⟩,⟨⟨18,[5,1,8]⟩,13⟩,⟨⟨19,[3,2,9]⟩,11⟩,⟨⟨19,[3,2,9]⟩,13⟩,⟨⟨19,[5,1,8]⟩,11⟩,⟨⟨19,[5,1,8]⟩,13⟩,⟨⟨20,[3,2,9]⟩,11⟩,⟨⟨20,[5,1,8]⟩,11⟩]
def getSt (i : Nat) : AState := if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[15],[12],[13],[14],[11],[16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[18],[19],[20],[21],[22],[23],[25],[26],[27],[24]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[28],[29],[29],[30],[31],[32],[33],[34],[35],[36],[10],[38,39]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[37],[46,47],[40],[41],[8],[43,45],[7],[9],[42,44],[43,45],[7],[42,44]]
def hints (i : Nat) : List Nat := if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 48 getSt) i (hints i)
end Blc.Floor45.Reg9573493546734
