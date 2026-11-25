import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692718718474
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 8,.var 0,.lam 9,.app 10 11,.var 0,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.app 15 20,.app 16 17,.var 2,.lam 18,.lam 19,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit13 : Term := .var 1
def lit16 : Term := .var 2
def lit18 : Term := .lam lit20
def lit2 : Term := .app lit20 lit20
def lit17 : Term := .lam lit18
def lit1 : Term := .lam lit2
def lit15 : Term := .app lit16 lit17
def lit14 : Term := .app lit15 lit20
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .lam lit12
def lit9 : Term := .app lit20 lit11
def lit8 : Term := .lam lit9
def lit6 : Term := .app lit20 lit8
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit20,lit20,lit5,lit6,lit20,lit8,lit9,lit20,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit17,lit18,lit20,lit20]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨14,[1,9,8]⟩,⟨14,[1,12,8]⟩,⟨14,[2,9,8]⟩,⟨14,[2,12,8]⟩],[⟨11,[9,8]⟩,⟨11,[12,8]⟩],[⟨8,[6]⟩],[⟨11,[10,7]⟩],[⟨20,[1,9,8]⟩,⟨20,[1,11,7]⟩,⟨20,[1,12,8]⟩,⟨20,[2,9,8]⟩,⟨20,[2,11,7]⟩,⟨20,[2,12,8]⟩],[⟨17,[1,11,7]⟩,⟨17,[2,11,7]⟩],[⟨4,[0]⟩],[⟨8,[7]⟩],[⟨14,[1,11,7]⟩,⟨14,[2,11,7]⟩],[⟨17,[1,9,8]⟩,⟨17,[1,12,8]⟩,⟨17,[2,9,8]⟩,⟨17,[2,12,8]⟩],[⟨8,[8]⟩]]
def valuesB12 (i : Nat) : List AClo := [⟨11,[11,7]⟩]
def values (i : Nat) : List AClo := if i < 13 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨14,[1,9,8]⟩,0⟩],[⟨⟨14,[1,11,7]⟩,0⟩],[⟨⟨14,[1,12,8]⟩,0⟩],[⟨⟨14,[2,9,8]⟩,0⟩],[⟨⟨14,[2,11,7]⟩,0⟩],[⟨⟨14,[2,12,8]⟩,0⟩],[⟨⟨20,[1,9,8]⟩,2⟩,⟨⟨20,[1,9,8]⟩,5⟩,⟨⟨20,[1,9,8]⟩,32⟩],[⟨⟨20,[1,11,7]⟩,2⟩],[⟨⟨20,[1,11,7]⟩,5⟩],[⟨⟨20,[1,11,7]⟩,32⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨20,[1,12,8]⟩,2⟩,⟨⟨20,[1,12,8]⟩,5⟩,⟨⟨20,[1,12,8]⟩,32⟩],[⟨⟨20,[2,9,8]⟩,2⟩,⟨⟨20,[2,9,8]⟩,5⟩,⟨⟨20,[2,9,8]⟩,32⟩],[⟨⟨20,[2,11,7]⟩,2⟩],[⟨⟨20,[2,11,7]⟩,5⟩],[⟨⟨20,[2,11,7]⟩,32⟩],[⟨⟨20,[2,12,8]⟩,2⟩,⟨⟨20,[2,12,8]⟩,5⟩,⟨⟨20,[2,12,8]⟩,32⟩],[⟨⟨17,[1,9,8]⟩,8⟩],[⟨⟨17,[1,11,7]⟩,9⟩],[⟨⟨17,[1,11,7]⟩,10⟩],[⟨⟨17,[1,11,7]⟩,11⟩],[⟨⟨17,[1,12,8]⟩,12⟩],[⟨⟨17,[2,9,8]⟩,13⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨17,[2,11,7]⟩,14⟩],[⟨⟨17,[2,11,7]⟩,15⟩],[⟨⟨17,[2,11,7]⟩,16⟩],[⟨⟨17,[2,12,8]⟩,17⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨8,[6]⟩,9⟩,⟨⟨8,[6]⟩,10⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[6]⟩,14⟩,⟨⟨8,[6]⟩,15⟩,⟨⟨8,[6]⟩,16⟩],[⟨⟨8,[7]⟩,0⟩],[⟨⟨8,[8]⟩,0⟩],[⟨⟨11,[9,8]⟩,0⟩],[⟨⟨11,[10,7]⟩,8⟩,⟨⟨11,[10,7]⟩,12⟩,⟨⟨11,[10,7]⟩,13⟩,⟨⟨11,[10,7]⟩,17⟩],[⟨⟨11,[11,7]⟩,0⟩],[⟨⟨11,[12,8]⟩,0⟩]]
def konts (i : Nat) : List Frame := if i < 36 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,28⟩,⟨⟨4,[0]⟩,19⟩,⟨⟨4,[0]⟩,20⟩,⟨⟨4,[0]⟩,21⟩,⟨⟨4,[0]⟩,24⟩,⟨⟨4,[0]⟩,25⟩,⟨⟨4,[0]⟩,26⟩,⟨⟨4,[0]⟩,30⟩,⟨⟨5,[]⟩,19⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,20⟩,⟨⟨5,[]⟩,21⟩,⟨⟨5,[]⟩,24⟩,⟨⟨5,[]⟩,25⟩,⟨⟨5,[]⟩,26⟩,⟨⟨5,[]⟩,28⟩,⟨⟨5,[]⟩,30⟩,⟨⟨6,[6]⟩,9⟩,⟨⟨6,[6]⟩,10⟩,⟨⟨6,[6]⟩,11⟩,⟨⟨6,[6]⟩,14⟩,⟨⟨6,[6]⟩,15⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨6,[6]⟩,16⟩,⟨⟨6,[7]⟩,0⟩,⟨⟨6,[8]⟩,0⟩,⟨⟨7,[6]⟩,29⟩,⟨⟨7,[7]⟩,30⟩,⟨⟨7,[8]⟩,31⟩,⟨⟨8,[7]⟩,18⟩,⟨⟨8,[7]⟩,22⟩,⟨⟨8,[7]⟩,23⟩,⟨⟨8,[7]⟩,27⟩,⟨⟨8,[7]⟩,31⟩,⟨⟨8,[8]⟩,3⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨8,[8]⟩,6⟩,⟨⟨8,[8]⟩,34⟩,⟨⟨9,[9,8]⟩,0⟩,⟨⟨9,[10,7]⟩,8⟩,⟨⟨9,[10,7]⟩,12⟩,⟨⟨9,[10,7]⟩,13⟩,⟨⟨9,[10,7]⟩,17⟩,⟨⟨9,[11,7]⟩,0⟩,⟨⟨9,[12,8]⟩,0⟩,⟨⟨10,[9,8]⟩,32⟩,⟨⟨10,[10,7]⟩,33⟩,⟨⟨10,[11,7]⟩,34⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨10,[12,8]⟩,35⟩,⟨⟨11,[9,8]⟩,2⟩,⟨⟨11,[9,8]⟩,5⟩,⟨⟨11,[9,8]⟩,32⟩,⟨⟨11,[11,7]⟩,4⟩,⟨⟨11,[11,7]⟩,7⟩,⟨⟨11,[11,7]⟩,35⟩,⟨⟨11,[12,8]⟩,2⟩,⟨⟨11,[12,8]⟩,5⟩,⟨⟨11,[12,8]⟩,32⟩,⟨⟨12,[1,9,8]⟩,0⟩,⟨⟨12,[1,11,7]⟩,0⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨12,[1,12,8]⟩,0⟩,⟨⟨12,[2,9,8]⟩,0⟩,⟨⟨12,[2,11,7]⟩,0⟩,⟨⟨12,[2,12,8]⟩,0⟩,⟨⟨13,[1,9,8]⟩,2⟩,⟨⟨13,[1,11,7]⟩,3⟩,⟨⟨13,[1,12,8]⟩,4⟩,⟨⟨13,[2,9,8]⟩,5⟩,⟨⟨13,[2,11,7]⟩,6⟩,⟨⟨13,[2,12,8]⟩,7⟩,⟨⟨14,[1,9,8]⟩,2⟩,⟨⟨14,[1,9,8]⟩,5⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[1,9,8]⟩,32⟩,⟨⟨14,[1,11,7]⟩,2⟩,⟨⟨14,[1,11,7]⟩,5⟩,⟨⟨14,[1,11,7]⟩,32⟩,⟨⟨14,[1,12,8]⟩,2⟩,⟨⟨14,[1,12,8]⟩,5⟩,⟨⟨14,[1,12,8]⟩,32⟩,⟨⟨14,[2,9,8]⟩,2⟩,⟨⟨14,[2,9,8]⟩,5⟩,⟨⟨14,[2,9,8]⟩,32⟩,⟨⟨14,[2,11,7]⟩,2⟩,⟨⟨14,[2,11,7]⟩,5⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨14,[2,11,7]⟩,32⟩,⟨⟨14,[2,12,8]⟩,2⟩,⟨⟨14,[2,12,8]⟩,5⟩,⟨⟨14,[2,12,8]⟩,32⟩,⟨⟨15,[1,9,8]⟩,8⟩,⟨⟨15,[1,11,7]⟩,9⟩,⟨⟨15,[1,11,7]⟩,10⟩,⟨⟨15,[1,11,7]⟩,11⟩,⟨⟨15,[1,12,8]⟩,12⟩,⟨⟨15,[2,9,8]⟩,13⟩,⟨⟨15,[2,11,7]⟩,14⟩,⟨⟨15,[2,11,7]⟩,15⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨15,[2,11,7]⟩,16⟩,⟨⟨15,[2,12,8]⟩,17⟩,⟨⟨16,[1,9,8]⟩,18⟩,⟨⟨16,[1,11,7]⟩,19⟩,⟨⟨16,[1,11,7]⟩,20⟩,⟨⟨16,[1,11,7]⟩,21⟩,⟨⟨16,[1,12,8]⟩,22⟩,⟨⟨16,[2,9,8]⟩,23⟩,⟨⟨16,[2,11,7]⟩,24⟩,⟨⟨16,[2,11,7]⟩,25⟩,⟨⟨16,[2,11,7]⟩,26⟩,⟨⟨16,[2,12,8]⟩,27⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨17,[1,9,8]⟩,33⟩,⟨⟨17,[1,11,7]⟩,29⟩,⟨⟨17,[1,12,8]⟩,33⟩,⟨⟨17,[2,9,8]⟩,33⟩,⟨⟨17,[2,11,7]⟩,29⟩,⟨⟨17,[2,12,8]⟩,33⟩,⟨⟨18,[3,1,11,7]⟩,9⟩,⟨⟨18,[3,1,11,7]⟩,10⟩,⟨⟨18,[3,1,11,7]⟩,11⟩,⟨⟨18,[3,1,11,7]⟩,14⟩,⟨⟨18,[3,1,11,7]⟩,15⟩,⟨⟨18,[3,1,11,7]⟩,16⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨18,[3,2,11,7]⟩,9⟩,⟨⟨18,[3,2,11,7]⟩,10⟩,⟨⟨18,[3,2,11,7]⟩,11⟩,⟨⟨18,[3,2,11,7]⟩,14⟩,⟨⟨18,[3,2,11,7]⟩,15⟩,⟨⟨18,[3,2,11,7]⟩,16⟩,⟨⟨18,[4,1,9,8]⟩,8⟩,⟨⟨18,[4,1,9,8]⟩,12⟩,⟨⟨18,[4,1,9,8]⟩,13⟩,⟨⟨18,[4,1,9,8]⟩,17⟩,⟨⟨18,[4,1,12,8]⟩,8⟩,⟨⟨18,[4,1,12,8]⟩,12⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨18,[4,1,12,8]⟩,13⟩,⟨⟨18,[4,1,12,8]⟩,17⟩,⟨⟨18,[4,2,9,8]⟩,8⟩,⟨⟨18,[4,2,9,8]⟩,12⟩,⟨⟨18,[4,2,9,8]⟩,13⟩,⟨⟨18,[4,2,9,8]⟩,17⟩,⟨⟨18,[4,2,12,8]⟩,8⟩,⟨⟨18,[4,2,12,8]⟩,12⟩,⟨⟨18,[4,2,12,8]⟩,13⟩,⟨⟨18,[4,2,12,8]⟩,17⟩,⟨⟨19,[5,3,1,11,7]⟩,2⟩,⟨⟨19,[5,3,1,11,7]⟩,5⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨19,[5,3,1,11,7]⟩,32⟩,⟨⟨19,[5,3,2,11,7]⟩,2⟩,⟨⟨19,[5,3,2,11,7]⟩,5⟩,⟨⟨19,[5,3,2,11,7]⟩,32⟩,⟨⟨19,[5,4,1,9,8]⟩,2⟩,⟨⟨19,[5,4,1,9,8]⟩,5⟩,⟨⟨19,[5,4,1,9,8]⟩,32⟩,⟨⟨19,[5,4,1,12,8]⟩,2⟩,⟨⟨19,[5,4,1,12,8]⟩,5⟩,⟨⟨19,[5,4,1,12,8]⟩,32⟩,⟨⟨19,[5,4,2,9,8]⟩,2⟩,⟨⟨19,[5,4,2,9,8]⟩,5⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨19,[5,4,2,9,8]⟩,32⟩,⟨⟨19,[5,4,2,12,8]⟩,2⟩,⟨⟨19,[5,4,2,12,8]⟩,5⟩,⟨⟨19,[5,4,2,12,8]⟩,32⟩,⟨⟨20,[1,9,8]⟩,2⟩,⟨⟨20,[1,9,8]⟩,5⟩,⟨⟨20,[1,9,8]⟩,32⟩,⟨⟨20,[1,11,7]⟩,2⟩,⟨⟨20,[1,11,7]⟩,5⟩,⟨⟨20,[1,11,7]⟩,32⟩,⟨⟨20,[1,12,8]⟩,2⟩,⟨⟨20,[1,12,8]⟩,5⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨20,[1,12,8]⟩,32⟩,⟨⟨20,[2,9,8]⟩,2⟩,⟨⟨20,[2,9,8]⟩,5⟩,⟨⟨20,[2,9,8]⟩,32⟩,⟨⟨20,[2,11,7]⟩,2⟩,⟨⟨20,[2,11,7]⟩,5⟩,⟨⟨20,[2,11,7]⟩,32⟩,⟨⟨20,[2,12,8]⟩,2⟩,⟨⟨20,[2,12,8]⟩,5⟩,⟨⟨20,[2,12,8]⟩,32⟩]
def getSt (i : Nat) : AState := if i < 178 then (if i < 84 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 60 then (if i < 48 then getStB36 i else getStB48 i) else (if i < 72 then getStB60 i else getStB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then getStB84 i else getStB96 i) else (if i < 120 then getStB108 i else getStB120 i)) else (if i < 156 then (if i < 144 then getStB132 i else getStB144 i) else (if i < 168 then getStB156 i else getStB168 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[17],[11],[12],[13],[14],[15],[16],[18],[19]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[20],[21],[22],[23],[24],[25],[26],[27],[27],[27],[27],[27]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[28],[29],[109,112],[10],[34],[39],[40],[41],[42],[43],[38]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[38],[44],[45],[46],[46],[46],[46],[47],[48],[75,84],[108,110,111,113],[37]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[58],[58],[61],[59],[59],[62],[60],[60],[63],[64],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[66],[67],[68],[69],[73,82],[35],[52],[74,83],[36],[53],[88],[88]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[88],[89],[90],[91],[92],[92],[92],[93],[93],[93],[94],[95]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[96],[97],[97],[97],[98],[99],[100],[101],[102],[103],[104],[105]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[106],[107],[30],[4],[5],[6],[31],[32],[7],[8],[9],[33]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[126,127,128,129],[114,115,116,117,118,119],[130,131,132,133],[134,135,136,137],[120,121,122,123,124,125],[138,139,140,141],[142],[143],[144],[142],[143],[144]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[145],[146],[147],[145],[146],[147],[148,149,150],[148,149,150],[148,149,150],[148,149,150],[151,152,153],[151,152,153]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[151,152,153],[151,152,153],[154,155,156],[154,155,156],[154,155,156],[154,155,156],[157,158,159],[157,158,159],[157,158,159],[157,158,159],[160,163,166,169,172,175],[161,164,167,170,173,176]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[162,165,168,171,174,177],[160,163,166,169,172,175],[161,164,167,170,173,176],[162,165,168,171,174,177],[160,163,166,169,172,175],[161,164,167,170,173,176],[162,165,168,171,174,177],[160,163,166,169,172,175],[161,164,167,170,173,176],[162,165,168,171,174,177],[160,163,166,169,172,175],[161,164,167,170,173,176]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[162,165,168,171,174,177],[160,163,166,169,172,175],[161,164,167,170,173,176],[162,165,168,171,174,177],[70,76,79,85],[71,77,80,86],[72,78,81,87],[70,76,79,85],[71,77,80,86],[72,78,81,87],[70,76,79,85],[71,77,80,86]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[72,78,81,87],[49,55],[50,56],[51,57],[49,55],[50,56],[51,57],[49,55],[50,56],[51,57]]
def hints (i : Nat) : List Nat := if i < 178 then (if i < 84 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 60 then (if i < 48 then hintsB36 i else hintsB48 i) else (if i < 72 then hintsB60 i else hintsB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then hintsB84 i else hintsB96 i) else (if i < 120 then hintsB108 i else hintsB120 i)) else (if i < 156 then (if i < 144 then hintsB132 i else hintsB144 i) else (if i < 168 then hintsB156 i else hintsB168 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 178 getSt) i (hints i)
end Blc.Floor45.Reg9692718718474
