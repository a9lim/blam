import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402026986
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 20,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 17]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.lam 15,.lam 16,.var 0,.app 18 19,.var 2,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit13 : Term := .var 1
def lit15 : Term := .lam lit20
def lit18 : Term := .var 2
def lit2 : Term := .app lit20 lit20
def lit14 : Term := .lam lit15
def lit1 : Term := .lam lit2
def lit17 : Term := .app lit18 lit20
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .app lit12 lit17
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit20 lit9
def lit6 : Term := .app lit7 lit20
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit20,lit20,lit5,lit6,lit7,lit20,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit20,lit17,lit18,lit20,lit20]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨17,[4,14,10]⟩,⟨17,[6,15,10]⟩],[⟨14,[2,13,10]⟩,⟨14,[3,13,10]⟩],[⟨14,[5,13,10]⟩],[⟨20,[9]⟩],[⟨20,[10]⟩],[⟨20,[11]⟩],[⟨14,[1,12,9]⟩,⟨14,[1,12,11]⟩],[⟨17,[1,12,9]⟩,⟨17,[1,12,11]⟩],[⟨19,[4,14,10]⟩,⟨19,[6,15,10]⟩],[⟨4,[0]⟩],[⟨9,[10]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨14,[4,14,10]⟩,⟨14,[6,15,10]⟩],[⟨19,[1,12,9]⟩,⟨19,[1,12,11]⟩],[⟨9,[9]⟩],[⟨9,[11]⟩]]
def values (i : Nat) : List AClo := if i < 16 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨17,[1,12,9]⟩,11⟩,⟨⟨17,[1,12,9]⟩,12⟩,⟨⟨17,[1,12,9]⟩,14⟩],[⟨⟨17,[1,12,11]⟩,26⟩],[⟨⟨17,[2,13,10]⟩,4⟩,⟨⟨17,[2,13,10]⟩,5⟩],[⟨⟨17,[3,13,10]⟩,7⟩],[⟨⟨17,[4,14,10]⟩,11⟩,⟨⟨17,[4,14,10]⟩,12⟩,⟨⟨17,[4,14,10]⟩,14⟩],[⟨⟨17,[5,13,10]⟩,0⟩],[⟨⟨17,[6,15,10]⟩,26⟩],[⟨⟨14,[1,12,9]⟩,2⟩],[⟨⟨14,[1,12,11]⟩,3⟩],[⟨⟨14,[2,13,10]⟩,4⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨14,[3,13,10]⟩,5⟩],[⟨⟨14,[4,14,10]⟩,6⟩],[⟨⟨14,[5,13,10]⟩,7⟩],[⟨⟨14,[6,15,10]⟩,8⟩],[⟨⟨19,[1,12,9]⟩,11⟩,⟨⟨19,[1,12,9]⟩,12⟩,⟨⟨19,[1,12,9]⟩,14⟩,⟨⟨19,[1,12,9]⟩,26⟩],[⟨⟨19,[1,12,11]⟩,11⟩,⟨⟨19,[1,12,11]⟩,12⟩,⟨⟨19,[1,12,11]⟩,14⟩,⟨⟨19,[1,12,11]⟩,26⟩],[⟨⟨19,[4,14,10]⟩,11⟩],[⟨⟨19,[4,14,10]⟩,12⟩],[⟨⟨19,[4,14,10]⟩,14⟩],[⟨⟨19,[6,15,10]⟩,11⟩],[⟨⟨19,[6,15,10]⟩,12⟩],[⟨⟨19,[6,15,10]⟩,14⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨4,[0]⟩,0⟩],[⟨⟨20,[9]⟩,11⟩,⟨⟨20,[9]⟩,12⟩,⟨⟨20,[9]⟩,14⟩],[⟨⟨20,[10]⟩,0⟩],[⟨⟨20,[11]⟩,26⟩],[⟨⟨9,[9]⟩,25⟩],[⟨⟨9,[10]⟩,26⟩],[⟨⟨9,[11]⟩,27⟩]]
def konts (i : Nat) : List Frame := if i < 31 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,24⟩,⟨⟨4,[0]⟩,18⟩,⟨⟨4,[0]⟩,19⟩,⟨⟨4,[0]⟩,20⟩,⟨⟨4,[0]⟩,21⟩,⟨⟨4,[0]⟩,22⟩,⟨⟨4,[0]⟩,23⟩,⟨⟨4,[0]⟩,29⟩,⟨⟨5,[]⟩,18⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,19⟩,⟨⟨5,[]⟩,20⟩,⟨⟨5,[]⟩,21⟩,⟨⟨5,[]⟩,22⟩,⟨⟨5,[]⟩,23⟩,⟨⟨5,[]⟩,24⟩,⟨⟨5,[]⟩,29⟩,⟨⟨6,[9]⟩,11⟩,⟨⟨6,[9]⟩,12⟩,⟨⟨6,[9]⟩,14⟩,⟨⟨6,[10]⟩,0⟩,⟨⟨6,[11]⟩,26⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨7,[9]⟩,25⟩,⟨⟨7,[10]⟩,26⟩,⟨⟨7,[11]⟩,27⟩,⟨⟨8,[9]⟩,28⟩,⟨⟨8,[10]⟩,29⟩,⟨⟨8,[11]⟩,30⟩,⟨⟨9,[9]⟩,13⟩,⟨⟨9,[10]⟩,16⟩,⟨⟨9,[10]⟩,17⟩,⟨⟨9,[10]⟩,28⟩,⟨⟨9,[10]⟩,30⟩,⟨⟨9,[11]⟩,15⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[12,9]⟩,6⟩,⟨⟨10,[12,11]⟩,8⟩,⟨⟨10,[13,10]⟩,11⟩,⟨⟨10,[13,10]⟩,12⟩,⟨⟨10,[13,10]⟩,14⟩,⟨⟨10,[13,10]⟩,26⟩,⟨⟨10,[14,10]⟩,25⟩,⟨⟨10,[15,10]⟩,27⟩,⟨⟨11,[1,12,9]⟩,11⟩,⟨⟨11,[1,12,9]⟩,12⟩,⟨⟨11,[1,12,9]⟩,14⟩,⟨⟨11,[1,12,11]⟩,26⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨11,[2,13,10]⟩,4⟩,⟨⟨11,[2,13,10]⟩,5⟩,⟨⟨11,[3,13,10]⟩,7⟩,⟨⟨11,[4,14,10]⟩,11⟩,⟨⟨11,[4,14,10]⟩,12⟩,⟨⟨11,[4,14,10]⟩,14⟩,⟨⟨11,[5,13,10]⟩,0⟩,⟨⟨11,[6,15,10]⟩,26⟩,⟨⟨12,[1,12,9]⟩,2⟩,⟨⟨12,[1,12,11]⟩,3⟩,⟨⟨12,[2,13,10]⟩,4⟩,⟨⟨12,[3,13,10]⟩,5⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨12,[4,14,10]⟩,6⟩,⟨⟨12,[5,13,10]⟩,7⟩,⟨⟨12,[6,15,10]⟩,8⟩,⟨⟨13,[1,12,9]⟩,9⟩,⟨⟨13,[1,12,11]⟩,10⟩,⟨⟨13,[2,13,10]⟩,11⟩,⟨⟨13,[3,13,10]⟩,12⟩,⟨⟨13,[4,14,10]⟩,13⟩,⟨⟨13,[5,13,10]⟩,14⟩,⟨⟨13,[6,15,10]⟩,15⟩,⟨⟨14,[4,14,10]⟩,9⟩,⟨⟨14,[4,14,10]⟩,10⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[6,15,10]⟩,9⟩,⟨⟨14,[6,15,10]⟩,10⟩,⟨⟨15,[7,4,14,10]⟩,2⟩,⟨⟨15,[7,4,14,10]⟩,3⟩,⟨⟨15,[7,6,15,10]⟩,2⟩,⟨⟨15,[7,6,15,10]⟩,3⟩,⟨⟨16,[8,7,4,14,10]⟩,11⟩,⟨⟨16,[8,7,4,14,10]⟩,12⟩,⟨⟨16,[8,7,4,14,10]⟩,14⟩,⟨⟨16,[8,7,4,14,10]⟩,26⟩,⟨⟨16,[8,7,6,15,10]⟩,11⟩,⟨⟨16,[8,7,6,15,10]⟩,12⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨16,[8,7,6,15,10]⟩,14⟩,⟨⟨16,[8,7,6,15,10]⟩,26⟩,⟨⟨17,[1,12,9]⟩,11⟩,⟨⟨17,[1,12,9]⟩,12⟩,⟨⟨17,[1,12,9]⟩,14⟩,⟨⟨17,[1,12,9]⟩,26⟩,⟨⟨17,[1,12,11]⟩,11⟩,⟨⟨17,[1,12,11]⟩,12⟩,⟨⟨17,[1,12,11]⟩,14⟩,⟨⟨17,[1,12,11]⟩,26⟩,⟨⟨17,[4,14,10]⟩,11⟩,⟨⟨17,[4,14,10]⟩,12⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[4,14,10]⟩,14⟩,⟨⟨17,[6,15,10]⟩,11⟩,⟨⟨17,[6,15,10]⟩,12⟩,⟨⟨17,[6,15,10]⟩,14⟩,⟨⟨18,[1,12,9]⟩,16⟩,⟨⟨18,[1,12,11]⟩,17⟩,⟨⟨18,[4,14,10]⟩,18⟩,⟨⟨18,[4,14,10]⟩,19⟩,⟨⟨18,[4,14,10]⟩,20⟩,⟨⟨18,[6,15,10]⟩,21⟩,⟨⟨18,[6,15,10]⟩,22⟩,⟨⟨18,[6,15,10]⟩,23⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨19,[1,12,9]⟩,11⟩,⟨⟨19,[1,12,9]⟩,12⟩,⟨⟨19,[1,12,9]⟩,14⟩,⟨⟨19,[1,12,11]⟩,11⟩,⟨⟨19,[1,12,11]⟩,12⟩,⟨⟨19,[1,12,11]⟩,14⟩,⟨⟨19,[4,14,10]⟩,16⟩,⟨⟨19,[4,14,10]⟩,28⟩,⟨⟨19,[6,15,10]⟩,16⟩,⟨⟨19,[6,15,10]⟩,28⟩,⟨⟨20,[9]⟩,16⟩,⟨⟨20,[9]⟩,28⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨20,[11]⟩,16⟩,⟨⟨20,[11]⟩,28⟩]
def getSt (i : Nat) : AState := if i < 122 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 96 then (if i < 72 then getStB60 i else (if i < 84 then getStB72 i else getStB84 i)) else (if i < 108 then getStB96 i else (if i < 120 then getStB108 i else getStB120 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[17],[11],[12],[13],[14],[15],[16],[18],[19]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[20],[21],[19],[20],[21],[22],[23],[24],[24],[24],[25],[26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[28],[29],[115,117],[10],[34],[36],[38,39,40,41],[38,39,40,41],[42],[43],[37]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[44,45,46],[47],[48],[49],[50],[54],[51,52,53],[55],[56],[56],[56],[57]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[58],[58],[59],[60],[60],[60],[61],[62],[63],[64],[65],[66]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[67],[68],[69],[70,72],[71,73],[108,111],[109,112],[30],[110,113],[35],[74],[75]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[76],[77],[78,79,80],[81],[82,83,84],[85],[86,90],[87,91],[88,92],[89,93],[86,90],[87,91]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[88,92],[89,93],[100],[100],[100],[100],[101],[101],[101],[101],[102],[103]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[104],[105],[106],[107],[114,116],[32],[4],[5],[6],[7],[8],[9]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[94,97],[95,98],[96,99],[94,97],[95,98],[96,99],[118],[119],[120],[121],[114,116],[115,117]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[31],[33]]
def hints (i : Nat) : List Nat := if i < 122 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 96 then (if i < 72 then hintsB60 i else (if i < 84 then hintsB72 i else hintsB84 i)) else (if i < 108 then hintsB96 i else (if i < 120 then hintsB108 i else hintsB120 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 122 getSt) i (hints i)
end Blc.Floor45.Reg9692402026986
