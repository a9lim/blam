import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391395546
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 21,.app 14 18,.app 15 16,.var 0,.lam 17,.var 3,.app 19 20,.var 0,.var 1,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit42 : Term := .lam lit47
def lit17 : Term := .var 3
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit16 : Term := .lam lit17
def lit18 : Term := .app lit47 lit50
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit39 : Term := .app lit47 lit41
def lit14 : Term := .app lit47 lit16
def lit46 : Term := .app lit47 lit48
def lit45 : Term := .app lit46 lit51
def lit13 : Term := .app lit14 lit18
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit13 lit47
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit47,lit16,lit17,lit18,lit47,lit50,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨16,[1,9,6]⟩,⟨16,[1,10,5]⟩],[⟨11,[8,7]⟩,⟨11,[11,7]⟩],[⟨16,[0,8,7]⟩,⟨16,[0,11,7]⟩],[⟨20,[0,8,7]⟩,⟨20,[0,11,7]⟩],[⟨7,[]⟩],[⟨18,[0,8,7]⟩,⟨18,[0,11,7]⟩],[⟨6,[4]⟩],[⟨11,[9,6]⟩,⟨11,[10,5]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨21,[0,8,7]⟩,⟨21,[0,11,7]⟩],[⟨18,[1,9,6]⟩,⟨18,[1,10,5]⟩]]
def values (i : Nat) : List AClo := if i < 12 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[0,8,7]⟩,9⟩,⟨⟨21,[0,8,7]⟩,10⟩],[⟨⟨21,[0,11,7]⟩,9⟩,⟨⟨21,[0,11,7]⟩,10⟩],[⟨⟨21,[1,9,6]⟩,0⟩,⟨⟨21,[1,9,6]⟩,5⟩,⟨⟨21,[1,9,6]⟩,6⟩],[⟨⟨21,[1,10,5]⟩,0⟩,⟨⟨21,[1,10,5]⟩,5⟩,⟨⟨21,[1,10,5]⟩,6⟩],[⟨⟨18,[0,8,7]⟩,3⟩],[⟨⟨18,[0,11,7]⟩,4⟩],[⟨⟨18,[1,9,6]⟩,5⟩],[⟨⟨18,[1,10,5]⟩,6⟩],[⟨⟨16,[0,8,7]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨16,[0,11,7]⟩,8⟩],[⟨⟨16,[1,9,6]⟩,9⟩],[⟨⟨16,[1,10,5]⟩,10⟩],[⟨⟨20,[0,8,7]⟩,7⟩,⟨⟨20,[0,8,7]⟩,8⟩],[⟨⟨20,[0,8,7]⟩,7⟩,⟨⟨20,[0,8,7]⟩,8⟩,⟨⟨20,[0,8,7]⟩,25⟩],[⟨⟨20,[0,8,7]⟩,25⟩],[⟨⟨20,[0,11,7]⟩,7⟩,⟨⟨20,[0,11,7]⟩,8⟩],[⟨⟨20,[0,11,7]⟩,7⟩,⟨⟨20,[0,11,7]⟩,8⟩,⟨⟨20,[0,11,7]⟩,25⟩],[⟨⟨20,[0,11,7]⟩,25⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[4]⟩,2⟩],[⟨⟨11,[8,7]⟩,0⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨11,[9,6]⟩,1⟩],[⟨⟨11,[10,5]⟩,9⟩,⟨⟨11,[10,5]⟩,10⟩],[⟨⟨11,[11,7]⟩,5⟩,⟨⟨11,[11,7]⟩,6⟩]]
def konts (i : Nat) : List Frame := if i < 27 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,21⟩,⟨⟨4,[4]⟩,2⟩,⟨⟨5,[4]⟩,22⟩,⟨⟨6,[4]⟩,7⟩,⟨⟨6,[4]⟩,8⟩,⟨⟨6,[4]⟩,24⟩,⟨⟨6,[4]⟩,25⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,22⟩,⟨⟨7,[]⟩,24⟩,⟨⟨7,[]⟩,25⟩,⟨⟨8,[5]⟩,3⟩,⟨⟨8,[5]⟩,4⟩,⟨⟨8,[6]⟩,2⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨8,[7]⟩,9⟩,⟨⟨8,[7]⟩,10⟩,⟨⟨9,[8,7]⟩,0⟩,⟨⟨9,[9,6]⟩,1⟩,⟨⟨9,[10,5]⟩,9⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[10,5]⟩,10⟩,⟨⟨9,[11,7]⟩,5⟩,⟨⟨9,[11,7]⟩,6⟩,⟨⟨10,[8,7]⟩,23⟩,⟨⟨10,[9,6]⟩,24⟩,⟨⟨10,[10,5]⟩,25⟩,⟨⟨10,[11,7]⟩,26⟩,⟨⟨11,[8,7]⟩,13⟩,⟨⟨11,[8,7]⟩,14⟩,⟨⟨11,[9,6]⟩,23⟩,⟨⟨11,[9,6]⟩,26⟩,⟨⟨11,[10,5]⟩,23⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[10,5]⟩,26⟩,⟨⟨11,[11,7]⟩,13⟩,⟨⟨11,[11,7]⟩,14⟩,⟨⟨12,[0,8,7]⟩,9⟩,⟨⟨12,[0,8,7]⟩,10⟩,⟨⟨12,[0,11,7]⟩,9⟩,⟨⟨12,[0,11,7]⟩,10⟩,⟨⟨12,[1,9,6]⟩,0⟩,⟨⟨12,[1,9,6]⟩,5⟩,⟨⟨12,[1,9,6]⟩,6⟩,⟨⟨12,[1,10,5]⟩,0⟩,⟨⟨12,[1,10,5]⟩,5⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[1,10,5]⟩,6⟩,⟨⟨13,[0,8,7]⟩,3⟩,⟨⟨13,[0,11,7]⟩,4⟩,⟨⟨13,[1,9,6]⟩,5⟩,⟨⟨13,[1,10,5]⟩,6⟩,⟨⟨14,[0,8,7]⟩,7⟩,⟨⟨14,[0,11,7]⟩,8⟩,⟨⟨14,[1,9,6]⟩,9⟩,⟨⟨14,[1,10,5]⟩,10⟩,⟨⟨15,[0,8,7]⟩,11⟩,⟨⟨15,[0,11,7]⟩,12⟩,⟨⟨15,[1,9,6]⟩,13⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨15,[1,10,5]⟩,14⟩,⟨⟨16,[1,9,6]⟩,11⟩,⟨⟨16,[1,9,6]⟩,12⟩,⟨⟨16,[1,9,6]⟩,15⟩,⟨⟨16,[1,9,6]⟩,16⟩,⟨⟨16,[1,9,6]⟩,17⟩,⟨⟨16,[1,9,6]⟩,18⟩,⟨⟨16,[1,9,6]⟩,19⟩,⟨⟨16,[1,9,6]⟩,20⟩,⟨⟨16,[1,10,5]⟩,11⟩,⟨⟨16,[1,10,5]⟩,12⟩,⟨⟨16,[1,10,5]⟩,15⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨16,[1,10,5]⟩,16⟩,⟨⟨16,[1,10,5]⟩,17⟩,⟨⟨16,[1,10,5]⟩,18⟩,⟨⟨16,[1,10,5]⟩,19⟩,⟨⟨16,[1,10,5]⟩,20⟩,⟨⟨17,[2,1,9,6]⟩,7⟩,⟨⟨17,[2,1,9,6]⟩,8⟩,⟨⟨17,[2,1,10,5]⟩,7⟩,⟨⟨17,[2,1,10,5]⟩,8⟩,⟨⟨17,[3,1,9,6]⟩,7⟩,⟨⟨17,[3,1,9,6]⟩,8⟩,⟨⟨17,[3,1,9,6]⟩,25⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨17,[3,1,10,5]⟩,7⟩,⟨⟨17,[3,1,10,5]⟩,8⟩,⟨⟨17,[3,1,10,5]⟩,25⟩,⟨⟨18,[0,8,7]⟩,7⟩,⟨⟨18,[0,8,7]⟩,8⟩,⟨⟨18,[0,8,7]⟩,25⟩,⟨⟨18,[0,11,7]⟩,7⟩,⟨⟨18,[0,11,7]⟩,8⟩,⟨⟨18,[0,11,7]⟩,25⟩,⟨⟨19,[0,8,7]⟩,15⟩,⟨⟨19,[0,8,7]⟩,16⟩,⟨⟨19,[0,8,7]⟩,17⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨19,[0,11,7]⟩,18⟩,⟨⟨19,[0,11,7]⟩,19⟩,⟨⟨19,[0,11,7]⟩,20⟩]
def getSt (i : Nat) : AState := if i < 99 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[12],[10],[11],[13],[14],[15],[16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[19,20],[23,24],[23,24],[22],[21],[25],[26],[27],[28],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[29],[30],[30],[33,35],[8],[89,92],[34,36],[39],[40],[43],[44,45],[46]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[47,48],[41],[42],[49],[49],[50],[50],[51],[51],[51],[52],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[52],[53],[54],[55],[56],[57],[58],[59],[60],[61,69],[62,70],[31,37]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[32,38],[77],[78],[81,82],[81,82,83],[83],[81,82],[81,82,83],[83],[79],[80],[84,85]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[84,85,86],[86],[84,85],[84,85,86],[86],[6],[7],[87,90],[88,91],[6],[7],[9]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[87,90],[88,91],[89,92],[93],[93],[94],[96],[96],[97],[63,71],[64,72],[65,73]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[66,74],[67,75],[68,76]]
def hints (i : Nat) : List Nat := if i < 99 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 99 getSt) i (hints i)
end Blc.Floor45.Reg9690391395546
