import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9689630087098
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 22,.app 2 21,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.lam 10,.app 11 16,.app 12 15]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 2,.var 0,.var 1,.app 17 20,.app 18 19,.var 2,.var 2,.var 0,.opaque,.lam 23,.app 24 29]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 26,.var 0,.lam 27,.lam 28,.var 1,.lam 30,.app 31 36,.app 32 33,.var 0,.lam 34,.lam 35,.var 1]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.lam 37,.app 38 43,.app 39 40,.var 0,.lam 41,.lam 42,.var 0,.lam 44,.app 45 50,.app 46 47,.var 0,.lam 48]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 51 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit46 : Term := .var 0
def lit49 : Term := .var 1
def lit19 : Term := .var 2
def lit41 : Term := .lam lit46
def lit48 : Term := .lam lit49
def lit4 : Term := .app lit46 lit46
def lit40 : Term := .lam lit41
def lit50 : Term := .var 4
def lit47 : Term := .lam lit48
def lit3 : Term := .lam lit4
def lit12 : Term := .app lit19 lit46
def lit17 : Term := .app lit19 lit19
def lit38 : Term := .app lit46 lit40
def lit45 : Term := .app lit46 lit47
def lit11 : Term := .app lit12 lit49
def lit16 : Term := .app lit17 lit46
def lit44 : Term := .app lit45 lit50
def lit43 : Term := .lam lit44
def lit10 : Term := .app lit11 lit16
def lit9 : Term := .lam lit10
def lit8 : Term := .lam lit9
def lit37 : Term := .app lit38 lit43
def lit7 : Term := .lam lit8
def lit36 : Term := .lam lit37
def lit2 : Term := .app lit3 lit7
def lit30 : Term := .app lit45 lit36
def lit1 : Term := .app lit2 lit49
def lit29 : Term := .lam lit30
def lit23 : Term := .app lit45 lit29
def lit22 : Term := .lam lit23
def lit0 : Term := .app lit1 lit22
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit46,lit46,lit7,lit8,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit19,lit46,lit49,lit16,lit17,lit19,lit19,lit46,lit49,lit22,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨14,[17,14,8]⟩],[⟨14,[17,14,9]⟩],[⟨14,[17,14,10]⟩],[⟨19,[17,14,9]⟩,⟨19,[17,14,10]⟩],[⟨19,[17,14,10]⟩],[⟨15,[17,14,9]⟩,⟨15,[17,14,10]⟩],[⟨20,[17,14,9]⟩,⟨20,[17,14,10]⟩],[⟨7,[]⟩],[⟨14,[16,13,12]⟩],[⟨14,[18,15,11]⟩],[⟨14,[19,15,11]⟩],[⟨19,[16,13,12]⟩,⟨19,[18,15,11]⟩,⟨19,[19,15,11]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨6,[7]⟩],[⟨21,[]⟩],[⟨15,[16,13,12]⟩,⟨15,[18,15,11]⟩,⟨15,[19,15,11]⟩],[⟨20,[16,13,12]⟩,⟨20,[18,15,11]⟩,⟨20,[19,15,11]⟩],[⟨22,[]⟩],[⟨16,[16,13,12]⟩,⟨16,[18,15,11]⟩,⟨16,[19,15,11]⟩],[⟨16,[17,14,9]⟩,⟨16,[17,14,10]⟩],[⟨26,[0]⟩]]
def values (i : Nat) : List AClo := if i < 20 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨22,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨16,[16,13,12]⟩,0⟩],[⟨⟨16,[17,14,8]⟩,0⟩],[⟨⟨16,[17,14,9]⟩,38⟩],[⟨⟨16,[17,14,10]⟩,38⟩],[⟨⟨16,[18,15,11]⟩,38⟩],[⟨⟨16,[19,15,11]⟩,38⟩],[⟨⟨15,[16,13,12]⟩,3⟩],[⟨⟨15,[17,14,8]⟩,4⟩],[⟨⟨15,[17,14,9]⟩,5⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨15,[17,14,10]⟩,6⟩],[⟨⟨15,[18,15,11]⟩,7⟩],[⟨⟨15,[19,15,11]⟩,8⟩],[⟨⟨14,[16,13,12]⟩,9⟩],[⟨⟨14,[17,14,8]⟩,10⟩],[⟨⟨14,[17,14,9]⟩,11⟩],[⟨⟨14,[17,14,10]⟩,12⟩],[⟨⟨14,[18,15,11]⟩,13⟩],[⟨⟨14,[19,15,11]⟩,14⟩],[⟨⟨20,[16,13,12]⟩,39⟩],[⟨⟨20,[16,13,12]⟩,5⟩,⟨⟨20,[16,13,12]⟩,6⟩],[⟨⟨20,[17,14,9]⟩,17⟩,⟨⟨20,[17,14,9]⟩,31⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨20,[17,14,10]⟩,17⟩,⟨⟨20,[17,14,10]⟩,31⟩],[⟨⟨20,[18,15,11]⟩,39⟩],[⟨⟨20,[18,15,11]⟩,5⟩,⟨⟨20,[18,15,11]⟩,6⟩],[⟨⟨20,[19,15,11]⟩,39⟩],[⟨⟨20,[19,15,11]⟩,5⟩,⟨⟨20,[19,15,11]⟩,6⟩],[⟨⟨19,[16,13,12]⟩,21⟩],[⟨⟨19,[16,13,12]⟩,22⟩],[⟨⟨19,[17,14,9]⟩,23⟩],[⟨⟨19,[17,14,10]⟩,24⟩],[⟨⟨19,[18,15,11]⟩,25⟩],[⟨⟨19,[18,15,11]⟩,26⟩],[⟨⟨19,[19,15,11]⟩,27⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨19,[19,15,11]⟩,28⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨29,[0]⟩,10⟩],[⟨⟨26,[0]⟩,38⟩],[⟨⟨6,[7]⟩,2⟩]]
def konts (i : Nat) : List Frame := if i < 41 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else kontsB36 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,37⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[7]⟩,40⟩,⟨⟨6,[7]⟩,15⟩,⟨⟨6,[7]⟩,19⟩,⟨⟨6,[7]⟩,20⟩,⟨⟨6,[7]⟩,29⟩,⟨⟨6,[7]⟩,30⟩,⟨⟨6,[7]⟩,33⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[7]⟩,34⟩,⟨⟨6,[7]⟩,35⟩,⟨⟨6,[7]⟩,36⟩,⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,19⟩,⟨⟨7,[]⟩,20⟩,⟨⟨7,[]⟩,29⟩,⟨⟨7,[]⟩,30⟩,⟨⟨7,[]⟩,33⟩,⟨⟨7,[]⟩,34⟩,⟨⟨7,[]⟩,35⟩,⟨⟨7,[]⟩,36⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨7,[]⟩,40⟩,⟨⟨8,[8]⟩,9⟩,⟨⟨8,[9]⟩,13⟩,⟨⟨8,[10]⟩,14⟩,⟨⟨8,[11]⟩,21⟩,⟨⟨8,[11]⟩,22⟩,⟨⟨8,[11]⟩,25⟩,⟨⟨8,[11]⟩,26⟩,⟨⟨8,[11]⟩,27⟩,⟨⟨8,[11]⟩,28⟩,⟨⟨8,[12]⟩,2⟩,⟨⟨9,[13,12]⟩,1⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨9,[14,8]⟩,3⟩,⟨⟨9,[14,9]⟩,7⟩,⟨⟨9,[14,10]⟩,8⟩,⟨⟨9,[15,11]⟩,5⟩,⟨⟨9,[15,11]⟩,6⟩,⟨⟨9,[15,11]⟩,39⟩,⟨⟨10,[16,13,12]⟩,0⟩,⟨⟨10,[17,14,8]⟩,0⟩,⟨⟨10,[17,14,9]⟩,38⟩,⟨⟨10,[17,14,10]⟩,38⟩,⟨⟨10,[18,15,11]⟩,38⟩,⟨⟨10,[19,15,11]⟩,38⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨11,[16,13,12]⟩,3⟩,⟨⟨11,[17,14,8]⟩,4⟩,⟨⟨11,[17,14,9]⟩,5⟩,⟨⟨11,[17,14,10]⟩,6⟩,⟨⟨11,[18,15,11]⟩,7⟩,⟨⟨11,[19,15,11]⟩,8⟩,⟨⟨12,[16,13,12]⟩,9⟩,⟨⟨12,[17,14,8]⟩,10⟩,⟨⟨12,[17,14,9]⟩,11⟩,⟨⟨12,[17,14,10]⟩,12⟩,⟨⟨12,[18,15,11]⟩,13⟩,⟨⟨12,[19,15,11]⟩,14⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨13,[16,13,12]⟩,15⟩,⟨⟨13,[17,14,8]⟩,16⟩,⟨⟨13,[17,14,9]⟩,17⟩,⟨⟨13,[17,14,10]⟩,18⟩,⟨⟨13,[18,15,11]⟩,19⟩,⟨⟨13,[19,15,11]⟩,20⟩,⟨⟨14,[16,13,12]⟩,16⟩,⟨⟨14,[17,14,8]⟩,39⟩,⟨⟨14,[17,14,9]⟩,5⟩,⟨⟨14,[17,14,10]⟩,6⟩,⟨⟨14,[18,15,11]⟩,17⟩,⟨⟨14,[18,15,11]⟩,31⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[19,15,11]⟩,17⟩,⟨⟨14,[19,15,11]⟩,18⟩,⟨⟨14,[19,15,11]⟩,31⟩,⟨⟨14,[19,15,11]⟩,32⟩,⟨⟨16,[16,13,12]⟩,5⟩,⟨⟨16,[16,13,12]⟩,6⟩,⟨⟨16,[16,13,12]⟩,39⟩,⟨⟨16,[17,14,9]⟩,17⟩,⟨⟨16,[17,14,9]⟩,31⟩,⟨⟨16,[17,14,10]⟩,17⟩,⟨⟨16,[17,14,10]⟩,31⟩,⟨⟨16,[18,15,11]⟩,5⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨16,[18,15,11]⟩,6⟩,⟨⟨16,[18,15,11]⟩,39⟩,⟨⟨16,[19,15,11]⟩,5⟩,⟨⟨16,[19,15,11]⟩,6⟩,⟨⟨16,[19,15,11]⟩,39⟩,⟨⟨17,[16,13,12]⟩,21⟩,⟨⟨17,[16,13,12]⟩,22⟩,⟨⟨17,[17,14,9]⟩,23⟩,⟨⟨17,[17,14,10]⟩,24⟩,⟨⟨17,[18,15,11]⟩,25⟩,⟨⟨17,[18,15,11]⟩,26⟩,⟨⟨17,[19,15,11]⟩,27⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[19,15,11]⟩,28⟩,⟨⟨18,[16,13,12]⟩,29⟩,⟨⟨18,[16,13,12]⟩,30⟩,⟨⟨18,[17,14,9]⟩,31⟩,⟨⟨18,[17,14,10]⟩,32⟩,⟨⟨18,[18,15,11]⟩,33⟩,⟨⟨18,[18,15,11]⟩,34⟩,⟨⟨18,[19,15,11]⟩,35⟩,⟨⟨18,[19,15,11]⟩,36⟩,⟨⟨19,[16,13,12]⟩,19⟩,⟨⟨19,[16,13,12]⟩,20⟩,⟨⟨19,[16,13,12]⟩,33⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨19,[16,13,12]⟩,34⟩,⟨⟨19,[16,13,12]⟩,35⟩,⟨⟨19,[16,13,12]⟩,36⟩,⟨⟨19,[17,14,9]⟩,17⟩,⟨⟨19,[17,14,9]⟩,31⟩,⟨⟨19,[17,14,10]⟩,17⟩,⟨⟨19,[17,14,10]⟩,31⟩,⟨⟨19,[18,15,11]⟩,19⟩,⟨⟨19,[18,15,11]⟩,20⟩,⟨⟨19,[18,15,11]⟩,33⟩,⟨⟨19,[18,15,11]⟩,34⟩,⟨⟨19,[18,15,11]⟩,35⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨19,[18,15,11]⟩,36⟩,⟨⟨19,[19,15,11]⟩,19⟩,⟨⟨19,[19,15,11]⟩,20⟩,⟨⟨19,[19,15,11]⟩,33⟩,⟨⟨19,[19,15,11]⟩,34⟩,⟨⟨19,[19,15,11]⟩,35⟩,⟨⟨19,[19,15,11]⟩,36⟩,⟨⟨22,[]⟩,16⟩,⟨⟨23,[0]⟩,10⟩,⟨⟨24,[0]⟩,38⟩,⟨⟨25,[0]⟩,39⟩,⟨⟨26,[0]⟩,17⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨26,[0]⟩,18⟩,⟨⟨26,[0]⟩,31⟩,⟨⟨26,[0]⟩,32⟩,⟨⟨27,[1,0]⟩,11⟩,⟨⟨27,[2,0]⟩,12⟩,⟨⟨27,[3,0]⟩,23⟩,⟨⟨27,[3,0]⟩,24⟩,⟨⟨27,[4,0]⟩,24⟩,⟨⟨28,[5,1,0]⟩,5⟩,⟨⟨28,[5,2,0]⟩,6⟩,⟨⟨28,[6,3,0]⟩,17⟩,⟨⟨28,[6,3,0]⟩,31⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨28,[6,4,0]⟩,17⟩,⟨⟨28,[6,4,0]⟩,31⟩]
def getSt (i : Nat) : AState := if i < 146 then (if i < 72 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else (if i < 108 then (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)) else (if i < 132 then (if i < 120 then getStB108 i else getStB120 i) else (if i < 144 then getStB132 i else getStB144 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[24],[15],[16],[17],[18],[19],[20]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[21],[22],[23],[25],[26],[27],[28],[29],[30],[31],[32],[33]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[34],[36],[37],[38],[41],[39,40],[41],[39,40],[41],[39,40],[35],[42]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[43],[44],[45],[46],[46],[47],[48],[49],[50],[51],[52],[53]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[55],[56],[57],[58],[59],[60],[61],[62],[63],[64],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[6],[66],[70],[73],[105,115,121],[106,116,122],[127],[78,85,88],[76,83,86],[77,84,87],[79,81],[80,82]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[131],[132],[133],[134],[90],[90],[89],[91],[91],[92],[92],[94]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[94],[93],[96],[96],[95],[97],[98],[99],[100],[101],[102],[103]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[104],[9],[10],[71],[75],[107,117,123],[108,118,124],[109,119,125],[110,120,126],[7],[8],[11]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[12],[13],[14],[70],[71],[72],[74],[105,115,121],[106,116,122],[107,117,123],[108,118,124],[109,119,125]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[110,120,126],[105,115,121],[106,116,122],[107,117,123],[108,118,124],[109,119,125],[110,120,126],[128],[129],[130],[67],[135]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[136],[137],[138],[140],[141],[142,143],[142,143],[144,145],[68],[69],[111,113],[112,114]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[113],[114]]
def hints (i : Nat) : List Nat := if i < 146 then (if i < 72 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else (if i < 108 then (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)) else (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else hintsB144 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 146 getSt) i (hints i)
end Blc.Floor45.Reg9689630087098
