import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9689626332534
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.lam 10,.app 11 21,.app 12 20]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 17,.app 14 15,.var 2,.lam 16,.var 0,.app 18 19,.var 0,.var 0,.var 2,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit20 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit17 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit17
def lit13 : Term := .app lit20 lit42
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit12 : Term := .app lit13 lit17
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit11 : Term := .app lit12 lit20
def lit10 : Term := .app lit11 lit50
def lit9 : Term := .lam lit10
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit17,lit47,lit47,lit7,lit8,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit20,lit42,lit47,lit17,lit47,lit47,lit20,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨17,[11,8,3]⟩],[⟨15,[11,8,3]⟩],[⟨7,[]⟩],[⟨15,[9,6,5]⟩,⟨15,[10,7,4]⟩],[⟨19,[11,8,3]⟩],[⟨6,[2]⟩],[⟨22,[]⟩],[⟨20,[11,8,3]⟩],[⟨17,[9,6,5]⟩,⟨17,[10,7,4]⟩],[⟨23,[]⟩],[⟨21,[11,8,3]⟩],[⟨20,[9,6,5]⟩,⟨20,[10,7,4]⟩]]
def values (i : Nat) : List AClo := if i < 12 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[9,6,5]⟩,0⟩],[⟨⟨21,[10,7,4]⟩,3⟩,⟨⟨21,[10,7,4]⟩,4⟩],[⟨⟨21,[11,8,3]⟩,3⟩,⟨⟨21,[11,8,3]⟩,4⟩],[⟨⟨20,[9,6,5]⟩,3⟩],[⟨⟨20,[10,7,4]⟩,4⟩],[⟨⟨20,[11,8,3]⟩,5⟩],[⟨⟨17,[9,6,5]⟩,6⟩],[⟨⟨17,[10,7,4]⟩,7⟩],[⟨⟨17,[11,8,3]⟩,8⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨15,[9,6,5]⟩,9⟩],[⟨⟨15,[10,7,4]⟩,10⟩],[⟨⟨15,[11,8,3]⟩,11⟩],[⟨⟨19,[11,8,3]⟩,8⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[2]⟩,2⟩]]
def konts (i : Nat) : List Frame := if i < 18 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,16⟩,⟨⟨4,[2]⟩,2⟩,⟨⟨5,[2]⟩,17⟩,⟨⟨6,[2]⟩,12⟩,⟨⟨6,[2]⟩,13⟩,⟨⟨6,[2]⟩,15⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,15⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,17⟩,⟨⟨8,[3]⟩,9⟩,⟨⟨8,[3]⟩,10⟩,⟨⟨8,[4]⟩,8⟩,⟨⟨8,[5]⟩,2⟩,⟨⟨9,[6,5]⟩,1⟩,⟨⟨9,[7,4]⟩,5⟩,⟨⟨9,[8,3]⟩,6⟩,⟨⟨9,[8,3]⟩,7⟩,⟨⟨10,[9,6,5]⟩,0⟩,⟨⟨10,[10,7,4]⟩,3⟩,⟨⟨10,[10,7,4]⟩,4⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[11,8,3]⟩,3⟩,⟨⟨10,[11,8,3]⟩,4⟩,⟨⟨11,[9,6,5]⟩,3⟩,⟨⟨11,[10,7,4]⟩,4⟩,⟨⟨11,[11,8,3]⟩,5⟩,⟨⟨12,[9,6,5]⟩,6⟩,⟨⟨12,[10,7,4]⟩,7⟩,⟨⟨12,[11,8,3]⟩,8⟩,⟨⟨13,[9,6,5]⟩,9⟩,⟨⟨13,[10,7,4]⟩,10⟩,⟨⟨13,[11,8,3]⟩,11⟩,⟨⟨14,[9,6,5]⟩,12⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨14,[10,7,4]⟩,13⟩,⟨⟨14,[11,8,3]⟩,14⟩,⟨⟨15,[9,6,5]⟩,14⟩,⟨⟨15,[10,7,4]⟩,14⟩,⟨⟨15,[11,8,3]⟩,11⟩,⟨⟨16,[0,11,8,3]⟩,8⟩,⟨⟨16,[1,9,6,5]⟩,11⟩,⟨⟨16,[1,10,7,4]⟩,11⟩,⟨⟨17,[11,8,3]⟩,8⟩,⟨⟨18,[11,8,3]⟩,15⟩,⟨⟨19,[11,8,3]⟩,13⟩,⟨⟨19,[11,8,3]⟩,15⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨20,[9,6,5]⟩,13⟩,⟨⟨20,[9,6,5]⟩,15⟩,⟨⟨20,[10,7,4]⟩,13⟩,⟨⟨20,[10,7,4]⟩,15⟩]
def getSt (i : Nat) : AState := if i < 52 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[12],[9],[10],[11],[13],[14],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[19],[20],[18],[17],[21],[22,23],[24],[25],[26],[27],[27]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[28],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[6]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[46],[38,39],[42],[43],[41],[44],[40],[40],[45],[49,51],[48,50],[49,51]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[7],[8],[46],[47]]
def hints (i : Nat) : List Nat := if i < 52 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 52 getSt) i (hints i)
end Blc.Floor45.Reg9689626332534
